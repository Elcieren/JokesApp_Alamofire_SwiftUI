//
//  JokesViewModel.swift
//  JokesApp_Alamofire_SwiftUI
//
//  Created by Eren Elçi on 4.11.2024.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject {
    
    @Published var jokes = [Value]()
    
    init(){
        getJokes()
    }
    
    func getJokes()  {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/refs/heads/main/chuck.json",method: .get).responseDecodable(of: Welcome.self) { response in
            switch response.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let error):
                print(error)
                
            }
        }
    }
    
    
}

//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/refs/heads/main/chuck.json
