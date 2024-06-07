//
//  DiamondsShopView.swift
//  CresusApp
//
//  Created by Phillip on 04.06.2024.
//

import SwiftUI

struct DiamondsShopView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            VStack {
                Text("Buy Gems")
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
                    
                    Button(action: {
                        
                    }, label: {
                        ZStack {
                            Image("BuyButtonUnactive")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                                .shadow(radius: 3, x: 5, y: 3)
                            
                            Text("Buy")
                                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                                .font(.custom("Modak", size: 24))
                                .shadow(color: .black, radius: 1)
                                .textCase(.uppercase)
                                .padding()
                                .shadow(radius: 3, x: 5, y: 3)
                        }
                    })
                    .offset(y: 200)
                    
                    VStack(spacing: 40) {
                        HStack {
                            ZStack {
                                GemsFrame(gemsAmount: "10", price: "1")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                            }
                            
                            ZStack {
                                GemsFrame(gemsAmount: "15", price: "2")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                                CustomDiamond(size: 20, offsetX: 16, offsetY: -32, rotationDegree: 0)
                            }
                            
                            ZStack {
                                GemsFrame(gemsAmount: "50", price: "5")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                                CustomDiamond(size: 16, offsetX: -16, offsetY: -46, rotationDegree: 50)
                                CustomDiamond(size: 20, offsetX: 16, offsetY: -32, rotationDegree: 0)
                            }
                        }
                            
                        HStack {
                            ZStack {
                                GemsFrame(gemsAmount: "150", price: "10")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 16, offsetX: 5, offsetY: -53, rotationDegree: -40)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                                CustomDiamond(size: 16, offsetX: -16, offsetY: -46, rotationDegree: 50)
                                CustomDiamond(size: 20, offsetX: 16, offsetY: -32, rotationDegree: 0)
                            }
                            
                            ZStack {
                                GemsFrame(gemsAmount: "150", price: "10")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 16, offsetX: 5, offsetY: -53, rotationDegree: -40)
                                CustomDiamond(size: 16, offsetX: -48, offsetY: -4, rotationDegree: 40)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                                CustomDiamond(size: 16, offsetX: -16, offsetY: -46, rotationDegree: 50)
                                CustomDiamond(size: 20, offsetX: 16, offsetY: -32, rotationDegree: 0)
                            }
                            
                            ZStack {
                                GemsFrame(gemsAmount: "150", price: "10")
                                
                                CustomDiamond(size: 30, offsetX: 0, offsetY: -40, rotationDegree: 0)
                                CustomDiamond(size: 16, offsetX: 5, offsetY: -53, rotationDegree: -40)
                                CustomDiamond(size: 16, offsetX: -48, offsetY: -4, rotationDegree: 40)
                                CustomDiamond(size: 14, offsetX: 8, offsetY: -54, rotationDegree: -16)
                                CustomDiamond(size: 14, offsetX: 0, offsetY: -54, rotationDegree: 14)
                                CustomDiamond(size: 20, offsetX: 0, offsetY: -40, rotationDegree: -30)
                                CustomDiamond(size: 16, offsetX: 40, offsetY: -15, rotationDegree: -20)
                                CustomDiamond(size: 16, offsetX: -16, offsetY: -46, rotationDegree: 50)
                                CustomDiamond(size: 20, offsetX: 16, offsetY: -32, rotationDegree: 0)
                            }
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
    DiamondsShopView()
}

struct GemsFrame: View {
    @State var gemsAmount: String
    @State var price: String
    
    var body: some View {
        VStack {
            ZStack {
                Image("DiamondFrame")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90)
                
                ZStack {
                    Image("DiamondBackground")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                    
                    Text(gemsAmount)
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 16))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                }
                .offset(y: 30)
            }
            
            ZStack {
                Image("BuyButtonBackground")
                    .resizable()
                    .frame(width: 75, height: 32)
                
                Text("\(price)$")
                    .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                    .font(.custom("Modak", size: 16))
                    .shadow(color: .black, radius: 1)
                    .textCase(.uppercase)
            }
        }
    }
}

struct CustomDiamond: View {
    @State var size: CGFloat
    @State var offsetX: CGFloat
    @State var offsetY: CGFloat
    @State var rotationDegree: CGFloat
    
    var body: some View {
        Image("DiamondSprite")
            .resizable()
            .scaledToFit()
            .frame(height: size)
            .offset(x: offsetX,y: offsetY)
            .rotationEffect(.degrees(rotationDegree))
    }
}
