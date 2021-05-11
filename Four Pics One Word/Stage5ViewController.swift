//
//  Stage5ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/23/21.
//

import UIKit

class Stage5ViewController: UIViewController {
    
    var correctAnswer5 = ["current", "Current", "CURRENT"]
    var points = Points()
    @IBOutlet weak var hintText: UITextView!
    @IBOutlet weak var pointCount: UILabel!
    @IBAction func hintButton(_ sender: UIButton) {
        points.count -= 1
        var previousPoints = points.count
        pointCount.text = "Points: \(previousPoints)"
        hintText.text = "Contains 7 letters, begins with \"C\" and ends with \"T\""
    }
    
    @IBOutlet weak var textField: UITextField!
    var data = ""
    
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer5{
            if answer == textField.text {
                points.count += 5
                performSegue(withIdentifier: "Stage5toFinalStageSegue", sender: Any?.self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        points.count += 5
        var previousPoints = points.count
        print(previousPoints)
        pointCount.text = "Points: \(previousPoints)"
        hintText.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FinalViewController
        dvc.data = "This came from the fifth VC"
        dvc.points = self.points
    }
}

