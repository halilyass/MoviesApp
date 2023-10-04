//
//  ViewController.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 6.12.2022.
//

import UIKit
import Alamofire

class HomeController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    var categoriesList = [Categories]()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
        
    }
    
    //MARK: - API
    
    func getCategories() {
        
    }
    
    //MARK: - Helpers
    
    func configureTableView() {
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
    }


}

//MARK: - UITableViewDelegate,UITableViewDataSource

extension HomeController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categories = categoriesList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        
        cell.categoryLabel.text = categories.kategori_ad
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toMovies", sender: indexPath.row)
    }
}

