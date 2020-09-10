//
//  DesignCodeNeumorphism.swift
//  learn_Neumorphism_SwiftUI
//
//  Created by Ashish Tyagi on 04/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI
let color = Color(red: 232/255, green: 238/255, blue: 246/255)

struct DesignCodeNeumorphism: View {
    var body: some View {
        Group {
            Button("Hello world") { }
            .foregroundColor(Color.primary)
            .padding()
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .shadow(
                            color: .white,
                            radius: 12,
                            x: -6,
                            y: -8
                        )
                        .shadow(
                            color: Color.black.opacity(0.8),
                            radius: 12,
                            x: 6,
                            y: 8
                        )
                        .blendMode(.overlay)
                        .padding(2)

                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .foregroundColor(color)
                }
            )

        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity,
               alignment: .center)
            .background(color).edgesIgnoringSafeArea(.all)
        
    }
}

struct DesignCodeNeumorphism_Previews: PreviewProvider {
    static var previews: some View {
        DesignCodeNeumorphism()
    }
}
