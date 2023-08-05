// Importing necessary frameworks
import Foundation
import UIKit

//----DEMIGOD STRUCT---------------------------------------------------------------------------------

// Defining a new structure named DemigodInfo
struct DemigodInfo {
    
    // Defining an enumeration to represent the various nicknames of demigods
    // CaseIterable allows us to get a collection of all the cases,
    // Hashable allows us to use this enum in a Set or as a Dictionary key.
    enum Nickname: String, CaseIterable, Hashable {
        // Defining each case in the enumeration
        case godrickTheGrafted = "Godrick the Grafted"
        case rennalaQueenOfTheFullMoon = "Rennala Queen of the Full Moon"
        case starscourgeRadahn = "Starscourge Radahn"
        case morgottTheOmenKing = "Morgott, the Omen King"
        case rykardLordOfBlasphemy = "Rykard, Lord of Blasphemy"
        case maleniaBladeOfMiquella = "Malenia, Blade of Miquella"
        case mohgLordOfBlood = "Mohg, Lord of Blood"
    }

    // Defining a computed property for bossImage.
    // This switch statement will return different boss images values based on the value of resultDemigod.
    var bossImage:String{
        switch resultDemigod {
        case .godrickTheGrafted:
            return "Godrick"
        case .rennalaQueenOfTheFullMoon:
            return "Rennala"
        case .starscourgeRadahn:
            return "Starscourge"
        case .morgottTheOmenKing:
            return "Morgott"
        case .rykardLordOfBlasphemy:
            return "Rykard"
        case .maleniaBladeOfMiquella:
            return "Melania"
        case .mohgLordOfBlood:
            return "Mohg"
        }
    }
    
    // Similar to bossImage, this computed property provides different titles based on the value of resultDemigod.
    var titles:String { return "You possess the greate rune of \(resultDemigod.rawValue)"}
    
    
    
    // Another computed property, this one provides different URL strings based on the value of resultDemigod.
    var Urls:String{
        switch resultDemigod {
        case .godrickTheGrafted:
            return "https://eldenring.wiki.fextralife.com/Godrick+the+Grafted"
        case .rennalaQueenOfTheFullMoon:
            return "https://eldenring.wiki.fextralife.com/Rennala+Queen+of+the+Full+Moon"
        case .starscourgeRadahn:
            return "https://eldenring.wiki.fextralife.com/Starscourge+Radahn"
        case .morgottTheOmenKing:
            return "https://eldenring.wiki.fextralife.com/Margit,+The+Fell+Omen"
        case .rykardLordOfBlasphemy:
            return "https://eldenring.wiki.fextralife.com/Rykard,+Lord+of+Blasphemy"
        case .maleniaBladeOfMiquella:
            return "https://eldenring.wiki.fextralife.com/Malenia+Blade+of+Miquella"
        case .mohgLordOfBlood:
            return "https://eldenring.wiki.fextralife.com/Mohg,+Lord+of+Blood"
        }
    }

    // A computed property that provides different rune pictures based on the value of resultDemigod.
    var runePictures:String{
        switch resultDemigod {
        case .godrickTheGrafted:
            return "greatRune_01"
        case .rennalaQueenOfTheFullMoon:
            return "greatRune_02"
        case .starscourgeRadahn:
            return "greatRune_03"
        case .morgottTheOmenKing:
            return "greatRune_04"
        case .rykardLordOfBlasphemy:
            return "greatRune_05"
        case .maleniaBladeOfMiquella:
            return "greatRune_06"
        case .mohgLordOfBlood:
            return "greatRune_07"
        }
    }

    // This computed property provides different descriptions based on the value of resultDemigod.
    var description:String {
        switch resultDemigod{
        case .godrickTheGrafted :
            return "Godrick, Stormveil's monarch bold, of lineage golden and ancient told. Branded weak by kin of spite, his strength in grafted limbs takes flight. A dragon's head his arm adorns, in battle's second phase reborn. His knights in golden emblems clad, of war-axe twain, and Serosh, the Regent lad."
        case .rennalaQueenOfTheFullMoon :
            return "Beneath a gilded sky, young Rennala sought stars, bewitching Raya Lucaria's academy with lunar charms. From humble beginnings to queenly might, she led Glintstone knights, to challenge gold-clad champions in starlit fights. Marika's champion, Radagon, crossed her path in strife, till love supplanted war, and bound them man and wife. When Radagon departed, Rennala's heart did rend, her academy rebelled, her rule came to an end. Clutching Radagon's gift, the amber egg, she delved into rebirth's grim art, her sanity dissolved."
        case .starscourgeRadahn :
            return "Born of Radagon and Rennala, Radahn, lion-armored, idolized Elden Lord Godfrey. Heir to fiery hair and demigod stature, he outgrew Leonard, his faithful steed, and sought gravitation's magic in Sellia's realm. Radahn, Starscourge shattered celestial cycles, his blades marked with gravity's crest. His Redmanes, fearless knights, stood with him, loyal in every quest."
        case .morgottTheOmenKing :
            return "Born of golden lineage, Morgott, fiend confined, renounced his blood, his curse, in blade and staff enshrined. Amidst the shattered Ring, claimed he Leyndell's throne, swearing to protect the Erdtree, alone. As Margit, Fell Omen, he laid champions low, yet as the Veiled Monarch, his reign cast a shadow. Warned he of the Erdtree's wrath, fading on the throne, a warning left unheeded, his fate, by Godfrey known."
        case .rykardLordOfBlasphemy :
            return "In aftermath of the Shattered Ring, Rykard, aggrieved, waged blasphemous war against the Erdtree, deceived. Fed himself to Gelmir's serpent, his ambition turned depraved, once noble lord to gluttonous beast, his honour waived. Even in death, he boasted, A serpent never dies, while Tanith, heartbroken, devoured his corpse beneath the skies."
        case .maleniaBladeOfMiquella :
            return "Born of Marika and Radagon, Malenia and Miquella were the Empyreans afflicted. From Scarlet Rot emerged Malenia, her limbs lost, but in swordsmanship, she was gifted. Wars waged, battles won, until the Rot unleashed, her victory sunken. Coma-ridden, in Haligtree, she awaits her brother, while Rot's infection swelled greater."
        case .mohgLordOfBlood :
            return "In lineage golden, Mohg and Morgott birthed, Omen-born twins 'neath Leyndell's earth. Royal blood, uncut horns, Mohg embraced his curse, found fire in blood from a Mother, diverse. Lord of Blood, he claimed, while wars raged above, and from Haligtree's heart, his brother's form he stole, in twisted love. His dream - a god-ruler, his brother to be, while he'd be consort, in dark monarchy."
        }
    }

    // This is the nickname (of the enum type Nickname) for the current instance of the struct.
    var resultDemigod: Nickname
    
    // This is the initializer for the DemigodInfo struct. It takes a Nickname as argument and assigns it to resultDemigod.
    init(_ resultDemigod:Nickname) {
        self.resultDemigod = resultDemigod
    }
}
