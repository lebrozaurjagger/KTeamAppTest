//
//  LeaderboardView.swift
//  CresusApp
//
//  Created by Phillip on 01.06.2024.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            VStack {
                Text("Leaderboard")
                    .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                    .font(.custom("Modak", size: 35))
                    .shadow(color: .black, radius: 1)
                    .textCase(.uppercase)
                    .padding()
                    .shadow(radius: 3, x: 5, y: 3)
                
                Spacer()
                
                ZStack {
                    Image("RockBackground")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 3, x: 5, y: 3)
                        .padding()
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    VStack(spacing: -10) {
                        ForEach(0 ..< 5) { item in
                            HStack {
                                Text("Player 1:")
                                    .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                                    .font(.custom("Modak", size: 35))
                                    .shadow(color: .black, radius: 1)
                                    .shadow(radius: 3, x: 5, y: 3)
                                
                                Spacer()
                                
                                Text("120")
                                    .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                                    .font(.custom("Modak", size: 35))
                                    .shadow(color: .black, radius: 1)
                                    .textCase(.uppercase)
                                    .shadow(radius: 3, x: 5, y: 3)
                            }
                            .padding(.horizontal)
                        }
                        
                        Spacer()
                    }
                    .frame(width: 300, height: 350)
                }
                
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
    LeaderboardView()
}
