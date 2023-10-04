//
//  Categories.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 8.12.2022.
//

import Foundation

class Categories: Codable {
    var kategori_id: String?
    var kategori_ad: String?
    
    init(kategori_id: String?, kategori_ad: String?) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
