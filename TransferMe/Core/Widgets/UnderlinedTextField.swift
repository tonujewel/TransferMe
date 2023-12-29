//
//  UnderlinedTextField.swift
//  TransferMe
//
//  Created by Jewel Rana on 29/12/23.
//

import SwiftUI


struct UnderlinedTextField: View {
    @Binding var text: String
    var hint: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(hint)
                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
            
            TextField("", text: $text)
            Divider()
                .frame(height: 1)
                .padding(.horizontal, 30)
                .background(Color(hex: 0xFFc4c4c4))
            
            
        }
        
    }
}

struct PasswordTextField: View {
    @Binding var text: String
    var hint: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(hint)
                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
            
            SecureField("", text: $text)
            
            Divider()
                .frame(height: 1)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93))
        }
  
    }
}


#Preview {
   
    UnderlinedTextField(text: .constant(""), hint: "Enter your email")
    
}


