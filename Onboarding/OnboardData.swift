//
//  OnboardData.swift
//  Onboarding
//
//  Created by Stewart Lynch on 2020-06-27.
//

import UIKit

enum OnboardData {
    static func buildSet(width:CGFloat = 350, height: CGFloat = 350) -> OnboardSet {
        let onboardSet = OnboardSet()
        onboardSet.dimensions(width: width, height: height)
        onboardSet.newCard(title: "Login", image: "Login", text: "Enter your credentials and log in.")
        onboardSet.newCard(title: "Update Profile", image: "Profile", text: "Make sure you update your profile and avatar.")
        onboardSet.newCard(title: "Participate", image: "Engage", text: "Engage with others online.  Join the community.")
        onboardSet.newCard(title: "Leave Feedback", image: "LeaveFeedback", text: "We want to hear from you so please let us know what you think.")
        onboardSet.newCard(title: "Your Data", image: "Analytics", text: "Your data is your own.  View your stats at any time.")
        return onboardSet
    }
}
