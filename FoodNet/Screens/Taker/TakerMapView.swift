//
//  TakerMapView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TakerMapView: View {
    @Binding var isShowingDetail : Bool
    var body: some View {
        ZStack{
            Image("map")
                .resizable()
                .scaledToFill()
            Image("route")
                .resizable()
                .frame(width: 250, height: 300)
                .offset(x: 60, y : -135)
            Image("location_black")
                .resizable()
                .frame(width: 30, height: 40)
            
            VStack{
                Spacer()
                ZStack{
                Rectangle()
                    .frame(height: UIScreen.main.bounds.height * 0.35)
                    .foregroundColor(Color(.white))
                    VStack{
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
                                    Capsule()
                                        .foregroundColor(.primary)
                                        .frame(width: 110, height: 35)
                                        .overlay{
                                            HStack
                                            {
                                                Image(systemName: "alarm")
                                                Text("8 pm")
                                                
                                            }
                                            .foregroundColor(.white)

                                        }
                                        .frame(width: 200, alignment: .leading)
                                        .padding(.top,1)
                                }
        //                    Capsule()
        //                        .foregroundColor(.primary)
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
                        NavigationLink(destination: VerifyOTPTakerView(isShowingDetail : $isShowingDetail), label: {
                            ButtonView(buttonName: "Reached Location", buttonColor: .primary, textColor: .white, height: 42, horizontalPadding: 30)
                                .padding(.top)
                        })
                   
                         
                    }
                    .padding(.trailing, 30)
            }
                
        }
        
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct TakerMapView_Previews: PreviewProvider {
    static var previews: some View {
        TakerMapView(isShowingDetail: .constant(false))
    }
}
