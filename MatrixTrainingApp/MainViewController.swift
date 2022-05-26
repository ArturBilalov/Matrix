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
            let y1 = segue.destination as? SecondViewController
            y1?.x1 = Int(dayTextField.text!) ?? 0
            y1?.x2 = Int(monthTextField.text!) ?? 0
            y1?.m3 = Int(yearTextField.text!) ?? 0
//            y1?.x4 = y1!.x1 + y1!.x2 + y1!.x3
//            y1?.x5 = y1!.x1 + y1!.x2 + y1!.x3 + y1!.x4
            
        }
    }
    
}


