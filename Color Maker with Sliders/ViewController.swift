//
//  ViewController.swift
//  Color Maker with Sliders
//
//  Created by Heyanbai on 2018/7/26.
//  Copyright © 2018年 Heyanbai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeColorValue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColorValue(){
        if self.RedSlider == nil{
            return
        }
        let r:CGFloat = CGFloat(self.RedSlider.value)
        let b:CGFloat = CGFloat(self.BlueSlider.value)
        let g:CGFloat = CGFloat(self.GreenSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

