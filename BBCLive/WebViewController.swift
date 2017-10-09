//
//  WebViewController.swift
//  BBCLive
//
//  Created by Shelton Lee on 2017/10/9.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    var urlString : String!
    var radioName : String!
    let screenSize: CGRect = UIScreen.main.bounds
    var webView = UIWebView()
    var dataUtil : DataUtil = DataUtil()
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.frame = screenSize
        webView.delegate = self
        webView.scalesPageToFit = true
        radioName = dataUtil.getRadioName()
        urlString = dataUtil.getRadioUrl()
        let url:NSURL = NSURL(string: urlString)!
        let request:NSURLRequest = NSURLRequest(url: url as URL)
        webView.loadRequest(request as URLRequest)
        // Do any additional setup after loading the view.
        self.navigationItem.title = self.radioName
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
