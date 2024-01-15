//
//  WebLinkViewController.swift
//  SeSacTravelMagazine
//
//  Created by hwijinjeong on 1/16/24.
//

import UIKit
import WebKit

class WebLinkViewController: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    var webUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = webUrl
        
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            
            webView.load(request)
        }
    }
    

}
