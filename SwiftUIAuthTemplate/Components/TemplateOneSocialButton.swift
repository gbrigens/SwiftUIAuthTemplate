//
//  TemplateOneSocialButton.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 09/09/2022.
//

import SwiftUI

struct TemplateOneSocialButton: View {
    
    let icon: String
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action:action, label: {
            HStack {
                Image(icon)
                Text(title)
            }
        })
        .templateOneSocialButtonStyle()
    }
}

struct TemplateOneSocialButton_Previews: PreviewProvider {
    static var previews: some View {
        TemplateOneSocialButton(icon: "facebook", title: "Facebook", action: {})
    }
}
