//
//  OnBoardingScreen.swift
//  TransferMe
//
//  Created by Jewel Rana on 28/12/23.
//

import SwiftUI

struct OnBoardingScreen: View {
    
    @State private var index = 0
    @State private var showHomeScreen = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                TabView(selection: $index) {
                    
                    ForEach(onboadItemList.indices, id: \.self) { i in
                        
                        VStack {
                            Image("on\(i+1)")
                                .resizable()
                                .frame(width: 400, height: 400)
                                .scaledToFit()
                            
                            Text(onboadItemList[i].title)
                                .font(.system(size: 24))
                                .bold()
                                .padding(.bottom, 20)
                                .multilineTextAlignment(.center)
                            
                            Text(onboadItemList[i].title)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hex: 0x878787))
                            
                            HStack {
                                ForEach(onboadItemList.indices, id: \.self) { i in
                                    Circle()
                                        .foregroundColor(Color(hex: i == index ? 0xFF5064BF : 0xFF80C9D4))
                                        .frame(width: 10, height: 10)
                                }
                            }
                            .padding(.top, 40)
                            .padding(.bottom, 40)
                            
                            if index == onboadItemList.indices.last {
                                
                                NavigationLink(destination: LoginScreen()){
                                    
                                    Text("Done")
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(Color(.white))
                                        .padding(.vertical, 20)
                                        .background(Color("btnColor"))
                                        .cornerRadius(20)
                                        .font(.system(size: 24, weight: .bold))
                                    
                                }
                                
                            } else {
                                PrimaryButton(label: "Continue") {
                                    index += 1
                                }

                            }
                            
                        }
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    OnBoardingScreen()
}
