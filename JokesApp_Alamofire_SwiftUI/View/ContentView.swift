//
//  ContentView.swift
//  JokesApp_Alamofire_SwiftUI
//
//  Created by Eren Elçi on 4.11.2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var jokesVm = JokesViewModel()
    
    
    
    var body: some View {
        NavigationStack {
            List(jokesVm.jokes) { element in
                Text(element.joke)
                
            }
            .toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }

            }
            .navigationTitle(Text("Joke App"))
        }
    }
    func addJoke(){
        jokesVm.getJokes()
    }
}

#Preview {
    MainView()
}
