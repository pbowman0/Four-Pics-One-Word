//
//  FinalViewController.swift
//  Four Pics One Word
//
//  Created by Student on 4/27/21.
//

import UIKit


class FinalViewController: UIViewController {
    
    @IBOutlet weak var pointCount: UILabel!
    var points = Points()
    var data = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointCount.text = "Points: \(points.count)"
    }
}
