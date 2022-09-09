//
//  TemplateOne.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 04/09/2022.
//

import SwiftUI

struct TemplateOneSignInScreen: View {
    
    var body: some View {
        ZStack {
            VStack {
                
                // Content
                VStack {
                    
                    // Logo
                    HStack {
                        Image("LogoTemplateOne")
                        Spacer()
                        Text("Log In to Brand")
                            .foregroundColor(Color("TempOneDarkBlue"))
                            .font(.system(size: 30, weight: .heavy, design: .default))
                    }
                    .padding(.top)
                    
                    // Button
                    HStack(spacing: 10){
                        // Facebook
                        TemplateOneSocialButton(icon: "facebook", title: "Facebook", action: {})
                        
                        // Google
                        TemplateOneSocialButton(icon: "Google", title: "Google", action: {})
                        
                    }
                    // Divider
                    HStack{
                        VStack {Divider()}
                        Text("Or")
                        VStack {Divider()}
                    }
                    .padding(.vertical)
                    
                    // Form
                    VStack {
                        TemplateOneTextField(textFieldTitle: "Email", placeholderTitle: "mail@mail.com")
                        TemplateOneTextField(textFieldTitle: "Password", placeholderTitle: "*******",isSecure: true)
                        
                        // Forgot password
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.body)
                                .fontWeight(.light)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }).buttonStyle(.plain)
                    }
                    .padding(.bottom,5)
                    
                    // Button: LogIn
                    TemplateOneButton(title: "Log In", action: {})
                    
                    
                    // Create Account
                    HStack{
                        Text("New to Brand?")
                            .foregroundColor(Color("TempOneDarkBlue"))
                        Button("Sign Up", action: {})
                            .buttonStyle(.plain)
                            .foregroundColor(Color("TempOnePurple"))
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
                Spacer()
                
                // BG pattern
                Image("TemplateOnePattern")
                    .resizable()
                    .scaledToFit()
                
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
    
}

struct TemplateOne_Previews: PreviewProvider {
    static var previews: some View {
        TemplateOneSignInScreen()
    }
}
