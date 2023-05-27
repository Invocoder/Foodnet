//
//  ViewModel.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct ViewModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}
import Foundation

struct ImageAPIModel: Codable {
   var GiverId: String?
   var FoodTitle : String?
   var FoodType : String?
   var Quantiy : Float?
    var Units: String?
    var Image: String?
    var cookDate : String?
    var ExpiryDate : String?

}

import Foundation

class ImageAPIViewModel: ObservableObject {
    
    @Published var images = ImageAPIModel()
    @Published  var selectedImage = 0
    func fetchData() async {
        // create url
        guard let apiURL = URL(string: "https://raw.githubusercontent.com/Invocoder/Foodnet/main/api/posts")
        else {
            print("The URL doesn't work")
            return
        }
        // fetch data from url
        do {
            
            let (data, _ ) = try await URLSession.shared.data(from: apiURL)
            
            // decode the data
            if let decodedResponse = try? JSONDecoder().decode(ImageAPIModel.self, from: data) {
                DispatchQueue.main.async {
                    self.images = decodedResponse
                }
            }
            
        }
        catch {
            print("The data isn't valid")
        }
        
    }
    
}


