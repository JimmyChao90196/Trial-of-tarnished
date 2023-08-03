//
//  ModelBase.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import Foundation
import UIKit


//----------------------------------------------------------------------------------DEMIGOD STRUCT---------------------------------------------------------------------------------

struct Demigod {
    enum Location: String, CaseIterable {
        case godrickTheGrafted = "Stormveil Castle, Limgrave"
        case rennalaQueenOfTheFullMoon = "Raya Lucaria Academy, Liurnia of the Lakes"
        case starscourgeRadahn = "Redmane Castle, Caelid"
        case morgottTheOmenKing = "Leyndell, Altus Plateau"
        case rykardLordOfBlasphemy = "Volcano Manor, Mt Gelmir"
        case maleniaBladeOfMiquella = "Elphael, Brace of the Haligtree"
        case mohgLordOfBlood = "Mohgwyn Dynasty Mausoleum"
    }
    
    enum Nickname: String, CaseIterable, Hashable{
        case godrickTheGrafted = "Godrick the Grafted"
        case rennalaQueenOfTheFullMoon = "Rennala Queen of the Full Moon"
        case starscourgeRadahn = "Starscourge Radahn"
        case morgottTheOmenKing = "Morgott, the Omen King"
        case rykardLordOfBlasphemy = "Rykard, Lord of Blasphemy"
        case maleniaBladeOfMiquella = "Malenia, Blade of Miquella"
        case mohgLordOfBlood = "Mohg, Lord of Blood"
    }
    
    
    enum Introduction:String, CaseIterable {
        case godrickTheGrafted = "Godrick, Stormveil's monarch bold, of lineage golden and ancient told. Branded weak by kin of spite, his strength in grafted limbs takes flight. A dragon's head his arm adorns, in battle's second phase reborn. His knights in golden emblems clad, of war-axe twain, and Serosh, the Regent lad."
        
        case rennalaQueenOfTheFullMoon = "Beneath a gilded sky, young Rennala sought stars, bewitching Raya Lucaria's academy with lunar charms. From humble beginnings to queenly might, she led Glintstone knights, to challenge gold-clad champions in starlit fights. Marika's champion, Radagon, crossed her path in strife, till love supplanted war, and bound them man and wife. When Radagon departed, Rennala's heart did rend, her academy rebelled, her rule came to an end. Clutching Radagon's gift, the amber egg, she delved into rebirth's grim art, her sanity dissolved."
        
        case starscourgeRadahn =
        "Born of Radagon and Rennala, Radahn, lion-armored, idolized Elden Lord Godfrey. Heir to fiery hair and demigod stature, he outgrew Leonard, his faithful steed, and sought gravitation's magic in Sellia's realm. Radahn, Starscourge shattered celestial cycles, his blades marked with gravity's crest. His Redmanes, fearless knights, stood with him, loyal in every quest."
        
        
        case morgottTheOmenKing = "Born of golden lineage, Morgott, fiend confined, renounced his blood, his curse, in blade and staff enshrined. Amidst the shattered Ring, claimed he Leyndell's throne, swearing to protect the Erdtree, alone. As Margit, Fell Omen, he laid champions low, yet as the Veiled Monarch, his reign cast a shadow. Warned he of the Erdtree's wrath, fading on the throne, a warning left unheeded, his fate, by Godfrey known."
        
        
        case rykardLordOfBlasphemy = "In aftermath of the Shattered Ring, Rykard, aggrieved, waged blasphemous war against the Erdtree, deceived. Fed himself to Gelmir's serpent, his ambition turned depraved, once noble lord to gluttonous beast, his honour waived. Even in death, he boasted, A serpent never dies, while Tanith, heartbroken, devoured his corpse beneath the skies."
        
        case maleniaBladeOfMiquella =
        "Born of Marika and Radagon, Malenia and Miquella were the Empyreans afflicted. From Scarlet Rot emerged Malenia, her limbs lost, but in swordsmanship, she was gifted. Wars waged, battles won, until the Rot unleashed, her victory sunken. Coma-ridden, in Haligtree, she awaits her brother, while Rot's infection swelled greater."
        
        case mohgLordOfBlood =
        "In lineage golden, Mohg and Morgott birthed, Omen-born twins 'neath Leyndell's earth. Royal blood, uncut horns, Mohg embraced his curse, found fire in blood from a Mother, diverse. Lord of Blood, he claimed, while wars raged above, and from Haligtree's heart, his brother's form he stole, in twisted love. His dream - a god-ruler, his brother to be, while he'd be consort, in dark monarchy."
    }
    
    let nickname: Nickname
    let location: String
    let introduction: String
    
    init(demigod: Nickname) {
        self.nickname = demigod
        
        let index = Nickname.allCases.firstIndex(of: demigod) ?? 0
        
        self.location = Location.allCases[index].rawValue
        self.introduction = Introduction.allCases[index].rawValue
        
    }
    

    /*func printInformation() {
        print("\(nickname.rawValue): Found at \(location), Intro: \(introduction)")
    }*/
 
    
    
}





