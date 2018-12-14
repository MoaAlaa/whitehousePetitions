//
//  DetailViewController.swift
//  whitehousePetitions
//
//  Created by Mohamed Alaa El-Din on 12/14/18.
//  Copyright © 2018 Mohamed Alaa El-Din. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <style> body { font-size: 150%; } </style>
            </head>
            <body>
                \(detailItem.body)
            </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
}
