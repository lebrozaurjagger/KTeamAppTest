//
//  ShopView.swift
//  CresusApp
//
//  Created by Phillip on 01.06.2024.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            VStack {
                Text("Shop")
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
                        .padding()
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    VStack(spacing: 40) {
                        HStack {
                            VaseView(vaseName: "Vase1", isBought: true, price: "0")
                            VaseView(vaseName: "Vase2", isBought: true, price: "10")
                            VaseView(vaseName: "Vase3", isBought: true, price: "20")
                        }
                            
                        HStack {
                            VaseView(vaseName: "Vase4", isBought: true, price: "50")
                            VaseView(vaseName: "Vase5", isBought: true, price: "100")
                            VaseView(vaseName: "Vase6", isBought: true, price: "200")
                        }
                    }
                    .frame(width: 320, height: 350)
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    BackButton()
                })
                .padding()
            }
            
            VStack {
                HStack {
                    Image("DiamondSprite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 17)
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    Text("Gems:")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 17))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                        .shadow(radius: 3, x: 5, y: 3)
                    
                    Text("10")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 17))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                        .shadow(radius: 3, x: 5, y: 3)
                }
                .background(
                    Image("MiniButton")
                        .resizable()
                        .frame(width: 120,height: 32)
                        .shadow(radius: 3, x: 5, y: 3)
                )
                
                Spacer()
            }
            .padding(.top, 110)
        }
    }
}

#Preview {
    ShopView()
}

struct VaseView: View {
    @State var vaseName: String
    @State var isBought: Bool
    @State var price: String
    
    var body: some View {
        VStack {
            ZStack {
                Image("Frame")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .padding(.bottom, 8)
                
                Image(vaseName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
            }
            
            Button(action: {
                
            }, label: {
                ZStack {
                    Image("BuyButtonBackground")
                        .resizable()
                        .frame(width: 75, height: 32)
                    
                    HStack {
                        Image("DiamondSprite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18)
                        
                        Spacer()
                        
                        Text(price)
                            .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                            .font(.custom("Modak", size: 16))
                            .shadow(color: .black, radius: 1)
                            .textCase(.uppercase)
                    }
                    .frame(width: 54)
                }
            })
        }
    }
}
