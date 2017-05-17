//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Elias Myronidis on 17/5/17.
//  Copyright © 2017 eliamyro. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Find the html file
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html"){
            
            // Load the html file to a data object
            if let htmlData = try? Data(contentsOf: url){
                let baseUrl = URL(fileURLWithPath: Bundle.main.bundlePath)
                
                // Show the contents of the data object.
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseUrl)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
