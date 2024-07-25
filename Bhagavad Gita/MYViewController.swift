//
//  MYViewController.swift
//  Bhagavad Gita
//
//  Created by IMAC3 on 27/11/23.
//

import UIKit

class MYViewController: UIViewController {

    @IBOutlet weak var bt1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        textField()
    }
    
    
    func button(){
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 100, y: 200, width: 80, height: 60)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
   @objc func buttonAction(){
        print("sdfghjklretyui")
    }
    
    
    func textField(){
        let text = UITextField()
        text.placeholder = "Enter Your User Name"
        text.layer.borderWidth = 2
        text.layer.cornerRadius = 10
        text.frame = CGRect(x: 20, y: 300, width: 300, height: 50)
        view.addSubview(text)
    }

}
