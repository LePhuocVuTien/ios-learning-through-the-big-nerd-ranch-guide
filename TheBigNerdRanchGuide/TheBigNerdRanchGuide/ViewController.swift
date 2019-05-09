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
    
    let questions: [String] = [
        "What is 7 + 7?",
        "What is the capital Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questLabel.text = questions[index]
    }
    
    @IBAction func onTapQuestion(_ sender: Any) {
        index += 1
        if ( index >= questions.count )
        {
            index = 0
        }
        questLabel.text = questions[index]
        answerLabel.text = "???"
    }
    
    @IBAction func onTapAnswer(_ sender: Any) {
        answerLabel.text = answers[index]
    }
}
