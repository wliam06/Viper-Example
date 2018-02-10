//
//  WelcomeViewController.swift
//  TestViper
//
//  Created by william on 3/14/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

struct cellData{
    let cell: Int
    let desc: String
    let image: UIImage
}


class WelcomeTableViewController: UITableViewController, WelcomeView{
    var presenter: WelcomeModuleInterface?
    
    
    @IBOutlet weak var wctableView: UITableView!
    
    var arrayOfData = [cellData]()
    
    
    override func viewDidLoad() {
        arrayOfData = [cellData(cell: 1, desc: "", image: #imageLiteral(resourceName: "Logan"))]
    }
    
    @IBAction func AddButton(_ sender: Any) {
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfData.count 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = wctableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? WelcomeTableViewCell
        
        if arrayOfData[indexPath.row].cell == 1 {
        
            let imageView = UIImage(named: "Logan")
            cell?.imageViewCell = arrayOfData[indexPath.row].imageView
            cell?.descriptionLabel = arrayOfData[indexPath.row].desc
        
        return cell!
        }
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }
    
    
    
    

}
