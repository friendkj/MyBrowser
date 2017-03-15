//
//  ViewController.swift
//  MyBrowser
//
//  Created by 김준 on 2017. 3. 13..
//  Copyright © 2017년 김준. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: UIWebView!
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkUrl : String = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)!
        
        let urlString : String = "https://www.\(bookMarkUrl).com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        //urlTextField.text = urlString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString : String = "https://www.facebook.com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))

        //urlTextField.text = urlString

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

