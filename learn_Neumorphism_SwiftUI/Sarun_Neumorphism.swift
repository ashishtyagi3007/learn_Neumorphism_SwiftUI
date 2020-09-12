//
//  Sarun_Neumorphism.swift
//  learn_Neumorphism_SwiftUI
//
//  Created by Ashish Tyagi on 04/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

//======================================================== https://sarunw.com/posts/how-to-create-neomorphism-design-in-swiftui/ =========================================================//

import SwiftUI

struct Sarun_Neumorphism: View {
        var bgColor: Color = Color.mainBackground
    @State private var isPressed: Bool = false
    

    
    var body: some View {
        
        ZStack {
            Color.mainBackground.edgesIgnoringSafeArea(.all)

            Button("Hello, Neumorphism!", action: {
                self.isPressed.toggle()
            }).padding(20)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .shadow(color: .white, radius: self.isPressed ? 7: 10, x: self.isPressed ? -5: -10, y: self.isPressed ? -5: -10)
                            .shadow(color: .black, radius: self.isPressed ? 7: 10, x: self.isPressed ? 5: 10, y: self.isPressed ? 5: 10)
                            .blendMode(.overlay)
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(bgColor)
                    }
            )
                .scaleEffect(self.isPressed ? 0.98: 1)
                .foregroundColor(.primary)
                .animation(.spring())
        }
    }
}


struct Sarun_Neumorphism_Previews: PreviewProvider {
    static var previews: some View {
        Sarun_Neumorphism()
            
    }
}


extension Color {
    static let mainBackground = Color(hex: "DFE4EB")
    static let dropDarkShadow = Color(hex: "A2B0C5").opacity(0.4)
    static let dropLightShadow = Color(hex: "FFFFFF")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}


