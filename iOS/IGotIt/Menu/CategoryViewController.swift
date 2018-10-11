//
//  CategoryViewController.swift
//  IGotIt
//
//  Created by Gregory Johnson on 10/9/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var categoryTitle_lbl: UILabel!
    @IBOutlet weak var back_btn: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        categoryTitle_lbl.text = categoryPage.category
    }

    @IBAction func backPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    
}
