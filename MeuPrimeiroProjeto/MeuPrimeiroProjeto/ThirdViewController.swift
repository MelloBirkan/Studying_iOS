//
//  ThirdViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcello Gonzatto Birkan on 13/12/21.
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg: String)
}
class ThirdViewController: UIViewController {

   
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    weak var delegate: ThirdViewControllerDelegate?
//    var receiveValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.notification(msg: "Cheguei na Terceira ViewController")

//        label.text = receiveValue
        // Do any additional setup after loading the view.
    }
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
    
}
