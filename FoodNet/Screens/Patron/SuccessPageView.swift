//
//  SuccessPageView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct SuccessPageView: View {
    var body: some View {
        ZStack{
            Image("bg")
            VStack{
                VStack{
                    Image("congrats")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
                        .padding(.top, 50)
                    Text("Congratulations!")
                        .padding()
                        .font(.title)
                        .bold()
                    Text("You just reduced ")
                        .foregroundColor(.gray)
                      
                    Text("0.25 Tonnes of CO2")
                        .foregroundColor(.gray)
                        .bold()
                    Spacer()
                }
            
            }
        }
    }
}

struct SuccessPageView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessPageView()
    }
}
