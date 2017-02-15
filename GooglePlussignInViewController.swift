//
//  GooglePlussignInViewController.swift
//  Rise9StartUp
//
//  Created by Rohit Chawla on 13/02/17.
//  Copyright © 2017 Rohit Chawla. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn
class GooglePlussignInViewController: UIViewController , GIDSignInUIDelegate
     //GIDSignInDelegate {
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var error : NSError?
        GGLContext.sharedInstance().configureWithError(&error)
        let signinbutton = GIDSignInButton(frame: CGRect(x: 100 ,y:  100, width : 100 , height : 100))
        
        if error != nil
        {
        
        print(error! ?? "error value")
        }
        
        
    view.addSubview(signinbutton)
    GIDSignIn.sharedInstance().uiDelegate = self
   // GIDSignIn.sharedInstance().delegate = self
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        print(user.profile.email)
//        print(user.profile.imageURL(withDimension: 200))
//    }
}
