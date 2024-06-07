//
//  PrivacyPolicyView.swift
//  CresusApp
//
//  Created by Phillip on 01.06.2024.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ZStack {
//            Background
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
//            Body
            ZStack {
                VStack {
                    Text("Privacy Police")
                        .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                        .font(.custom("Modak", size: 35))
                        .shadow(color: .black, radius: 1)
                        .textCase(.uppercase)
                        .padding()
                    
                    ZStack {
                        Image("VScroll")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 8)
                            .padding(.bottom, 60)
                            .shadow(radius: 3, x: 5, y: 3)
                        
                        ScrollView(showsIndicators: false) {
                            Text("Lorem ipsum dolor sit amet consectetur. Leo in mauris quis id amet eu porttitor. Et eget venenatis proin pulvinar consectetur mi. Luctus donec a neque ultrices quis vulputate vulputate. Ut cursus pellentesque dolor lacus. Risus faucibus eu eu neque tellus pulvinar sit molestie. Eget elementum curabitur adipiscing diam eget viverra convallis interdum. Interdum magna ridiculus in et adipiscing nec dolor. In dignissim eget gravida aliquam tincidunt viverra. Bibendum blandit ipsum mi pharetra vitae tortor pulvinar.Risus faucibus eu eu neque tellus pulvinar sit molestie. Eget elementum curabitur adipiscing diam eget viverra convallis interdum. Interdum magna ridiculus in et adipiscing nec dolor.")
                                .font(.system(size: 16))
                        }
                        .padding(.bottom, 40)
                        .frame(width: 223, height: 450)
                    }
                }
                
                VStack {
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
}

#Preview {
    PrivacyPolicyView()
}
