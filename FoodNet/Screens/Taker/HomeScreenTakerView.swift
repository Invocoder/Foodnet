//
//  HomeScreenTakerView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct HomeScreenTakerView: View {
    @State var selectedTab = 1
    @State var isShowingDetail = false
    var body: some View {
      
        ZStack{
            Image("bg")
            ScrollView{
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.lightGreen)
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
                        .foregroundColor(.lightGreen)
                        .overlay(content: {
                            VStack(content: {
                                HStack{
                                    VStack{
                                        Image("k")
                                            .resizable()
                                            .frame(width: 40, height: 70)
                                            .padding(.trailing, 60)
                                            .padding(.bottom, 10)
                                            .padding(.top, 20)
                                        
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
                        .bold()
                    
                    Spacer()
                    NavigationLink(destination: TakerHistoryView(), label: {
                        Text("View All")
                            .foregroundColor(.primary)
                            .underline()
                    })
                   
                }
                .padding(.vertical)
                .padding(.horizontal)
                HStack{
                    Button(action: {
                        if selectedTab != 1 {
                            selectedTab = selectedTab - 1
                        }
                    }, label: {
                        Image(systemName: "chevron.left")
                        .foregroundColor(selectedTab != 1 ? .black : .gray)
                    })
                  
                        .padding(.leading, 6)
                TabView(selection: $selectedTab){
                    TakerTicket()
                        .tag(1)
                    TakerTicket()
                        .tag(2)
                    TakerTicket()
                        .tag(3)
                    TakerTicket()
                        .tag(4)
                    TakerTicket()
                        .tag(5)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                    Button(action: {
                        if selectedTab != 5 {
                            selectedTab = selectedTab + 1
                        }
                    }, label: {
                        Image(systemName: "chevron.right")
                        .foregroundColor(selectedTab != 5 ? .black : .gray)
                    })
      
                    .padding(.trailing, 6)
            }
                .padding(.bottom, 20)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4)
           
                HStack{
                    Text("Active Orders")
                        .bold()
                    
                    Spacer()
//                    Text("View All")
//                        .foregroundColor(.primary)
//                        .underline()
                }
                .padding(.vertical)
                .padding(.horizontal)
                NavigationLink(destination: TakerMapView(isShowingDetail : $isShowingDetail),isActive: $isShowingDetail, label: {
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
                })
                .foregroundColor(.primary)
               
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
