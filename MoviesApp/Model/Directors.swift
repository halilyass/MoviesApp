//
//  Directors.swift
//  MoviesApp
//
//  Created by Halil YAŞ on 8.12.2022.
//

import Foundation

class Directors:Codable {
    var yonetmen_id: String?
    var yonetmen_ad: String?
    
    init(yonetmen_id: String?, yonetmen_ad: String?) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
