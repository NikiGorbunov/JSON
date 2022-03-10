//
//  CocktailTableViewController.swift
//  JSON
//
//  Created by Никита Горбунов on 02.03.2022.
//

import UIKit

class CocktailTableViewController: UITableViewController {
    
    // Mark: - Private properties
    private var drink: Drink?
    private var cocktails: Cocktail?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData(from: Link.cocktailApi.rawValue)
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drink?.drinks.count ?? 0
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CocktailTableViewCell
        let recipe = drink?.drinks[indexPath.row]
        cell.configure(with: recipe)
        
        return cell
    }
    

   

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let cocktail = drink?.drinks[indexPath.row]
        let recipeVC = segue.destination as! RecipeViewController
        recipeVC.cocktail = cocktail
        
    }
    
    private func fetchData(from url: String?) {
        NetworkManager.shared.fetchData(from: url) { drink in
            self.drink = drink
            self.tableView.reloadData()
        }
    }
}
