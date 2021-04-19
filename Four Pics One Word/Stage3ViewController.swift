//
//  Stage3ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage3ViewController: UIViewController {

    var data = ""
    
    @IBOutlet weak var hintText: UITextView!
    @IBAction func hintButton(_ sender: UIButton) {
        hintText.text = "60 seconds..."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintText.text = ""
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
