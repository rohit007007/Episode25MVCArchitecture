//
//  FirstVC.swift
//  Rise9StartUp
//
//  Created by Rohit Chawla on 08/02/17.
//  Copyright © 2017 Rohit Chawla. All rights reserved.
//0.3988

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var imgPage1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let dot = UIImageView(frame: CGRect(x : 0.1706 * view.frame.size.width  , y: 0.44 * view.frame.size.height , width :0.616 * view.frame.size.width , height:0.2668 * view.frame.size.height))
             dot.image = UIImage(named: "Appforegroundicons")
             self.view.addSubview(dot)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
