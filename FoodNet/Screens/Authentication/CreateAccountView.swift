//
//  CreateAccountView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct CreateAccountView: View {
    @State var name : String = ""
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Maskgroup")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
            }
        ScrollView{
            ZStack{
                StretchyRectangleView(cornerRadius: 0, heightpct: 0.075, rectColor: .green)
                HStack{
                    Text("Create my account")
                        .font(.system(size : 20))
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
            }
            VStack{
                VStack{
                    Text("Name")
                        .padding(.top,20)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .frame(height: 45)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    Text("Contact Number")
                        .padding(.top,20)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .frame(height: 45)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    Text("Email")
                        .padding(.top,20)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .frame(height: 45)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    VStack{
                        Text("NGO Unique ID")
                            .padding(.top,20)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        TextField("", text: $name)
                            .padding()
                            .frame(height: 45)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                        HStack{
                            Spacer()
                            Text("Verify Now")
                                .padding(.horizontal)
                                .foregroundColor(.green)
                                .underline()
                        }
                    }
                    
                    Text("Address")
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .frame(height: 75)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
               
                ButtonView(buttonName: "Join The Revolution!", buttonColor: .green, textColor: .white, height: 50, horizontalPadding: 20)
                    .padding(.top, 30)
            }
            
        
            
           
            }
    }
        .edgesIgnoringSafeArea(.bottom)
    }
    
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
