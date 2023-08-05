//
//  QuestionModel.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import Foundation
import UIKit



struct OptionInfo {
    let optionContent: String
    let optionTag: String
}



// Enum Quiz is used to represent different aspects of a character, such as their home landscape, combat method, leadership style, etc.
// It conforms to String, allowing the cases to be easily transformed to and from a string representation.
// It also conforms to CaseIterable, enabling the enumeration of all the cases.
enum Quiz: String, CaseIterable, Hashable {
    // These cases represent different character aspects that are part of the quiz.
    case HomeLandscape
    case CombatMethod
    case LeadershipStyle
    case ChallengeApproach
    case GreatestStrength
    case RulerType
    case GreatestWeakness
    case CherishedValue

    
    
    // Below, each case is mapped to a specific question that will be asked in the quiz.
    // The questions relate to different facets of a character's personality and preferences.
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


    var optionInfo: [OptionInfo] {
        switch self {
        case .HomeLandscape:
            return [
                OptionInfo(optionContent: "A grand castle, teeming with knowledge and wealth.", optionTag: "Godrick The Grafted"),
                OptionInfo(optionContent: "A tranquil forest, bathed in the glow of the full moon.", optionTag: "Rennala Queen of the Full Moon"),
                OptionInfo(optionContent: "A desolate wasteland, scarred by falling stars.", optionTag: "Starscourge Radahn"),
                OptionInfo(optionContent: "An imposing fortress, steeped in dark omens.", optionTag: "Morgott, the Omen King")
            ]
        case .CombatMethod:
            return [
                OptionInfo(optionContent: "Cunning trickery and powerful spells.", optionTag: "Rykard, Lord of Blasphemy"),
                OptionInfo(optionContent: "Strength and brute force, unleashing the fury of a thousand suns.", optionTag: "Starscourge Radahn"),
                OptionInfo(optionContent: "Swift, precise swordsmanship.", optionTag: "Malenia, Blade of Miquella"),
                OptionInfo(optionContent: "Commanding legions of loyal followers.", optionTag: "Morgott, the Omen King")
            ]
        case .LeadershipStyle:
            return [
                OptionInfo(optionContent: "Wise and innovative, always seeking progress.", optionTag: "Godrick The Grafted"),
                OptionInfo(optionContent: "Mysterious and enigmatic, ruling from the shadows.", optionTag: "Rennala Queen of the Full Moon"),
                OptionInfo(optionContent: "Aggressive and dominant, seizing power through force.", optionTag: "Mohg, Lord of Blood"),
                OptionInfo(optionContent: "Inspirational and revered, leading with charisma.", optionTag: "Rykard, Lord of Blasphemy")
            ]
        case .ChallengeApproach:
            return [
                OptionInfo(optionContent: "With careful planning and strategy.", optionTag: "Godrick the Grafted"),
                OptionInfo(optionContent: "By overpowering it with brute strength.", optionTag: "Mohg, Lord of Blood"),
                OptionInfo(optionContent: "By adapting and finding creative solutions.", optionTag: "Malenia, Blade of Miquella"),
                OptionInfo(optionContent: "By confronting it head on, fearlessly.", optionTag: "Starscourge Radahn")
            ]
        case .GreatestStrength:
            return [
                OptionInfo(optionContent: "My unyielding thirst for knowledge.", optionTag: "Godrick the Grafted"),
                OptionInfo(optionContent: "My mastery over the forces of nature.", optionTag: "Rennala Queen of the Full Moon"),
                OptionInfo(optionContent: "My unparalleled combat skills.", optionTag: "Malenia, Blade of Miquella"),
                OptionInfo(optionContent: "My unstoppable willpower and determination.", optionTag: "Rykard, Lord of Blasphemy")
            ]
        case .RulerType:
            return [
                OptionInfo(optionContent: "A feared despot, ruling with an iron fist.", optionTag: "Morgott, the Omen King"),
                OptionInfo(optionContent: "A beloved sovereign, respected by all.", optionTag: "Rennala Queen of the Full Moon"),
                OptionInfo(optionContent: "A warlord, leading through strength and victory.", optionTag: "Mohg, Lord of Blood"),
                OptionInfo(optionContent: "An innovator, pushing the boundaries of what is possible.", optionTag: "Godrick the Grafted")
            ]
        case .GreatestWeakness:
            return [
                OptionInfo(optionContent: "My ruthless ambition.", optionTag: "Morgott, the Omen King"),
                OptionInfo(optionContent: "My volatile temper.", optionTag: "Mohg, Lord of Blood"),
                OptionInfo(optionContent: "My relentless pursuit of knowledge, at any cost.", optionTag: "Rykard, Lord of Blasphemy"),
                OptionInfo(optionContent: "My inability to resist the allure of power.", optionTag: "Starscourge Radahn")
            ]
        case .CherishedValue:
            return [
                OptionInfo(optionContent: "Loyalty, the cornerstone of every great kingdom.", optionTag: "Morgott, the Omen King"),
                OptionInfo(optionContent: "Courage, the heart of every warrior.", optionTag: "Starscourge Radahn"),
                OptionInfo(optionContent: "Wisdom, the foundation of every decision.", optionTag: "Godrick the Grafted"),
                OptionInfo(optionContent: "Harmony, the essence of a balanced life.", optionTag: "Rennala Queen of the Full Moon")
            ]
        }
        
    }
    
    

    
}




