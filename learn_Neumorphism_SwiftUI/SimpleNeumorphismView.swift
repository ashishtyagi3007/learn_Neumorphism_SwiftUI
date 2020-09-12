//
//  SimpleNeumorphismView.swift
//  learn_Neumorphism_SwiftUI
//
//  Created by Ashish Tyagi on 13/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct SimpleNeumorphismView: View {
    var body: some View {
        
       VStack {
        RoundedRectangle(cornerRadius: 20.0)
            .fill(Color.mainBackground)
                .frame(width: 150, height: 150)
            .shadow(color: Color.dropDarkShadow, radius: 5, x: -10, y: -10)
            .shadow(color: Color.dropLightShadow, radius: 5, x: 10, y: 10)
                .overlay(
                    Image(systemName: "moon.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.pink)
            )

        RoundedRectangle(cornerRadius: 20.0)
           .fill(Color.mainBackground)
                 .frame(width: 150, height: 150)
           .shadow(color: Color.dropDarkShadow, radius: 5, x: -10, y: -10)
           .shadow(color: Color.dropLightShadow, radius: 5, x: 10, y: 10)
          .blur(radius: 5) // Added blur
          .overlay(
              Image(systemName: "2.circle.fill") // Changed image
                  .resizable()
                  .frame(width: 40, height: 40)
                  .aspectRatio(contentMode: .fit)
                  .foregroundColor(.pink)
            )
            .padding(.top, 40)
        
        
        ZStack {
                       RoundedRectangle(cornerRadius: 20.0)
                        .fill(Color.mainBackground)
                           .frame(width: 150, height: 150)
                       RoundedRectangle(cornerRadius: 20.0)
                        .fill(Color.mainBackground)
                           .frame(width: 135, height: 135)
                           .blur(radius: 15)
                           .opacity(0.7)
                        .shadow(color: Color.dropDarkShadow, radius: 5, x: -10, y: -10)
                       RoundedRectangle(cornerRadius: 20.0)
                        .fill(Color.mainBackground)
                           .frame(width: 135, height: 135)
                           .blur(radius: 15)
                           .opacity(0.7)
                        .shadow(color: Color.dropLightShadow, radius: 5, x: 10, y: 10)
                           .overlay(
                               Image(systemName: "bandage.fill")
                                   .resizable()
                                   .frame(width: 40, height: 40)
                                   .aspectRatio(contentMode: .fit)
                                   .foregroundColor(.pink)
                       )
                   }
                   .mask(
                    RoundedRectangle(cornerRadius: 20.0)
                   )
        .padding(.top, 50)


        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
       .background(Color.mainBackground)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SimpleNeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleNeumorphismView()
    }
}
