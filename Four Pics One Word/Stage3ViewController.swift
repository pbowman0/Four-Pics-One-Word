//
//  Stage3ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage3ViewController: UIViewController {
    
    var correctAnswer3 = ["minute", "Minute", "MINUTE"]
    var points = Points()
    @IBOutlet weak var hintText: UITextView!
    @IBOutlet weak var pointCount: UILabel!
    @IBAction func hintButton(_ sender: UIButton) {
        points.count -= 1
        var previousPoints = points.count
        pointCount.text = "Points: \(previousPoints)"
        hintText.text = "Hint: 60 seconds is called a ___"
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
        let dvc = segue.destination as! Stage4ViewController
        dvc.data = "This came from the third VC"
        dvc.points = self.points
    }
}
