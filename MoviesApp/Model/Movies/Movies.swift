//
//  Movies.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 8.12.2022.
//

import Foundation

class Movies: Codable {
    var film_id: String?
    var film_ad: String?
    var film_yil: String?
    var film_resim: String?
    var kategori: Categories?
    var yonetmen: Directors?
    
    init(film_id: String?, film_ad: String?, film_yil: String?, film_resim: String?, kategori: Categories?, yonetmen: Directors?) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.film_resim = film_resim
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}
