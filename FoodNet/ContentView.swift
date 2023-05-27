//
//  ContentView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var imageViewModel = ImageAPIViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
      
        }
        .padding()
        .task {
            await imageViewModel.fetchData()
            let _ = print(imageViewModel.images)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
