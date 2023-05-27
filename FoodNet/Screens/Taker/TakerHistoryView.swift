//
//  TakerHistoryView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TakerHistoryView: View {
    var body: some View {
        
            ScrollView{
                ZStack{
                    StretchyRectangleView(cornerRadius: 0, heightpct: 0.075, rectColor: .green)
                    HStack{
                        Text("Past Orders")
                            .font(.system(size : 20))
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                }
                .padding(.bottom)
                ForEach(0..<5) {
                    i in
                    TakerTicket()
                       
                }
                .padding(.top, 10)
            }
    }
}

struct TakerHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TakerHistoryView()
    }
}
