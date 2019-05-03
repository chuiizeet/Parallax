//
//  ViewController.swift
//  parallax
//
//  Created by imac on 5/2/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class ListTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallax", for: indexPath) as? ParallaxCell else { return UITableViewCell() }
        
        cell.configureCell(withImage: imgArray[indexPath.row]!, andDescription: descArray[indexPath.row])
        return cell
    }


}

