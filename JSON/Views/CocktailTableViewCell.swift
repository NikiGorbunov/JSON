//
//  CocktailTableViewCell.swift
//  JSON
//
//  Created by Никита Горбунов on 04.03.2022.
//

import UIKit

class CocktailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var drinkLabel: UILabel!
    
    // MARK: - Public methods
    func configure(with cocktail: Cocktail?) {
        drinkLabel.text = cocktail?.strDrink
    }
}
