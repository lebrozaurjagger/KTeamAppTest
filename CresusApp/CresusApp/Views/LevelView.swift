//
//  LevelView.swift
//  CresusApp
//
//  Created by Phillip on 03.06.2024.
//

import SwiftUI

struct LevelView: View {
    @State var gameOverOpacity: CGFloat = if true { 0 } else { 1 }
    
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 5, opaque: true)
            
//            Board
            
            GameOver()
                .opacity(0)
            
//            Body
            VStack {
                ZStack {
                    Text("Level 1")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 35))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            ZStack {
                                Image("RoundButtonBackground")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75)
                                
                                Image("BackArrow")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36)
                                    .padding(.trailing)
                            }
                        })
                        .padding(.leading)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            ZStack {
                                Image("RoundButtonBackground")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75)
                                
                                Image("RenewButton")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36)
                                    .padding(.trailing)
                                    .padding(.leading, 8)
                            }
                        })
                    }
                }
                .shadow(radius: 3, x: 5, y: 3)
                
                HStack {
                    ZStack {
                        Image("ScoreBackground")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        
                        Text("Score")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 28))
                            .shadow(color: .black, radius: 1)
                            .textCase(.uppercase)
                    }
                    .shadow(radius: 3, x: 5, y: 3)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LevelView()
}
