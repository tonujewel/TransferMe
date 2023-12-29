//
//  SplashScreen.swift
//  TransferMe
//
//  Created by Jewel Rana on 28/12/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive: Bool = false;
    @State private var size = 0.8;
    @State private var opacity = 0.5;
    
    var body: some View {
        
        
        if isActive {
            HomeScreen()
        }else{
            VStack {
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    
                    
                    Text("TransferMe")
                        .font(
                            Font.custom("San Francisco Display", size: 54).weight(.semibold)
                        )
                        .lineSpacing(51)
                        .foregroundColor(Color(red: 0.31, green: 0.39, blue: 0.75))
                    
                    Text("Your Best Money Transfer Partner.")
                        .font(
                            Font.custom("San Francisco Display", size: 13).weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.31, green: 0.39, blue: 0.75))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear(){
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+3){
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
