//
//  MenuIconCell.swift
//  IGotIt
//
//  Created by Gregory Johnson on 10/7/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//
import Foundation
import UIKit

class MenuIconCell : UICollectionViewCell
{
    @IBOutlet var iconImage_imgv: UIImageView!
    @IBOutlet var iconLabel_lbl: UILabel!
    
    func displayContent(image: UIImage, label: String)
    {
        iconLabel_lbl.text = label
        iconImage_imgv.image = image
    }
    
}
