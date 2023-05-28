//
//  ProgressView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct ProgressView: View {
    @Binding var isShowingDetail : Bool
    var body: some View {
        ZStack{
                Image("bg")
            VStack{
                ScrollView{
                    VStack{
                        Image("order")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.35)
                            .padding(.top, 50)
                        Spacer()
                        Text("Connecting to the right one!")
                            .font(.title2)
                            .bold()
                        Text("Request Id- 214145")
                            .padding(1)
                            .foregroundColor(.gray)
                    }
                }
            }
            ZStack{
                VStack{
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: UIScreen.main.bounds.height * 0.45)
                            .foregroundColor(Color(.systemGray6))
                        ProgressDetailView(isShowingDetail: $isShowingDetail)
                            .padding(.bottom,75)
                    }
                }
             
                    VStack{
                        Spacer()
                        ZStack{
                        Rectangle()
                            .frame(height: UIScreen.main.bounds.height * 0.1)
                            .foregroundColor(.primary)
                            HStack{
                                Image("profile")
                                    .resizable()
                                    .frame(width: 45, height: 45)
                                VStack{
                                    Text("Rahat NGO")
                                        .bold()
                                        .font(.title3)
                                    Text("Id- 214145")
                                }
                                .padding(.horizontal, 5)
                                .foregroundColor(.white)
                                Spacer()
                                Image("call")
                                    .resizable()
                                    .frame(width: 45, height: 45)
                                
                    }
                            .padding(.horizontal, 20)
                          
                   
                    }
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView( isShowingDetail: .constant(false))
    }
}
