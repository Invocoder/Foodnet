//
//  AuthScreen.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct AuthScreen: View {
    @State var selectedTab = 1
    @Binding var onboarding: Bool
    @Binding var giver: Int
    @Binding var login: Bool
    var body: some View {
        TabView(selection: $selectedTab, content: {
            CreateAccountView(giver: $giver, login: $login, selectedTab : $selectedTab)
                .tag(1)
            VerifyOTPView(giver: $giver, login: $login)
                .tag(2)

        })
        .tabViewStyle(.page(indexDisplayMode: .never))
        .ignoresSafeArea()
    }
}

struct AuthScreen_Previews: PreviewProvider {
    static var previews: some View {
        AuthScreen(onboarding: .constant(false), giver:  .constant(1), login: .constant(false))
    }
}
