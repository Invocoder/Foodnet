//
//  VerifyOTPTakerView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//


import SwiftUI

struct VerifyOTPTakerView: View {
    @State var name : String = ""
    @StateObject var otpviewModel = OTPDataViewModel(otpNumber: 6)
    let textBoxWidth = UIScreen.main.bounds.width / 8
    let textBoxHeight = UIScreen.main.bounds.width / 8
    let spaceBetweenBoxes: CGFloat = 10
    let paddingOfBox: CGFloat = 1
    var textFieldOriginalWidth: CGFloat {
        (textBoxWidth*6)+(spaceBetweenBoxes*3)+((paddingOfBox*2)*3)
    }
    @State var showSheet : Bool = false
    @Binding var isShowingDetail : Bool

    var body: some View {
        ZStack{
        ScrollView{
            ZStack{
                StretchyRectangleView(cornerRadius: 0, heightpct: 0.075, rectColor: .primary)
                HStack{
                    Text("Verify OTP")
                        .font(.system(size : 20))
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
            }
            VStack{
                VStack{

                        Text("Please enter the OTP, client with share with you")
                            .padding(.top,20)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                    
                    ZStack {
                        HStack {
                            Spacer()
                            otpText(text: otpviewModel.otp1)

                            Spacer()
                            otpText(text: otpviewModel.otp2)

                            Spacer()
                            otpText(text: otpviewModel.otp3)
                            Spacer()

                            otpText(text: otpviewModel.otp4)

                            Spacer()
                            Group {

                                otpText(text: otpviewModel.otp5)

                                Spacer()
                                otpText(text: otpviewModel.otp6)

                                Spacer()
                            }
                        }
                        TextField("", text: $otpviewModel.otpField)
                            .frame(width:  textFieldOriginalWidth, height: textBoxHeight)
                            .disabled(otpviewModel.isTextFieldDisabled)
                            .textContentType(.oneTimeCode)
                            .foregroundColor(.clear)
                            .accentColor(.clear)
                            .background(Color.clear)
                            .keyboardType(.numberPad)


                    }
                    .padding()
                   
                }
               Button(action: {showSheet = true}, label: {
                   ButtonView(buttonName: "Verify", buttonColor: .primary, textColor: .white, height: 50, horizontalPadding: 20)
               })
         
                    .padding(.top, 30)
                  
            }
            
        }
            VStack{
                Spacer()
                Image("Maskgroup")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
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
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)

    }
    private func otpText(text: String) -> some View {
        return Text(text)
            .font(.title)
            .frame(width: textBoxWidth, height: textBoxHeight)
            .foregroundColor(.black)
            .padding(paddingOfBox)
            .overlay( RoundedRectangle(cornerRadius: 12)
                        .frame(width: 50, height: 56)
                        .foregroundColor(.black.opacity(0.05))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.black, lineWidth: 1)
                        ))

    }
    

}

struct VerifyOTPTakerView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyOTPTakerView(isShowingDetail: .constant(false))
    }
}
