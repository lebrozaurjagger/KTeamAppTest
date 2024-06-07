//
//  Sprites.swift
//  CresusApp
//
//  Created by Phillip on 06.06.2024.
//

import SwiftUI

struct CircleModel: Identifiable {
    var id = UUID()
    var position: CGPoint
    var color: Color
}

struct Sprites: View {
    @State var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            SpriteView(spriteName: "CoinSprite", appearanceTimer: Timer.publish(every: 2.3, on: .main, in: .common).autoconnect())
            
            SpriteView(spriteName: "BombSprite", appearanceTimer: Timer.publish(every: 8.5, on: .main, in: .common).autoconnect())
            
            SpriteView(spriteName: "DiamondSprite", appearanceTimer: Timer.publish(every: 60.3, on: .main, in: .common).autoconnect())
            
            SpriteView(spriteName: "HeartSprite", appearanceTimer: Timer.publish(every: 35.7, on: .main, in: .common).autoconnect())
            
            VStack {
                Spacer()
                
                VStack {
                    Image("")
                        .resizable()
                        .frame(width: 50, height: 1)
                        .offset(y: 10)
                    
                    Image("Vase1")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                }
                .offset(x: 0 + offset)
                
                HStack {
                    Button(action: {
                        withAnimation {
                            if offset != -120 {
                                offset -= 20
                            }
                        }
                    }, label: {
                        ZStack {
                            ZStack {
                                Image("RoundButtonBackground")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 95)
                                
                                Image("LeftArrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                    .padding(.trailing)
                            }
                        }
                    })
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            if offset != 120 {
                                offset += 20
                            }
                        }
                    }, label: {
                        ZStack {
                            Image("RoundButtonBackground")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 95)
                            
                            Image("RightArrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    Sprites()
}

struct SpriteView: View {
    @State var spriteName: String
    @State var appearanceTimer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    let movementTimer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    @State private var circlePosition: CGPoint = CGPoint(x: 0, y: 0)
    
    @State private var circles: [CircleModel] = []
    
    var body: some View {
        ZStack {
            ForEach(circles) { circle in
                Image(spriteName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .position(circle.position)
            }
        }
        .onReceive(appearanceTimer) { _ in
            let newCircle = CircleModel(position: CGPoint(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: 0), color: Color.red)
            circles.append(newCircle)
        }
        .onReceive(movementTimer) { _ in
            for index in circles.indices {
                circles[index].position.y += 1 // Adjust the speed of the movement here
            }
            
            circles = circles.filter { $0.position.y < UIScreen.main.bounds.height }
        }
    }
}
