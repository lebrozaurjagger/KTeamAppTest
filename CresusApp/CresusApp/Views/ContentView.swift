//
//  ContentView.swift
//  CresusApp
//
//  Created by Phillip on 01.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            VStack(spacing: 20) {
                Button(action: {
                    
                }, label: {
                    ButtonView(title: "New Game")
                })
                
                Button(action: {
                    
                }, label: {
                    ButtonView(title: "Leaderboard")
                })
                
                Button(action: {
                    
                }, label: {
                    ButtonView(title: "Choose Level")
                })
                
                Button(action: {
                    
                }, label: {
                    ButtonView(title: "Exit")
                })
            }
            .padding(.bottom, 80)
            
            VStack {
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    VStack(spacing: -20) {
                        Text("Privacy")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 28))
                            .shadow(color: .black, radius: 1)
                            .textCase(.uppercase)
                            .shadow(radius: 3, x: 5, y: 3)
                        
                        Text("Policy")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 28))
                            .shadow(color: .black, radius: 1)
                            .textCase(.uppercase)
                            .shadow(radius: 3, x: 5, y: 3)
                    }
                })
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    ContentView()
}

struct ButtonView: View {
    @State var title: String
    
    var body: some View {
        ZStack {
            Image("MenuButton")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .shadow(radius: 3, x: 5, y: 3)
            
            Text(title)
                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                .font(.custom("Modak", size: 32))
                .shadow(color: .shadowGradient1, radius: 1)
                .textCase(.uppercase)
                .shadow(radius: 3, x: 5, y: 3)
        }
    }
}
