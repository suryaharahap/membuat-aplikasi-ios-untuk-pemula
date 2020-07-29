//
//  ProfileViewController.swift
//  NewsTj
//
//  Created by Surya on 6/25/20.
//  Copyright © 2020 Surya. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var photoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImg.layer.cornerRadius = 20
        photoImg.layer.masksToBounds = true
    }

}
