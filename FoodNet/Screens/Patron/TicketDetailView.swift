//
//  TicketDetailView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TicketDetailView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: UIScreen.main.bounds.width - 60, height: 280)
                    .overlay(
                        VStack{
                            Rectangle()
                                .cornerRadius(24, corners: [.topLeft, .topRight])
                                .frame(width: UIScreen.main.bounds.width - 60, height: 100)
                            Spacer()
                        }
                        )
                
            }
            VStack{
                HStack{
                    VStack{
                        Text("Order ID")
                            .frame(width: 200, alignment: .leading)
                        Text("214145")
                            .font(.title2)
                            .frame(width: 200, alignment: .leading)
                            .padding(.top,1)
                    }
                    Spacer()
                    VStack{
                        Text("NGO Partner")
                            .frame(width: 100, alignment: .trailing)
                        Text("Rahat")
                            .font(.title2)
                            .frame(width: 100, alignment: .trailing)
                            .padding(.top,1)
                    }
                }
                .padding(.horizontal,40)
                .foregroundColor(.white)
                .padding(.bottom, 30)
                HStack{
                    VStack{
                        Text("Food Title")
                            .frame(width: 200, alignment: .leading)
                         
                        Text("Chicken Butter Masala")
                            .lineLimit(1)
                            .font(.title2)
                            .frame(width: 200, alignment: .leading)
                            .padding(.top,1)
                    }
                    Spacer()
                    VStack{
                        Text("Amount")
                            .frame(width: 100, alignment: .trailing)
                        Text("3 kg")
                            .font(.title2)
                            .frame(width: 100, alignment: .trailing)
                            .padding(.top,1)
                    }
                }
                .padding(.horizontal,40)
                .padding(.bottom, 10)
                HStack{

                        VStack{
                            Text("Collect Before")
                                .frame(width: 200, alignment: .leading)
                            Text("5 pm tomorrow")
                                .font(.title2)
                                .frame(width: 200, alignment: .leading)
                                .padding(.top,1)
                        }
//                    Capsule()
//                        .foregroundColor(.green)
//                        .frame(width: 100, height: 30)
//                        .overlay(Text("Collected").foregroundColor(.white))
//                        .padding(.top, 30)

                    Spacer()
                    VStack{
                        Text("Type")
                            .frame(width: 100, alignment: .trailing)
                        Text("Non Veg")
                            .font(.title2)
                            .frame(width: 100, alignment: .trailing)
                            .padding(.top,1)
                    }
                }
                .padding(.horizontal,40)
                .padding(.top, 10)
            }
        }
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView()
    }
}

