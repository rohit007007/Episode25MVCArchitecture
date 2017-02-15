//
//  SignupViewController.swift
//  Rise9StartUp
//
//  Created by Rohit Chawla on 09/02/17.
//  Copyright © 2017 Rohit Chawla. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dot = UIImageView(frame: CGRect(x : 0.0986 * view.frame.size.width  , y: 0.206 * view.frame.size.height , width :0.8 * view.frame.size.width , height: 0.205  * view.frame.size.height))
        dot.image = UIImage(named: "datapacks")
        self.view.addSubview(dot)
        

        // Do any additional setup after loading the view.
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
