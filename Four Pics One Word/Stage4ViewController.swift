//
//  Stage4ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/22/21.
//

import UIKit

class Stage4ViewController: UIViewController {

    var correctAnswer4 = ["draft", "Draft", "DRAFT"]
    
    @IBOutlet weak var hintText: UITextView!
    @IBAction func hintButton(_ sender: UIButton) {
        hintText.text = "The first time you write an essay is called a first _ _ _ _ _"
    }
    
    @IBOutlet weak var textField: UITextField!
    var data = ""
    
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer4{
            if answer == textField.text {
                performSegue(withIdentifier: "Stage4toStage5Segue", sender: Any?.self)
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



