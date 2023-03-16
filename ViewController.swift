//
//  ViewController.swift
//  ClickCounter
//
//  Created by Marcello Gonzatto Birkan on 16/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // Label2
        let label2 = UILabel()
        label2.frame = CGRect(x: 300, y: 200, width: 90, height: 60)
        label2.text = "0"
        self.label2 = label2
        view.addSubview(label2)
        
        
        // Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("click", for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        view.addSubview(button)
        
        // Button2
        let button2 = UIButton()
        button2.frame = CGRect(x: 220, y: 250, width: 200, height: 90)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = label.text
        view.backgroundColor = UIColor.gray
        
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = label.text
        view.backgroundColor = UIColor.white
    }
}

