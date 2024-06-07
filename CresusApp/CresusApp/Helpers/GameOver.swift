//
//  GameOver.swift
//  CresusApp
//
//  Created by Phillip on 04.06.2024.
//

import SwiftUI

struct GameOver: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 5, opaque: true)
            
//            Body
            ZStack {
                ZStack {
                    Image("RockBackgroundAlt")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 214)
                    
                    VStack(alignment: .leading, spacing: -2) {
                        HStack {
                            Image("CoinSprite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                            
                            Text(" = 120")
                                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                                .font(.custom("Modak", size: 28))
                                .shadow(color: .black, radius: 1)
                                .textCase(.uppercase)
                        }
                        
                        HStack {
                            Image("DiamondSprite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                            
                            Text(" = 0")
                                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                                .font(.custom("Modak", size: 28))
                                .shadow(color: .black, radius: 1)
                                .textCase(.uppercase)
                        }
                    }
                    .offset(y: 35)
                }
                .shadow(radius: 3, x: 5, y: 3)
                .offset(y: 40)
                
                ZStack {
                    Image("HScroll")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                    
                    Text("Game Over")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 32))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                }
                .shadow(radius: 3, x: 5, y: 3)
                .offset(y: -40)
            }
        }
    }
}

#Preview {
    GameOver()
}
