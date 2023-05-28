//
//  ContentView.swift
//  FoodNet
//
//  Created by Yashwanthi Manchala on 27/05/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var imageViewModel = ImageAPIViewModel()
    @State var login = false
    @State  var onboarding = true
    @State var giver = 0
    var body: some View {
      
            VStack{
                if (giver == 1) {
                    NavigationView {
                        EarthView()
                            .navigationViewStyle(StackNavigationViewStyle())
                    }
                    
                }
                else {
                    NavigationView {
                    HomeScreenTakerView()
                            .navigationViewStyle(StackNavigationViewStyle())
                }
            }
             
        }
  
        .fullScreenCover(isPresented: $onboarding) {
            OnboardingTabsView(onboarding: $onboarding, giver: $giver, login: $login)
        }
        .fullScreenCover(isPresented: $login) {
           AuthScreen(onboarding: $onboarding, giver: $giver, login: $login)
        }
        .task {
            await imageViewModel.fetchData()
            let _ = print(imageViewModel.images)
        }
        .ignoresSafeArea()
        
    }
    
}
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
