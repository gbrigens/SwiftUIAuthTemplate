//
//  TemplateOneTextField.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 09/09/2022.
//

import SwiftUI

struct TemplateOneTextField: View {
    
    var textFieldTitle: String
    var placeholderTitle: String
    var isSecure: Bool = false
    @State private var value: String = ""
    @State private var isDisplayPassword: Bool = true
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 5){
            Text(textFieldTitle)
            VStack(alignment: .leading) {
                if isSecure {
                    HStack {
                        if !isDisplayPassword {
                            TextField("", text: $value)
                                .font(.body)
                                .padding()
                        } else {
                            SecureField(placeholderTitle, text: $value)
                                .font(.body)
                                .padding()
                        }
                        
                        Button(action: {
                            isDisplayPassword.toggle()
                        }) {
                            Image(systemName: self.isDisplayPassword ? "eye.slash" : "eye")
                                .accentColor(.gray)
                        }
                        .padding(.trailing)
                    }
                } else {
                    TextField(placeholderTitle, text: $value)
                        .font(.body)
                        .padding()
                }
            }
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
        }
        
    }
}

struct TemplateOneTextField_Previews: PreviewProvider {
    static var previews: some View {
        TemplateOneTextField(textFieldTitle: "Test", placeholderTitle: "Test")
    }
}
