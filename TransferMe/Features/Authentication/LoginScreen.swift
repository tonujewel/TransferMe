//
//  LoginScreen.swift
//  TransferMe
//
//  Created by Jewel Rana on 29/12/23.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var inputText = ""
    
    
    var body: some View {
        
        VStack (alignment: .leading){
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 136, height: 83)
                    .scaledToFit()
                    .padding(.top)
                
                
            }
            
            Text("Sign In")
                .font(.system(size: 42))
                .bold()
                .lineSpacing(60)
                .foregroundColor(.black)
                .padding(.bottom)
            
            UnderlinedTextField(text: $inputText,hint: "Email Address")
                .padding(.bottom, 20)
            
            PasswordTextField(text: $inputText,hint: "Password")
                .padding(.bottom, 20)
            
            
//            NavigationLink(destination: HomeScreen()) {
//                PrimaryButton(label: "Login", action: { })
//                .padding(.top)
//            }
            
            NavigationLink(destination: HomeScreen()){
                
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(.white))
                    .padding(.vertical, 20)
                    .background(Color("btnColor"))
                    .cornerRadius(20)
                    .font(.system(size: 24, weight: .bold))
                
            }
            
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,content: {
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    Rectangle()
                        .foregroundColor(Color(hex:0xFFc4c4c4))
                        .frame(width: 100, height: 2)
                    
                    Text("or")
                        .font(
                            Font.custom("San Francisco Display", size: 16).weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.69, green: 0.69, blue: 0.69))
                    
                    Rectangle()
                        .foregroundColor(Color(hex:0xFFc4c4c4))
                        .frame(width: 100, height: 2)
                    
                })
                .padding(.top,40)
                .frame(maxWidth: .infinity)
                
                
                HStack{
                    
                    Image("google")
                        .resizable()
                        .frame(width: 60,height: 60)
                    VStack{
                        
                    }.frame(width: 20)
                    Image("fb")
                        .resizable()
                        .frame(width: 60,height: 60)
                }
                .padding(.top)
                
                
                HStack(content: {
                    Text("Don’t have an account? ")
                        .font(
                            Font.custom("San Francisco Display", size: 18).weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                        .padding(.top,40)
                    
                    Text("Sign Up")
                        .font(
                            Font.custom("San Francisco Display", size: 18).weight(.medium)
                        )
                        .foregroundColor(Color(hex:0xFF5063BF))
                        .padding(.top,40)
                })
                
                
                
            })
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden(true)
        
        
    }
    
}

#Preview {
    LoginScreen()
}
