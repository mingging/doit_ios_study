//
//  ViewController.swift
//  WebAppEx
//
//  Created by minimani on 2021/10/05.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html") else {return}
        let myUrl = URL(fileURLWithPath: filePath)
        let request = URLRequest(url: myUrl)
        webView.load(request)
    }

    
}

