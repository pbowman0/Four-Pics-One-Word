//
//  Stage4ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/22/21.
//

import UIKit

class Stage4ViewController: UIViewController {
    
    var correctAnswer4 = ["draft", "Draft", "DRAFT"]
    var points = Points()
    @IBOutlet weak var hintText: UITextView!
    @IBOutlet weak var pointCount: UILabel!
    var data = ""
    
    //gives hint and subtracts points
    @IBAction func hintButton(_ sender: UIButton) {
        points.count -= 1
        var previousPoints = points.count
        pointCount.text = "Points: \(previousPoints)"
        hintText.text = "The first time you write an essay is called a first _ _ _ _ _"
    }
    
    @IBOutlet weak var textField: UITextField!
    
    //if answer is correct performs segue and adds points
    @IBAction func answerButton(_ sender: UIButton) {
        for answer in correctAnswer4{
            if answer == textField.text {
                points.count += 5
                performSegue(withIdentifier: "Stage4toStage5Segue", sender: Any?.self)
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
    
    //passes points data over to next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! Stage5ViewController
        dvc.data = "This came from the fourth VC"
        dvc.points = self.points
    }
}



