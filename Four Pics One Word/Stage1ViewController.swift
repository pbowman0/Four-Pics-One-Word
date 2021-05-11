//
//  Stage1ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/15/21.
//

import UIKit

class Stage1ViewController: UIViewController {
    
    var correctAnswer1 = ["Fall", "fall", "FALL"]
    
    @IBOutlet weak var hintText: UITextView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var letterBank: UITextView!
    @IBOutlet weak var pointCount: UILabel!
    var points = Points()
    
    @IBAction func button(_ sender: UIButton) {
        for answer in correctAnswer1
        {
            print(points.count)
            if answer == textBox.text {
                
                performSegue(withIdentifier: "Stage1toStage2Segue", sender: Any?.self)
            }
        }
    }
    @IBAction func hintButton(_ sender: Any) {
        hintText.text = "Hint: What season is October in?"
        points.count -= 1
        pointCount.text = "Points: -1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintText.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage2ViewController
        dvc.data = "This came from the first VC"
        dvc.points = self.points
    }
}
