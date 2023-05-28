//
//  PatronHomeScreen.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct PatronHomeScreen: View {
    @State var name : String = ""
    @StateObject var viewModel = ChipsViewModel()
    @State private var isChecked = false
    @State private var currentDate = Date()
    @Binding var isShowingDetail : Bool
    var units = ["kg", "L"]
    @State private var selectedUnit = "Red"
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
                    Text("Create my Listing")
                        .font(.system(size : 20))
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
            }
            VStack{
                VStack{
                    Text("Food Title")
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
                    Text("Description")
                        .padding(.top,10)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .frame(height: 100)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    Text("Type of Food")
                        .padding(.top,10)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    ChipContainerView(viewModel: viewModel)
                        .padding(.horizontal)
                        .padding(.bottom, 55)
                    
                    Text("Quantity")
                        .padding(.top,10)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    TextField("", text: $name)
                        .padding()
                        .keyboardType(.numberPad)
                        .frame(height: 45)
                        .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        .overlay(
                            HStack{
                                Spacer()
                                Picker("unit", selection: $selectedUnit) {
                                    ForEach(units, id: \.self) {
                                        Text($0)
                                    }
                                }
                            }
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    Group{
                        Text("Collect Before")
                            .padding(.top,10)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        TextField("", text: $name)
                            .padding()
                            .keyboardType(.numberPad)
                            .frame(height: 45)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                            .overlay(
                                HStack{
                                    DatePicker("", selection: $currentDate, displayedComponents: [.date, .hourAndMinute])
                                        .labelsHidden()
                                    Spacer()
                                }
                            )
                        HStack{
                            Toggle(isOn: $isChecked, label: {      Text("I assure that the food quality and hygiene has maintained ")})
                                .toggleStyle(.checkmark)
                                .padding()
                            Spacer()
                        }
                    }
                }
                NavigationLink(destination: ProgressView(isShowingDetail : $isShowingDetail) , label:  {ButtonView(buttonName: "Submit", buttonColor: .green, textColor: .white, height: 50, horizontalPadding: 20)})
                .padding(.top, 10)
               
            }
            
        }
        .navigationBarBackButtonHidden(true)
          
    }
    }}

struct PatronHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        PatronHomeScreen( isShowingDetail: .constant(false))
    }
}
