//
//  ViewController.swift
//  music
//
//  Created by zhandos on 31.01.2024.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    
    var pers = person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: pers.img)
        let urlrequest = URLRequest(url: url!)
        
        webview.load(urlrequest)
    }


}

