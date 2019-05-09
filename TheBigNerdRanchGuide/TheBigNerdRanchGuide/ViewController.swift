//
//  ViewController.swift
//  TheBigNerdRanchGuide
//
//  Created by iMacbook on 5/9/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onTapQuestion(_ sender: Any) {
        switch index {
        case 0:
            questLabel.text = "What is 7 + 7?"
            index += 1
            break
        case 1:
            questLabel.text = "What is the capital Vermont?"
            index += 1
            break
        case 2:
            questLabel.text = "What is cognac made from?"
            index = 0
            break
        default: break
        }
        
    }
    
    @IBAction func onTapAnswer(_ sender: Any) {
        if let compare = questLabel.text {
            switch compare {
            case "What is 7 + 7?":
                answerLabel.text = "14"
                break
            case "What is the capital Vermont?":
                answerLabel.text = "Montpelier"
                break
            case "What is cognac made from?":
                answerLabel.text = "Grapes"
                break
            default: break
            }
        }
    }
}
