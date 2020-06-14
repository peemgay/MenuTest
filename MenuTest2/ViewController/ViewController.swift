//
//  ViewController.swift
//  MenuTest2
//
//  Created by Peem on 14/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signUpButtom: UIButton!
    
    @IBOutlet weak var loginButtom: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func setUpElemet() {
        Utilities.styleFilledButton(signUpButtom)
        Utilities.styleFilledButton(loginButtom)
    }
    
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "signup") as! SignUpViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    @IBAction func loginTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "login") as! LoginViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    
}
