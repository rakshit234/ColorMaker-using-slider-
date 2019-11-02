//
//  ViewController.swift
//  ColorMaker
//
//  Created by rs on 02/11/19.
//  Copyright © 2019 rs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var viewControl: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewControl.layer.borderWidth = 10
        viewControl.layer.borderColor = UIColor(red: 0.601, green: 0.597, blue: 0.597, alpha: 1).cgColor
    }
    
    @IBAction func changeColor(_sender: AnyObject) {
        
        let r = CGFloat(self.redControl.value)
        redLabel.text = "\(round(r*100)/100)"
        
        let g = CGFloat(self.greenControl.value)
        greenLabel.text = "\(round(g*100)/100)"
        
        let b = CGFloat(self.blueControl.value)
        blueLabel.text = "\(round(b*100)/100)"
        
        viewControl.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }

//rgb(154, 153, 153)
}

