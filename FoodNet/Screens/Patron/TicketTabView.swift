//
//  TicketTabView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 28/05/2023.
//

import SwiftUI

struct TicketTabView: View {
    @State var selectedTab = 1
    var body: some View {
        HStack{
            Button(action: {
                if selectedTab != 1 {
                    selectedTab = selectedTab - 1
                }
            }, label: {
                Image(systemName: "chevron.left")
                .foregroundColor(selectedTab != 1 ? .black : .gray)

            })
                .padding(.leading, 2)
            TabView(selection: $selectedTab){
                TicketDetailView()
                    .tag(1)
                TicketDetailView()
                    .tag(2)
                TicketDetailView()
                    .tag(3)
                TicketDetailView()
                    .tag(4)
                TicketDetailView()
                    .tag(5)
            }
            .tabViewStyle(.page)
            Button(action: {
                if selectedTab != 5 {
                    selectedTab = selectedTab + 1
                }
            }, label: {
                Image(systemName: "chevron.right")
                .foregroundColor(selectedTab != 5 ? .black : .gray)
                .padding(.trailing, 2)
            })
             
        }
  
    }
}

struct TicketTabView_Previews: PreviewProvider {
    static var previews: some View {
        TicketTabView()
    }
}
