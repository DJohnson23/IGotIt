//
//  MenuViewController.swift
//  IGotIt
//
//  Created by Gregory Johnson on 10/7/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    @IBOutlet weak var menuCollection_cv: UICollectionView!
    
    var categories_str = ["Drinks", "Snacks", "Dinner/Dessert", "Breakfast", "Necessities", "Smoke Community", "College Life", "For the Ladies", "School Supplies"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return categories_str.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = menuCollection_cv.dequeueReusableCell(withReuseIdentifier: "menuIconCell", for: indexPath) as! MenuIconCell
        
        cell.displayContent(image: UIImage(named: "Circle")!, label: categories_str[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        categoryPage.category = categories_str[indexPath.item]
        performSegue(withIdentifier: "menuToCategory", sender: self)
    }

}
