//
//  JokeData.swift
//  JokesApp_Alamofire_SwiftUI
//
//  Created by Eren Elçi on 4.11.2024.
//

import Foundation



struct Welcome: Codable , Identifiable{
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Codable , Identifiable {
    let id: Int
    let joke: String
    let categories: [String]
}
