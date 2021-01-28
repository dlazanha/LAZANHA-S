//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Diego Araujo Lazanha on 21/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBoat: UIImageView!
    
    @IBOutlet weak var stackBorder: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgBoat.layer.borderWidth = 15
        imgBoat.layer.backgroundColor = UIColor.brown.cgColor
        
        stackBorder.layer.borderWidth = 10
        stackBorder.layer.borderColor = UIColor.orange.cgColor
        
        
    }


}

