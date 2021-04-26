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
        hintText.text = "The first time you write an essay is called a first _ _ _ _ _"
    }
    
    @IBOutlet weak var textField: UITextField!
    var data = ""
    
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer5{
            if answer == textField.text {
                performSegue(withIdentifier: "Stage5toFinalStage5Segue", sender: Any?.self)
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
        let dvc = segue.destination as! Stage5ViewController
        dvc.data = "This came from the fourth VC"
    }

}
