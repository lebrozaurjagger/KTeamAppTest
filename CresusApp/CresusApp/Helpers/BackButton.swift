//
//  BackButton.swift
//  CresusApp
//
//  Created by Phillip on 04.06.2024.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        ZStack {
            Image("BackButton")
                .resizable()
                .scaledToFit()
                .frame(height: 64)
                .shadow(radius: 3, x: 5, y: 3)
            
            Text("Back")
                .foregroundStyle(LinearGradient(colors: [.white, .customCyan], startPoint: .top, endPoint: .bottom))
                .font(.custom("Modak", size: 32))
                .shadow(color: .shadowGradient1, radius: 1)
                .textCase(.uppercase)
                .shadow(radius: 3, x: 5, y: 3)
        }
    }
}

#Preview {
    BackButton()
}
