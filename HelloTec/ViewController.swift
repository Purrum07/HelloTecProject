//
//  ViewController.swift
//  HelloTec
//
//  Created by user192467 on 2/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(_ sender: UIButton) {
        var emojiDict = ["👽":"Alien","😍":"My Love", "🐵":"Monkey"]
                
                let selectedButton = sender
                
                if let wordToLookup = selectedButton.titleLabel?.text {
                    
                    let meaning = emojiDict[wordToLookup]
                    

                    let alertController = UIAlertController(title: "Meaning", message: "Hello " + meaning!, preferredStyle: UIAlertController.Style.alert)
                    
                    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    present(alertController, animated: true, completion: nil)
               
                }

    }
}

