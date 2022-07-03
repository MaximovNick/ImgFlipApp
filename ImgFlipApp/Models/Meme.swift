//
//  Meme.swift
//  ImgFlipApp
//
//  Created by Nikolai Maksimov on 03.07.2022.
//

import Foundation

struct Memes: Codable {
    let success: Bool
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let memes: [Meme]
}

// MARK: - Meme
struct Meme: Codable {
    let id, name: String
    let url: String
    let width, height, boxCount: Int

    enum CodingKeys: String, CodingKey {
        case id, name, url, width, height
        case boxCount = "box_count"
    }
}
