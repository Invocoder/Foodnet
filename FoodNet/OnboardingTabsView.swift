//
//  OnboardingTabsView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct OnboardingTabsView: View {
    @State var selectedTab = 1
    @Binding var onboarding: Bool
    @Binding var giver: Int
    @Binding var login: Bool
    var body: some View {
        TabView(selection: $selectedTab, content: {
            OnboardingView(giver: $giver, login: $login)
                .tag(1)
            OnboardingView2(giver: $giver, login: $login)
                .tag(2)

        })
        .tabViewStyle(.page(indexDisplayMode: .never))
        .onChange(of: giver, perform: { _ in
            onboarding = false
            login = true
        })
    }
}

struct OnboardingTabsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTabsView(onboarding: .constant(false), giver:  .constant(1), login: .constant(false))
    }
}
