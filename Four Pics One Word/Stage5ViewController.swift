//
//  Stage5ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/23/21.
//

import UIKit

class Stage5ViewController: UIViewController {
    
    var correctAnswer5 = ["current", "Current", "CURRENT"]
    
    @IBOutlet weak var hintText: UITextView!
    @IBAction func hintButton(_ sender: UIButton) {
        hintText.text = "Contains 7 letters, begins with \"C\" and ends with \"T\""
    }
    
    @IBOutlet weak var textField: UITextField!
    var data = ""
    
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer5{
            if answer == textField.text {
                performSegue(withIdentifier: "Stage5toFinalStageSegue", sender: Any?.self)
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
        let dvc = segue.destination as! FinalViewController
        dvc.data = "This came from the fifth VC"
    }
}

