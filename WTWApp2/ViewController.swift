//
//  ViewController.swift
//  WTWApp2
//
//  Created by Trevor Riddle on 3/20/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FacebookLogin

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

