//
//  TakerTicket.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TakerTicket: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .shadow(radius: 10)
                .foregroundColor(.white)
                .padding(.vertical)
            VStack{
                Image("ticket")
                    .resizable()
                HStack{
                    Text("Thin Tony's Pizza")
                        .bold()
                    Spacer()
                    Image("location")
                        .resizable()
                        .frame(width: 16, height: 22)
                }
                .padding(.horizontal,20)
               Text("5 Kg Rice is available in Indira Nagar, can you collect this before 4 pm tomorrow?")
                    .foregroundColor(.gray)
                    .padding(.horizontal, 20)
                    .padding(.bottom)
                HStack{
                    Spacer()
                    ButtonView(buttonName: "Yes", buttonColor: .primary, textColor: .white, height: 45, horizontalPadding: 0)
                        .padding(.leading, 50)
                        .padding(.trailing, 2)
                    ButtonView(buttonName: "No", buttonColor: .clear, textColor: .black, height: 45, horizontalPadding: 00)
                        .padding(.trailing, 50)
                    Spacer()
                }
                .padding(.bottom, 30)
            }
        
        }
        .padding(.horizontal, 18)

    }
}

struct TakerTicket_Previews: PreviewProvider {
    static var previews: some View {
        TakerTicket()
    }
}
