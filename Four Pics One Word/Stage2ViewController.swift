//
//  Stage2ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage2ViewController: UIViewController {
    
    var correctAnswer2 = ["Bolt", "bolt", "BOLT"]
    @IBOutlet weak var hintText: UITextView!
    @IBAction func hintButton(_ sender: UIButton) {
        hintText.text = "Hint: Starts with \"B\" ends with \"T\""
    }
    @IBOutlet weak var textField: UITextField!
    var data = ""
    @IBOutlet weak var wordBank: UITextView!
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer2
        {
            if answer == textField.text {
                performSegue(withIdentifier: "Stage2toStage3Segue", sender: Any?.self)
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
        let dvc = segue.destination as! Stage3ViewController
        dvc.data = "This came from the second VC"
    }
}



