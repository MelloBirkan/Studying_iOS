//
//  ViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcello Gonzatto Birkan on 13/12/21.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: Any) {
//        label.text = "Hello"
//        button.setTitle("Button", for: .normal)
        
        performSegue(withIdentifier: "secondScreen", sender: nil)
    }
    @IBAction func unwindToFirst(segue: UIStoryboardSegue){
        
    }

}

