//
//  NetworkManager.swift
//  ImgFlipApp
//
//  Created by Nikolai Maksimov on 03.07.2022.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    let url = "https://api.imgflip.com/get_memes"
    
    func fetchData(_ completion: @escaping (Memes) -> Void) {
        
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error descroption")
                return
            }
            do {
                let memes = try JSONDecoder().decode(Memes.self, from: data)
                completion(memes)
            } catch let error {
                print(error.localizedDescription)
            }

        }.resume()
        
    }
}
