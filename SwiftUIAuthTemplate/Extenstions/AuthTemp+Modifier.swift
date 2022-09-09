//
//  AuthTemp+Modifier.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 09/09/2022.
//

import SwiftUI

extension View {
    
    //MARK: - BUTTONS
    func templateOneButtonStyle() -> some View {
        self
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color("TempOnePurple"))
            .cornerRadius(6)
    }
    
    func templateOneSocialButtonStyle() -> some View {
        self
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .templateOneLightDark()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(
                color: Color.gray.opacity(0.3),
                radius: 8,
                x: 0,
                y: 0
            )
    }
    
    //MARK: - Font
    func templateOneLightDark() -> some View {
        self
            .foregroundColor(Color("TempOneDarkBlue").opacity(0.60))
    }
}

