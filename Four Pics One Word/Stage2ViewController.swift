//
//  Stage2ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage2ViewController: UIViewController {
    
    @IBAction func hintButton(_ sender: UIButton) {
    }
    @IBOutlet weak var textField: UITextField!
    var data = ""
    @IBOutlet weak var wordBank: UITextView!
    @IBAction func answerButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Stage2toStage3Segue", sender: Any?.self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage3ViewController
        dvc.data = "This came from the second VC"
    }
}



