//
//  ViewController.swift
//  ImgFlipApp
//
//  Created by Nikolai Maksimov on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.shared.fetchData { memes in
            print(memes)
        }
    }


}

