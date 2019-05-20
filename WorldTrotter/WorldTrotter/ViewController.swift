//
//  ViewController.swift
//  WorldTrotter
//
//  Created by iMacbook on 5/10/19.
//  Copyright © 2019 IOTLink. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var fahrenheiText: UITextField!
    @IBOutlet weak var celsiusLabel: UILabel!
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 2
        return nf
    }()
    
    var fahrenheiValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheiValue = fahrenheiValue {
            return fahrenheiValue.converted(to: .celsius)
        }
        else {
            return nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCelsiusLabel()
    }

    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
            //"\(celsiusValue.value)"
        }
        else {
            celsiusLabel.text = "???"
        }
    }

    @IBAction func fahrenheitFieldEditingChange(_ sender: Any) {
        if let text = fahrenheiText.text, let value = Double(text) {
            fahrenheiValue = Measurement(value: value, unit: .fahrenheit)
        }
        else {
            fahrenheiValue = nil
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Current text: \(String(describing: textField.text))")
        print("Replacement text:\(string)")
        return true
    }
}
