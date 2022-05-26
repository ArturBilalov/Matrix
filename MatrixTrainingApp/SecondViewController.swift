//
//  SecondViewController.swift
//  MatrixTrainingApp
//
//  Created by Artur Bilalov on 12.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
  
    
    var y1: Int = 0
    var y2: Int = 0
    var y3: Int = 0
    var y4: Int = 0
    var y5: Int = 0

    
    @IBOutlet weak var x1Label: UILabel!
    @IBOutlet weak var x2Label: UILabel!
    @IBOutlet weak var x3Label: UILabel!
    @IBOutlet weak var x4Label: UILabel!
    @IBOutlet weak var x5Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        x1Label?.text = String(y1)
        x2Label?.text = String(y2)
        x3Label?.text = String(y3)
        x4Label?.text = String(y4)
        x5Label?.text = String(y5)
    }
    
    
}
