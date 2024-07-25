//
//  ViewController.swift
//  Dynamic controller
//
//  Created by IMAC3 on 27/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button()
        textField()
        textView()
        uiView()
    }
    
    func button(){
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 160, y: 200, width: 80, height: 40)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }

    @objc func buttonAction(){
        print("Hello!")
    }


    func textField(){
        let text = UITextField()
        text.placeholder = " Enter Your User Name"
        text.layer.borderWidth = 2
        text.layer.cornerRadius = 10
        text.frame = CGRect(x: 20, y: 85, width: 374, height: 50)
        view.addSubview(text)
    }
    
    func textView(){
        let text = UITextView()
        text.text = ""
        text.layer.borderWidth = 2
        text.layer.cornerRadius = 10
        text.frame = CGRect(x: 87, y: 299, width: 240, height: 250)
        view.addSubview(text)
    }
    
    func uiView(){
        let uiview = UIView()
        uiview.backgroundColor = UIColor.blue
        uiview.layer.borderWidth = 2
        uiview.layer.cornerRadius = 10
        uiview.frame = CGRect(x: 87, y: 600, width: 240, height: 250)
        view.addSubview(uiview)
        
    }
}

    
