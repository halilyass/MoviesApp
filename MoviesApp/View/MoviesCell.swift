//
//  MoviesCell.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 8.12.2022.
//

import UIKit

protocol MoviesCellDelegate: class {
    func addBasket(indexpath: IndexPath)
}

class MoviesCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    weak var delegate: MoviesCellDelegate?
    var indexpath:IndexPath?
    
    @IBOutlet weak var moviesImageView: UIImageView!
    @IBOutlet weak var moviesNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    //MARK: - Actions
    
    @IBAction func addBasket(_ sender: Any) {
        delegate?.addBasket(indexpath: indexpath!)
    }
}
