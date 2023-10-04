//
//  CategoryCell.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 6.12.2022.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    //MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
