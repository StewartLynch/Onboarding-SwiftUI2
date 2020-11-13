//
//  OnboardSet.swift
//  Onboarding
//
//  Created by Stewart Lynch on 2020-06-27.
//

import UIKit

class OnboardSet {
    private(set) var cards: [OnboardCard] = []
    private(set) var width: CGFloat = 350
    private(set) var height: CGFloat = 350
    
    func dimensions(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    func newCard(title: String, image: String, text: String) {
        cards.append(OnboardCard(title: title, image: image, text: text))
    }
}

extension OnboardSet {
    static func previewSet() -> OnboardSet {
        let onboardSet = OnboardSet()
        onboardSet.newCard(title: "Login",
                           image: "Login",
                           text: "Enter your credentials and log in.")
        onboardSet.newCard(title: "Update Profile",
                           image: "Profile",
                           text: "Make sure you update your profile and avatar.")
        onboardSet.newCard(title: "Participate",
                           image: "Engage",
                           text: "Engage with others online.  Join the community.")
        onboardSet.newCard(title: "Leave Feedback",
                           image: "LeaveFeedback",
                           text: "We want to hear from you so please let us know what you think.")
        onboardSet.newCard(title: "Your Data",
                           image: "Analytics",
                           text: "Your data is your own.  View your stats at any time.")
        return onboardSet
    }
}
