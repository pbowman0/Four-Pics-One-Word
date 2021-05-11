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
    var points = Points()
    
    
    @IBAction func hintButton(_ sender: UIButton) {
        points.count -= 1
        var previousPoints = points.count
        pointCount.text = "Points: \(previousPoints)"
        hintText.text = "Hint: Starts with \"B\" ends with \"T\""
    }
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pointCount: UILabel!
    var data = ""
    @IBOutlet weak var wordBank: UITextView!
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer2
        {
            print(points.count)
            if answer == textField.text {
                performSegue(withIdentifier: "Stage2toStage3Segue", sender: Any?.self)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        hintText.text = ""
        points.count += 5
        var previousPoints = points.count
        pointCount.text = "Points: \(previousPoints)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage3ViewController
        dvc.data = "This came from the second VC"
        dvc.points = self.points
    }
}



