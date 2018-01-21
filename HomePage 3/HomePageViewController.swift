//
//  ViewController.swift
//  HomePage
//
//  Created by Tijana Gojkovic on 1/17/18.
//  Copyright © 2018 Tijana Gojkovic. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var posts = [1, 2, 3]
    let cellSpacingHeight: CGFloat = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
       guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomePageTableViewCell else {
            fatalError("bla bla")
        }
        
       let post = posts[indexPath.row]
        cell.layer.cornerRadius = 5
        cell.clipsToBounds = true

        
        return cell
    }
    
   func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
        
    }
    
    
   
    @IBAction func openMessages(_ sender: Any) {
    }
    
    @IBAction func openProfile(_ sender: Any) {
        print("open profile")
    }
    
    @IBAction func openShare(_ sender: Any) {
        print("open share")
    }
    
    @IBAction func addLike(_ sender: Any) {
        print("add like")
    }
    
    @IBAction func addComment(_ sender: Any) {
        print("add comment")
    }
    
    @IBAction func sharePost(_ sender: Any) {
        print("share post")
    }
    
    
    
    
    
    
    
}

