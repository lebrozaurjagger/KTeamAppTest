//
//  ChooseLevelView.swift
//  CresusApp
//
//  Created by Phillip on 01.06.2024.
//

import SwiftUI

struct ChooseLevelView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            VStack {
                Text("Choose Level")
                    .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                    .font(.custom("Modak", size: 35))
                    .shadow(color: .black, radius: 1)
                    .textCase(.uppercase)
                    .padding()
                
                ZStack {
                    Image("MapBackground")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    Image("Map")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "1")
                    })
                    .offset(x: -40, y: 110)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "2")
                    })
                    .offset(x: 80, y: 50)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "3")
                    })
                    .offset(x: -30, y: 40)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "4")
                    })
                    .offset(x: 0, y: -20)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "5")
                    })
                    .offset(x: -80, y: -40)
                    
                    Button(action: {
                        
                    }, label: {
                        LevelButton(level: "6")
                    })
                    .offset(x: -40, y: -100)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    BackButton()
                })
                .padding()
            }
        }
    }
}

#Preview {
    ChooseLevelView()
}

struct LevelButton: View {
    @State var level: String
    
    var body: some View {
        ZStack {
            Image("LevelButton")
                .resizable()
                .scaledToFit()
                .frame(width: 56)
                .shadow(radius: 3, x: 5, y: 3)
            
            Text(level)
                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                .font(.custom("Modak", size: 40))
                .shadow(color: .shadowGradient1, radius: 1)
                .textCase(.uppercase)
                .shadow(radius: 3, x: 5, y: 3)
        }
    }
}
