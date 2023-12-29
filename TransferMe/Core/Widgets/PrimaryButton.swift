//
//  CustomButton.swift
//  TransferMe
//
//  Created by Jewel Rana on 29/12/23.
//

import SwiftUI

struct PrimaryButton: View {
    var label: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(.white))
                .padding(.vertical, 20)
                .background(Color("btnColor"))
                .cornerRadius(20)
                .font(.system(size: 24, weight: .bold))
        }
        .padding(.horizontal, 40)
    }
}

#Preview {
    PrimaryButton(label: "Click", action: {
        
    })
}
