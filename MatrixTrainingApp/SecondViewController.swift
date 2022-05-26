//
//  SecondViewController.swift
//  MatrixTrainingApp
//
//  Created by Artur Bilalov on 12.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
  
    
    var x1: Int = 0
    var x2: Int = 0
    var m3: Int = 0
    var x4: Int = 0
    var x5: Int = 0
    var x6: Int = 0
    
    var m33: Int = 0
    var x3: Int = 0
    
    @IBOutlet weak var x1Label: UILabel!
    @IBOutlet weak var x2Label: UILabel!
    @IBOutlet weak var x3Label: UILabel!
    @IBOutlet weak var x4Label: UILabel!
    @IBOutlet weak var x5Label: UILabel!
    
    @IBOutlet weak var x6Label: UILabel!
    
    func calculating() {
        m33 = check(theNumberBeingCompared: m3)
        x3 = check(theNumberBeingCompared: m33)
        x4 = check(theNumberBeingCompared: x1+x2+x3)
        x5 = check(theNumberBeingCompared: x1+x2+x3+x4)
        x6 = check(theNumberBeingCompared: x1+x5)
    }
    
    func check(theNumberBeingCompared: Int) -> Int {
        var z = theNumberBeingCompared
        if z > 22 {
            z = String(theNumberBeingCompared).compactMap{$0.wholeNumberValue}.reduce(0, +)
        }
        return z
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculating()
        x1Label?.text = String(x1)
        x2Label?.text = String(x2)
        x3Label?.text = String(x3)
        x4Label?.text = String(x4)
        x5Label?.text = String(x5)
        x6Label?.text = String(x6)
        
    }
    
    
}
