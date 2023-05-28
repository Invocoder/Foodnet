//
//  EarthView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct EarthView: View {
    @State var isShowingDetail = false
    var body: some View {
        ZStack{
            Image("bg")
            VStack{
                Image("earth")
                    .padding(.top)
                Spacer()
            }
            ScrollView{
                HStack{
                    Image("location_black")
                        .resizable()
                        .frame(width: 15, height: 20)
                    Text("Location")
                        .foregroundColor(.black)
                        .padding(.trailing)
                    Spacer()
                }
                .padding(.leading)
                .offset(y: -10)
                HStack{
                    Text("Woodbridge Country Club")
                        .foregroundColor(.green)
                        .padding(.trailing)
                    Spacer()
                }
                .padding(.leading)
                .offset(y: -10)
                .padding(.bottom, 100)
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.green)
                        .overlay(content: {
                            VStack(content: {
                                Image("carbon")
                                    .resizable()
                                    .frame(width: 150, height: 100)
                                Text("0.25 Tonnes")
                                    .padding(.trailing, 50)
                                Text("new orders")
                                    .padding(.trailing, 50)
                                    .padding(.bottom)
                                
                            })
                        })
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.green)
                        .overlay(content: {
                            VStack(content: {
                                Image("carbon")
                                    .resizable()
                                    .frame(width: 150, height: 100)
                                Text("0.25 Tonnes")
                                    .padding(.trailing, 50)
                                Text("new orders")
                                    .padding(.trailing, 50)
                                    .padding(.bottom)
                                
                            })
                        })
                }
                
                HStack{
                    Text("Past Orders")
                    Spacer()
                    NavigationLink(destination: {
                        PastOrdersView()
                    }, label: {
                        Text("View All")
                            .foregroundColor(.green)
                            .underline()
                    })
              
                }
                .padding()
             TicketTabView()
                    .padding(.bottom, 20)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.365)
                NavigationLink(destination: PatronHomeScreen(isShowingDetail : $isShowingDetail),isActive: $isShowingDetail,label : {
                    ButtonView(buttonName: "Create Donation", buttonColor: .green, textColor: .white, height: 42, horizontalPadding: 14)
                })
            }
        }
    }
}

struct EarthView_Previews: PreviewProvider {
    static var previews: some View {
        EarthView()
    }
}
