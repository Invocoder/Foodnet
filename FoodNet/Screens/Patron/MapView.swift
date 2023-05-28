//
//  MaoView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct MapView: View {
    @State var showSheet : Bool = false
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
                    .frame(height: UIScreen.main.bounds.height * 0.1)
                    .foregroundColor(.primary)
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .padding(.leading)
                        VStack{
                            Text("Rahat NGO")
                                .bold()
                                .font(.title3)
                            Text("Id- 214145")
                        }
                        .padding(.horizontal, 5)
                        .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            showSheet = true
                        }, label: {
                            Image("call")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.trailing, 80)
                        })
                    
                        
            }
           
            }
        }
        
        }
        .sheet(isPresented: $showSheet, content: {
            SuccessPageView()
        })
        .onChange(of: showSheet, perform: { _ in
            if showSheet == false {
               isShowingDetail = false
            }
        })
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView( isShowingDetail: .constant(false))
    }
}
