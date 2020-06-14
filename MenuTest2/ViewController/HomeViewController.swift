//
//  HomeViewController.swift
//  MenuTest2
//
//  Created by Peem on 14/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nextButtom: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "menu1") as! MenuViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
}
