//
//  TicketTabView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TicketTabView: View {
    var body: some View {
        TabView{
            TicketDetailView()
            TicketDetailView()
            TicketDetailView()
            TicketDetailView()
            TicketDetailView()
        }
        .tabViewStyle(.page)
    }
}

struct TicketTabView_Previews: PreviewProvider {
    static var previews: some View {
        TicketTabView()
    }
}
