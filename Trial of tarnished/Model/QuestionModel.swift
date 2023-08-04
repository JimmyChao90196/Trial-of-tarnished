//
//  QuestionModel.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import Foundation
import UIKit



enum Quiz: String, CaseIterable {
    case HomeLandscape
    case CombatMethod
    case LeadershipStyle
    case ChallengeApproach
    case GreatestStrength
    case RulerType
    case GreatestWeakness
    case CherishedValue

    var description: String {
        switch self {
        case .HomeLandscape:
            return "Which of these landscapes would you prefer to call home?"
        case .CombatMethod:
            return "What is your preferred method of combat?"
        case .LeadershipStyle:
            return "How would you describe your leadership style?"
        case .ChallengeApproach:
            return "How do you approach a challenge?"
        case .GreatestStrength:
            return "What is your greatest strength?"
        case .RulerType:
            return "What type of ruler are you?"
        case .GreatestWeakness:
            return "What would be your greatest weakness?"
        case .CherishedValue:
            return "What's your most cherished value?"
        }
    }

    var options: [String] {
        switch self {
        case .HomeLandscape:
            return ["A grand castle, teeming with knowledge and wealth.",
                    "A tranquil forest, bathed in the glow of the full moon.",
                    "A desolate wasteland, scarred by falling stars.",
                    "An imposing fortress, steeped in dark omens."]
        case .CombatMethod:
            return ["Cunning trickery and powerful spells.",
                    "Strength and brute force, unleashing the fury of a thousand suns.",
                    "Swift, precise swordsmanship.",
                    "Commanding legions of loyal followers."]
        case .LeadershipStyle:
            return ["Wise and innovative, always seeking progress.",
                    "Mysterious and enigmatic, ruling from the shadows.",
                    "Aggressive and dominant, seizing power through force.",
                    "Inspirational and revered, leading with charisma."]
        case .ChallengeApproach:
            return ["With careful planning and strategy.",
                    "By overpowering it with brute strength.",
                    "By adapting and finding creative solutions.",
                    "By confronting it head on, fearlessly."]
        case .GreatestStrength:
            return ["My unyielding thirst for knowledge.",
                    "My mastery over the forces of nature.",
                    "My unparalleled combat skills.",
                    "My unstoppable willpower and determination."]
        case .RulerType:
            return ["A feared despot, ruling with an iron fist.",
                    "A beloved sovereign, respected by all.",
                    "A warlord, leading through strength and victory.",
                    "An innovator, pushing the boundaries of what is possible."]
        case .GreatestWeakness:
            return ["My ruthless ambition.",
                    "My volatile temper.",
                    "My relentless pursuit of knowledge, at any cost.",
                    "My inability to resist the allure of power."]
        case .CherishedValue:
            return ["Loyalty, the cornerstone of every great kingdom.",
                    "Courage, the heart of every warrior.",
                    "Wisdom, the foundation of every decision.",
                    "Harmony, the essence of a balanced life."]
        }
    }
    
    
    
    var tags: [String] {
        switch self {
        case .HomeLandscape:
            return ["godrickTheGrafted",
                    "rennalaQueenOfTheFullMoon",
                    "starscourgeRadahn",
                    "morgottTheOmenKing"]
        case .CombatMethod:
            return ["rykardLordOfBlasphemy",
                    "starscourgeRadahn",
                    "maleniaBladeOfMiquella",
                    "morgottTheOmenKing"]
        case .LeadershipStyle:
            return ["godrickTheGrafted",
                    "rennalaQueenOfTheFullMoon",
                    "mohgLordOfBlood",
                    "rykardLordOfBlasphemy"]
        case .ChallengeApproach:
            return ["Godrick the Grafted",
                    "mohgLordOfBlood",
                    "maleniaBladeOfMiquella",
                    "starscourgeRadahn"]
        case .GreatestStrength:
            return ["godrickTheGrafted",
                    "rennalaQueenOfTheFullMoon",
                    "maleniaBladeOfMiquella",
                    "rykardLordOfBlasphemy"]
        case .RulerType:
            return ["morgottTheOmenKing",
                    "rennalaQueenOfTheFullMoon",
                    "mohgLordOfBlood",
                    "godrickTheGrafted"]
        case .GreatestWeakness:
            return ["morgottTheOmenKing",
                    "mohgLordOfBlood",
                    "rykardLordOfBlasphemy",
                    "starscourgeRadahn"]
        case .CherishedValue:
            return ["morgottTheOmenKing",
                    "starscourgeRadahn",
                    "godrickTheGrafted",
                    "rennalaQueenOfTheFullMoon"]
        }
    }
    

    
}




