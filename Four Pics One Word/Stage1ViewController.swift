//
//  Stage1ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/15/21.
//

import UIKit

class Stage1ViewController: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var letterBank: UITextView!
    @IBAction func button(_ sender: UIButton) {
    }
    @IBAction func hintButton(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage2ViewController
        dvc.data = "This came from the first VC"
    }
}
