//
//  HomeScreenTakerView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct HomeScreenTakerView: View {
    var body: some View {
      
        ZStack{
            Image("bg")
            ScrollView{
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
                                    .foregroundColor(.gray)
                                
                            })
                        })
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.green)
                        .overlay(content: {
                            VStack(content: {
                                HStack{
                                    VStack{
                                        Image("location")
                                            .resizable()
                                            .frame(width: 30, height: 50)
                                            .padding(.trailing, 60)
                                            .padding(.bottom)
                                        Text("150")
                                            .padding(.trailing, 50)
                                            .padding(.horizontal)
                                        Text("times")
                                            .padding(.trailing, 50)
                                            .padding(.bottom)
                                            .foregroundColor(.gray)
                                            .padding(.horizontal)
                                    }
                                    Spacer()
                                }
                                
                                
                                
                            })
                        })
                }
                HStack{
                    Text("Available Orders")
                    
                    Spacer()
                    Text("View All")
                        .foregroundColor(.green)
                        .underline()
                }
                .padding(.vertical)
                .padding(.horizontal)
                TabView{
                    TakerTicket()
                    TakerTicket()
                    TakerTicket()
                    TakerTicket()
                    TakerTicket()
                }
                .padding(.bottom, 20)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.45)
                .tabViewStyle(.page(indexDisplayMode: .never))
                HStack{
                    Text("Active Orders")
                    
                    Spacer()
//                    Text("View All")
//                        .foregroundColor(.green)
//                        .underline()
                }
                .padding(.vertical)
                .padding(.horizontal)
                
                VStack{
                    HStack{
                        Text("#214145")
                        Spacer()
                        Capsule()
                            .foregroundColor(.red)
                            .frame(width: 110, height: 35)
                            .overlay{
                                HStack
                                {
                                    Image(systemName: "alarm")
                                    Text("In 2 Hrs")
                                    
                                }
                                .foregroundColor(.white)

                            }
                    }
                    .padding(.horizontal)
                    HStack{
                        Text("Rice")
                            .font(.body)
                            .foregroundColor(.gray)
                       Text("Dry")
                            .padding(.horizontal, 5)
                            .padding(.vertical, 3)
                            .foregroundColor(.gray)
                            .overlay{
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                                   
                            }
                        Spacer()
                                HStack
                                {
                                    Image(systemName: "person.circle")
                                    Text("Bhuvan Kumar")
                                    
                                }
                            
                    }
                    .padding(.horizontal)
                }
                Divider()
                    .padding(.horizontal)
                VStack{
                    HStack{
                        Text("#214145")
                        Spacer()
                        Capsule()
                            .foregroundColor(.orange)
                            .frame(width: 110, height: 35)
                            .overlay{
                                HStack
                                {
                                    Image(systemName: "alarm")
                                    Text("In 4 Hrs")
                                    
                                }
                                .foregroundColor(.white)

                            }
                    }
                    .padding(.horizontal)
                    HStack{
                        Text("Rice")
                            .font(.body)
                            .foregroundColor(.gray)
                       Text("Dry")
                            .padding(.horizontal, 5)
                            .padding(.vertical, 3)
                            .foregroundColor(.gray)
                            .overlay{
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                                   
                            }
                        Spacer()
                                HStack
                                {
                                    Image(systemName: "person.circle")
                                    Text("Bhuvan Kumar")
                                    
                                }
                            
                    }
                    .padding(.horizontal)
                }
                Divider()
                    .padding(.horizontal)
                VStack{
                    HStack{
                        Text("#214145")
                        Spacer()
                        Capsule()
                            .foregroundColor(.gray)
                            .frame(width: 120, height: 35)
                            .overlay{
                                HStack
                                {
                                    Image(systemName: "alarm")
                                    Text("Tomorrow")
                                    
                                }
                                .foregroundColor(.white)

                            }
                    }
                    .padding(.horizontal)
                
                        HStack{
                            Text("Rice")
                                .font(.body)
                                .foregroundColor(.gray)
                           Text("Dry")
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .foregroundColor(.gray)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 1)
                                       
                                }
                            Spacer()
                                HStack
                                {
                                    Image(systemName: "person.circle")
                                    Text("Bhuvan Kumar")
                                    
                                }
                            
                    }
                    .padding(.horizontal)
                }
                Divider()
                    .padding(.horizontal)
               
            }
       
        }

    }
}

struct HomeScreenTakerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTakerView()
    }
}
