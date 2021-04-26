//
//  Stage3ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage3ViewController: UIViewController {
    
    var correctAnswer3 = ["minute", "Minute", "MINUTE"]
    
    @IBOutlet weak var hintText: UITextView!
    @IBAction func hintButton(_ sender: UIButton) {
        hintText.text = "60 seconds is called a"
    }
    
    @IBOutlet weak var textField: UITextField!
    var data = ""
    
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer3{
            if answer == textField.text {
                performSegue(withIdentifier: "Stage3toStage4Segue", sender: Any?.self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintText.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage4ViewController
        dvc.data = "This came from the third VC"
    }
}
