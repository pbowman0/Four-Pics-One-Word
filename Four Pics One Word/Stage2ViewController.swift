//
//  Stage2ViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/16/21.
//

import UIKit

class Stage2ViewController: UIViewController {
    
    
    var data = ""
    
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



