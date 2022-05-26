//
//  ViewController.swift
//  MatrixTrainingApp
//
//  Created by Artur Bilalov on 11.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateButton() {
  
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let x1 = segue.destination as? SecondViewController
            x1?.y1 = Int(dayTextField.text!) ?? 0
            x1?.y2 = Int(monthTextField.text!) ?? 0
            x1?.y3 = Int(yearTextField.text!) ?? 0
            x1?.y4 = x1!.y1 + x1!.y2 + x1!.y3
            x1?.y5 = x1!.y1 + x1!.y2 + x1!.y3 + x1!.y4
            
        }
    }
    
}


