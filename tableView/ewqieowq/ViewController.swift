//
//  ViewController.swift
//  ewqieowq
//
//  Created by iMacbook on 5/13/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

struct cellData {
    var cell: Int!
    var name: String?
    var pictureUrl: UIImage
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var arrayData = [cellData]()
    
    var numberArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arrayData = [
            cellData(cell: 1, name: "DM1", pictureUrl: UIImage(named: "gailadaychudau")!),
            cellData(cell: 2, name: "DM2",  pictureUrl: UIImage(named: "gailadaychudau")!),
            cellData(cell: 2, name: "DM2",  pictureUrl: UIImage(named: "gailadaychudau")!)]
        
        numberArray.addObjects(from: ["Create File"])
        numberArray.addObjects(from: ["Create Directory"])
        numberArray.addObjects(from: ["Write File"])
      
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if arrayData[indexPath.row].cell == 1 {
            let cell = Bundle.main.loadNibNamed("cell1", owner: self, options: nil)?.first as! cellView
            cell.image1.image = arrayData[indexPath.row].pictureUrl
            cell.label1.text = arrayData[indexPath.row].name
            return cell
        }
        else if arrayData[indexPath.row].cell == 2 {
            let cell = Bundle.main.loadNibNamed("cell2", owner: self, options: nil)?.first as! cellVIew2
            cell.image2.image = arrayData[indexPath.row].pictureUrl
            cell.label2.text = arrayData[indexPath.row].name
            return cell
        }
        else {
            let cell = Bundle.main.loadNibNamed("cell2", owner: self, options: nil)?.first as! cellVIew2
            cell.image2.image = arrayData[indexPath.row].pictureUrl
            cell.label2.text = arrayData[indexPath.row].name
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayData[indexPath.row].cell == 1 {
          return 109
        }
        else if arrayData[indexPath.row].cell == 2 {
          return 125
        }
        else
        {
            return 125
        }
    }
}

