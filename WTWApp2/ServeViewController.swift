//
//  ServeViewController.swift
//  WTWApp2
//
//  Created by Trevor Riddle on 5/5/17.
//  Copyright © 2017 Trevor. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ServeViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.winetowater.org/serve/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
