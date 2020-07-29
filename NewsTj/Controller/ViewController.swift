//
//  ViewController.swift
//  NewsTj
//
//  Created by Surya on 6/24/20.
//  Copyright © 2020 Surya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //menambahkan title pada navigation
        self.navigationItem.title = "News Tj"
        
        //menghubungkan NewsTableView dengan dua metode di bawah
        newsTableView.dataSource = self
        
        //menambahkan  delegate ke table vie
        newsTableView.delegate = self
        
        //menghubungkan XIB to NewsTableViewCell dengan newsTableView
        newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //menambahkan item yang muncul di dalam table view
        return newstj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //menghubungkan identifier "NewsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTableViewCell
        
        //menetapkan nilai news ke view di dalam cell
        let news = newstj[indexPath.row]
        cell.nameNews.text = news.name
        cell.photoNews.image = news.photo
        cell.descNews.text = news.description
        
        //membuat imageView memiliki frame bound/lingkaran
        cell.photoNews.layer.cornerRadius = cell.photoNews.frame.height / 2
        cell.photoNews.clipsToBounds = true
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        //memanggil View Controller dengan berkas NIB/XIB di dalamnnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        //mengirim data hero
        detail.news = newstj[indexPath.row]
        
        //push view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
