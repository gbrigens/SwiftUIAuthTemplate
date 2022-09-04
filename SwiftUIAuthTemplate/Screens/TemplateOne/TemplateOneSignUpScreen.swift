//
//  TemplateOneSignUpScreen.swift
//  SwiftUIAuthTemplate
//
//  Created by Gbrigens on 09/09/2022.
//

import SwiftUI

struct TemplateOneSignUpScreen: View {
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
                        TemplateOneTextField(textFieldTitle: "Full Name", placeholderTitle: "John Doe")
                        TemplateOneTextField(textFieldTitle: "Email", placeholderTitle: "mail@mail.com")
                        TemplateOneTextField(textFieldTitle: "Password", placeholderTitle: "*******",isSecure: true)
                        
                        // Terms & Condition
                        HStack{
                            Text("I accept the")
                                .fontWeight(.light)
                            Button(action: {}, label: {
                                Text("Terms & Conditions")
                                    .fontWeight(.bold)
                                
                            }).buttonStyle(.plain)
                        }
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                    }
                    .padding(.bottom,5)
                    
                    // Button: Create
                    TemplateOneButton(title: "Create an Account", action: {})
                    
                    
                    // Create Account
                    HStack{
                        Text("Existing Member?")
                            .foregroundColor(Color("TempOneDarkBlue"))
                        Button("Sign In", action: {})
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
                    .frame(maxWidth: .infinity)
                
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct TemplateOneSignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        TemplateOneSignUpScreen()
    }
}
