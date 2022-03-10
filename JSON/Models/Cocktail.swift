//
//  Cocktail.swift
//  JSON
//
//  Created by Никита Горбунов on 02.03.2022.
//

import Foundation

struct Drink: Decodable {
    let drinks: [Cocktail]
}

struct Cocktail: Decodable {
    var strDrink = ""
    let strAlcoholic: String
    let strGlass: String
    let strInstructions: String
    let strDrinkThumb: String
    
}



enum Link: String {
    case cocktailApi = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
}
