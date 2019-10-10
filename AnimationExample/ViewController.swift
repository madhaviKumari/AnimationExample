//
//  ViewController.swift
//  AnimationExample
//
//  Created by Afsar Sir on 10/10/19.
//  Copyright © 2019 Afsar Sir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var button1: NSLayoutConstraint!
    
   
    @IBOutlet weak var button2: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.constant -= view.bounds.width
        button2.constant -= view.bounds.width
       
        
    }
    
    var animatedPerformance = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animatedPerformance{
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.button1.constant += self.view.bounds.width
            }, completion: nil)
            
            
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.button2.constant += self.view.bounds.width
            }, completion: nil)
        }
        
    }


}

