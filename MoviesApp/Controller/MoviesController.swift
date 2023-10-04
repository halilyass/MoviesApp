//
//  MoviesController.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 8.12.2022.
//

import UIKit

class MoviesController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var moviesCollectionView: UICollectionView!
    
    var moviesList = [Movies]()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureMovies()

    }
    
    //MARK: - Actions
    
    //MARK: - Helpers
    
    func configureMovies() {
        
        moviesCollectionView.dataSource = self
        moviesCollectionView.delegate = self
        
        let design : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.moviesCollectionView.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let cellWidth = (width - 30) / 2
        
        design.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.85)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        
        moviesCollectionView.collectionViewLayout = design
    }
    
}

//MARK: - UICollectionViewDelegate,UICollectionViewDataSource

extension MoviesController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = moviesList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoviesCell", for: indexPath) as! MoviesCell
        
        cell.moviesNameLabel.text = movie.film_ad
        cell.priceLabel.text = "24.99 TL"
        cell.moviesImageView.image = UIImage(named: movie.film_resim!)
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        
        cell.delegate = self
        cell.indexpath = indexPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetails", sender: indexPath.row)
    }
    
}

//MARK: - MoviesCellDelegate

extension MoviesController: MoviesCellDelegate {
    func addBasket(indexpath: IndexPath) {
        print("DEBUG: Sepete Eklendi...")
    }
}
