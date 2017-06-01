//
//  ViewController.swift
//  GoogleSignIn
//
//  Created by Nidhi on 6/1/17.
//  Copyright © 2017 Nidhi. All rights reserved.
//

import UIKit
import Google
//import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func  viewWillAppear(_ animated: Bool) {
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self

    }

    @IBAction func btnSignInClick(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }

}

extension ViewController:GIDSignInDelegate,GIDSignInUIDelegate{
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error == nil{
            print("Gmail login success")
            print(user)
    }
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
    }
}
