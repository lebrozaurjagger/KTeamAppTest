//
//  DailyBonusView.swift
//  CresusApp
//
//  Created by Phillip on 02.06.2024.
//

import SwiftUI

struct DailyBonusView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            ZStack {
                Image("RockBackground")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                ZStack {
                    Image("HScroll")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 115)
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    Text("Daily Bonus")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 26))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                        .shadow(radius: 3, x: 5, y: 3)
                }
                .offset(y: -220)
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Image("BackButton")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .shadow(radius: 3, x: 5, y: 3)
                        
                        Text("Claim")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 22))
                            .shadow(color: .shadowGradient1, radius: 1)
                            .textCase(.uppercase)
                            .shadow(radius: 3, x: 5, y: 3)
                    }
                })
                .offset(y: 200)
                
                VStack {
                    VStack {
                        Text("Receive bigger rewards by")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 22))
                            .shadow(color: .shadowGradient1, radius: 1)
                        
                        Text("playing everyday!")
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 22))
                            .shadow(color: .shadowGradient1, radius: 1)
                            .padding(.top, -36)
                    }
                    .shadow(radius: 3, x: 5, y: 3)
                    
                    VStack(spacing: 20) {
                        HStack(spacing: 20) {
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                                    .opacity(0.5)
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                                    .opacity(0.5)
                            })
                        }
                        
                        HStack(spacing: 20) {
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                                    .opacity(0.5)
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                                    .opacity(0.5)
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                RewardView()
                                    .opacity(0.5)
                            })
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    DailyBonusView()
}

struct RewardView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(RadialGradient(colors: [.white, .radialGradient1, .radialGradient2, .radialGradient3, .radialGradient4], center: .center, startRadius: 0, endRadius: 50))
            
            Image("DiamondSprite")
                .resizable()
                .scaledToFit()
                .frame(width: 28)
                .offset(y: 3)
                .shadow(radius: 3, x: 5, y: 3)
            
            VStack {
                ZStack {
                    Image("HScrollAlt")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 22)
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    Text("Day 1")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 10))
                        .offset(y: 1)
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                        .shadow(radius: 3, x: 5, y: 3)
                }
                .padding(.top, 4)
                
                Spacer()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.black.opacity(0.5))
                        .frame(height: 18)
                    
                    Text("+1")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 12))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                }
            }
        }
        .frame(width: 55, height: 70)
        .cornerRadius(8)
        .shadow(radius: 3, x: 5, y: 3)
    }
}
