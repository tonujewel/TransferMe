//
//  OnBoard.swift
//  TransferMe
//
//  Created by Jewel Rana on 28/12/23.
//



import Foundation
import SwiftUI

struct OnBoard: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let image: String
    let color: Color
}


var onboadItemList : [OnBoard] = [
    OnBoard(id: UUID(), title: "Easy, Fast & Trusted", description: "Fast money transfer and gauranteed safe transactions with others.", image:"on1", color: Color(hex: 0xBBE5B3)),
    
    OnBoard(id: UUID(), title:
                "Saving Your Money", description: "Track the progress of your savings and start a habit of saving with TransferMe.", image: "on2", color: Color (hex:0xFFC58B)),
    OnBoard(id: UUID(), title:
                "Free Transactions", description: "Provides the quality of the financial system with free money transactions without any fees.", image: "on3", color:
                Color(hex: 0xB4E0FA)),
]
