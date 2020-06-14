//
//  RegisterViewController.swift
//  MenuTest2
//
//  Created by Peem on 14/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var canCelButtom: UIButton!
    
    // public var completionHandler: ((String?) -> Void?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setUpElement()
    }
    
    func setUpElement() {
        errorLabel.alpha = 0
        
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(canCelButtom)
        
        
        
        
    }
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "view") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func signUpTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "home") as! HomeViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    /* @IBAction func TappedSignUp(){
     completionHandler(firstNameTextField.text)
     dismiss(animated: true, completion: nil)
     }*/
    
    
}
