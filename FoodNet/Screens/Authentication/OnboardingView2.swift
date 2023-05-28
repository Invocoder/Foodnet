//
//  OnboardingView2.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct OnboardingView2: View {
    @Binding var giver : Int
    @Binding var login : Bool
    var body: some View {
        ZStack{
                Image("bg")
            ScrollView{
                VStack{
                    Image("ob2")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                        .padding(.top, 50)
                    Spacer()
                }
                VStack{
                  Text("Become a better version of yourself")
                        .font(.title2)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("You can be the Patron or the Steward, it’s you who make our Earth better.")
                    
                        .padding()
                        .multilineTextAlignment(.center)
                    Button(action: {giver = 1}, label: {
                        ButtonView(buttonName: "I want to donate", buttonColor: .green, textColor: .white, height: 50, horizontalPadding: 20)
                    })
                    .padding(.vertical, 5)
                    Button(action: {giver = 2}, label: {
                        ButtonView(buttonName: "I want to take", buttonColor: .white, textColor: .green, height: 50, horizontalPadding: 20)
                    })
                    .padding(.vertical, 5)
                        
                    
                }
                
            }

        }
  
        .ignoresSafeArea()
    }
}

struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView2(giver:  .constant(1), login: .constant(false))
    }
}
