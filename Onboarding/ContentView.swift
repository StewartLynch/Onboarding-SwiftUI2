//
//  ContentView.swift
//  Onboarding
//
//  Created by Stewart Lynch on 2020-06-27.
//

import SwiftUI

struct ContentView: View {
    @State private var showOnBoarding = false
    @AppStorage("ObboardBeenViewed") var hasOnboarded = false
    var onboardSet = OnboardData.buildSet()
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("Teamwork")
                        .resizable()
                        .scaledToFit()
                    Text("This is a demo of Onboarding Screens and more stuff too!")
                }
                .padding(.horizontal)
                .edgesIgnoringSafeArea(.bottom)
                .disabled(showOnBoarding)
                .blur(radius: showOnBoarding ? /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/ : 0)
                .navigationTitle("Onboarding Screens")
                if showOnBoarding {
                    OnboardingScreens(isPresenting: $showOnBoarding, onboardSet: onboardSet)
                }
            }
            .onAppear {
                hasOnboarded = false // only here for testing
                if !hasOnboarded {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation {
                            showOnBoarding.toggle()
                            hasOnboarded = true
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
