//
//  TemplateOneButton.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 09/09/2022.
//

import SwiftUI

struct TemplateOneButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action:action, label: {
            Spacer()
            Text(title)
            Spacer()
        })
        .templateOneButtonStyle()
    }
    
}

struct TemplateOneButton_Previews: PreviewProvider {
    static var previews: some View {
        TemplateOneButton(title: "Button", action: {})
    }
}
