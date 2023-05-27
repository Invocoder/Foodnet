//
//  Helper Views.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI


struct StretchyRectangleView: View {
    private let kHeaderHeight: CGFloat = 300
    var cornerRadius: CGFloat
    var heightpct: CGFloat
    var rectColor: Color
    var body: some View {
        GeometryReader { (geometry: GeometryProxy) in
            if geometry.frame(in: .global).minY <= 0 {
                Rectangle()
                    .foregroundColor(rectColor)
                    .cornerRadius(cornerRadius, corners:  [.bottomRight, .bottomLeft]
)
                    .frame(width: geometry.size.width,
                           height: UIScreen.main.bounds.height * heightpct)
            } else {
                Rectangle()
                    .foregroundColor(rectColor)
                    .cornerRadius(cornerRadius, corners: [.bottomLeft, .bottomRight])
                    .offset(y: -geometry.frame(in: .global).minY)
                    .frame(width: geometry.size.width,
                           height: UIScreen.main.bounds.height * heightpct
                            + geometry.frame(in: .global).minY)
            }
        }.frame(maxHeight: kHeaderHeight)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
struct ButtonView: View {
    var buttonName: String
    var buttonColor: Color
    var accentColor: Color = .accentColor
    var textColor: Color
    var height: CGFloat
    var horizontalPadding: CGFloat
    var imageName: String = ""
    var imgwidth: CGFloat = 25
    var imgheight: CGFloat = 25
    var isSystemName = false
    var borderColor: Color = .green
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .foregroundColor(buttonColor)
                .frame(height: height)
                .padding(.horizontal, horizontalPadding)
            HStack {
                if imageName != "" {
                    if isSystemName {
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: imgwidth, height: imgheight)
                            .accentColor(accentColor)
                    } else {
                        Image(imageName)
                            .resizable()
                            .frame(width: imgwidth, height: imgheight)
                    }
                }
                Text(buttonName)
                    .font(.system(size: 20))
                    .foregroundColor(textColor)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(borderColor, lineWidth: 0.5)
                .padding(.horizontal, horizontalPadding)
        )
        .shadow(radius: 4)

    }
    
}
import SwiftUI

class OTPDataViewModel: ObservableObject {
    var otpNumber: Int

    init(otpNumber: Int) {
        self.otpNumber = otpNumber
    }

    @Published var otpField = "" {
        didSet {
            guard otpField.count <= otpNumber,
                  otpField.last?.isNumber ?? true else {
                otpField = oldValue
                return
            }
        }
    }
    var otp1: String {
        guard otpField.count >= 1 else {
            return ""
        }
        return String(Array(otpField)[0])
    }
    var otp2: String {
        guard otpField.count >= 2 else {
            return ""
        }
        return String(Array(otpField)[1])
    }
    var otp3: String {
        guard otpField.count >= 3 else {
            return ""
        }
        return String(Array(otpField)[2])
    }
    var otp4: String {
        guard otpField.count >= 4 else {
            return ""
        }
        return String(Array(otpField)[3])
    }

    var otp5: String {
        guard otpField.count >= 5 else {
            return ""
        }
        return String(Array(otpField)[4])
    }

    var otp6: String {
        guard otpField.count >= 6 else {
            return ""
        }
        return String(Array(otpField)[5])
    }
    @Published var isTextFieldDisabled = false
    var successCompletionHandler: (() -> Void)?

    @Published var showResendText = false

}

struct ChipModel: Identifiable {
    @State var isSelected: Bool
    let id = UUID()
    let systemImage: String
    let titleKey: LocalizedStringKey
}
class ChipsViewModel: ObservableObject {
    @Published var chipArray: [ChipModel] = [
        ChipModel(isSelected: false, systemImage: "checkmark.circle", titleKey: "Liquid"),
        ChipModel(isSelected: false, systemImage: "checkmark.circle", titleKey: "Has Gravy"),
        ChipModel(isSelected: false, systemImage: "checkmark.circle", titleKey: "Dry"),
        ChipModel(isSelected: false, systemImage: "checkmark.circle", titleKey: "Non-Veg"),
    ]
}
struct ChipView : View {
    let systemImage: String
    let titleKey: LocalizedStringKey
    @State var isSelected: Bool
    var body: some View {
        HStack(spacing: 4) {
            Image.init(systemName: systemImage).font(.callout)
            Text(titleKey).font(.callout).lineLimit(1)
        }
        .padding(.vertical, 4)
        .padding(.leading, 4)
        .padding(.trailing, 10)
        .foregroundColor(isSelected ? .white : .green)
        .background(isSelected ? Color.green : Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.green, lineWidth: 1.5)
            
        ).onTapGesture {
            isSelected.toggle()
        }
    }
}
struct ChipContainerView: View {
    @ObservedObject var viewModel = ChipsViewModel()
    var body: some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
        return GeometryReader { geo in
            ZStack(alignment: .topLeading, content: {
                ForEach(viewModel.chipArray) { data in
                    ChipView(systemImage: data.systemImage,
                             titleKey: data.titleKey,
                             isSelected: data.isSelected)
                    .padding(.all, 5)
                    .alignmentGuide(.leading) { dimension in
                        if (abs(width - dimension.width) > geo.size.width) {
                            width = 0
                            height -= dimension.height
                        }
                        let result = width
                        if data.id == viewModel.chipArray.last!.id {
                            width = 0
                        } else {
                            width -= dimension.width
                        }
                        return result
                    }
                    .alignmentGuide(.top) { dimension in
                        let result = height
                        if data.id == viewModel.chipArray.last!.id {
                            height = 0
                        }
                        return result
                    }
                }
            })
            
        }
    }
}



struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
 
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
 
            configuration.label
 
        }
    }
}


extension ToggleStyle where Self == CheckboxToggleStyle {
 
    static var checkmark: CheckboxToggleStyle { CheckboxToggleStyle() }
}




