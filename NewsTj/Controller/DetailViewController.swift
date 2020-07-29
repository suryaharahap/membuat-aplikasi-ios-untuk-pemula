//
//  DetailViewController.swift
//  NewsTj
//
//  Created by Surya on 6/24/20.
//  Copyright © 2020 Surya. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var photoNews: UIImageView!
    @IBOutlet weak var nameNews: UILabel!
    @IBOutlet weak var descNews: UILabel!
    
    //menampung data news
    var news: News?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //menetapkan nilai news ke beberapa view yang ada
        if let result = news {
            photoNews.image = result.photo
            nameNews.text = result.name
            descNews.text = result.description
        }

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
