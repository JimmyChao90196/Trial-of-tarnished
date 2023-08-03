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
            return ["A grand castle, teeming with knowledge and wealth. (Godrick the Grafted)",
                    "A tranquil forest, bathed in the glow of the full moon. (Rennala Queen of the Full Moon)",
                    "A desolate wasteland, scarred by falling stars. (Starscourge Radahn)",
                    "An imposing fortress, steeped in dark omens. (Morgott, the Omen King)"]
        case .CombatMethod:
            return ["Cunning trickery and powerful spells. (Rykard, Lord of Blasphemy)",
                    "Strength and brute force, unleashing the fury of a thousand suns. (Starscourge Radahn)",
                    "Swift, precise swordsmanship. (Malenia, Blade of Miquella)",
                    "Commanding legions of loyal followers. (Morgott, the Omen King)"]
        case .LeadershipStyle:
            return ["Wise and innovative, always seeking progress. (Godrick the Grafted)",
                    "Mysterious and enigmatic, ruling from the shadows. (Rennala Queen of the Full Moon)",
                    "Aggressive and dominant, seizing power through force. (Mohg, Lord of Blood)",
                    "Inspirational and revered, leading with charisma. (Rykard, Lord of Blasphemy)"]
        case .ChallengeApproach:
            return ["With careful planning and strategy. (Godrick the Grafted)",
                    "By overpowering it with brute strength. (Mohg, Lord of Blood)",
                    "By adapting and finding creative solutions. (Malenia, Blade of Miquella)",
                    "By confronting it head on, fearlessly. (Starscourge Radahn)"]
        case .GreatestStrength:
            return ["My unyielding thirst for knowledge. (Godrick the Grafted)",
                    "My mastery over the forces of nature. (Rennala Queen of the Full Moon)",
                    "My unparalleled combat skills. (Malenia, Blade of Miquella)",
                    "My unstoppable willpower and determination. (Rykard, Lord of Blasphemy)"]
        case .RulerType:
            return ["A feared despot, ruling with an iron fist. (Morgott, the Omen King)",
                    "A beloved sovereign, respected by all. (Rennala Queen of the Full Moon)",
                    "A warlord, leading through strength and victory. (Mohg, Lord of Blood)",
                    "An innovator, pushing the boundaries of what is possible. (Godrick the Grafted)"]
        case .GreatestWeakness:
            return ["My ruthless ambition. (Morgott, the Omen King)",
                    "My volatile temper. (Mohg, Lord of Blood)",
                    "My relentless pursuit of knowledge, at any cost. (Rykard, Lord of Blasphemy)",
                    "My inability to resist the allure of power. (Starscourge Radahn)"]
        case .CherishedValue:
            return ["Loyalty, the cornerstone of every great kingdom. (Morgott, the Omen King)",
                    "Courage, the heart of every warrior. (Starscourge Radahn)",
                    "Wisdom, the foundation of every decision. (Godrick the Grafted)",
                    "Harmony, the essence of a balanced life. (Rennala Queen of the Full Moon)"]
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




