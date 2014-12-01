//
//  NavigationController.swift
//  testing
//
//  Created by Mario Rico on 27/11/2014.
//  Copyright (c) 2014 Mario Rico. All rights reserved.
//

import UIKit

class WebController: UIViewController {

    @IBOutlet weak var webContent: UIWebView!
    @IBOutlet weak var btnLoad: UIButton!
    @IBOutlet weak var btnFire: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.deitg.com")
        
        let request = NSURLRequest(URL: url!)
        
        webContent.loadRequest(request)

    }
    
    @IBAction func loadWeb(sender: AnyObject) {
        
        let url = NSURL(string: "http://www.google.es")
        
        let request = NSURLRequest(URL: url!)
        
        webContent.loadRequest(request)
        
    }
    
    
    /*
    @IBAction func paTras(sender: AnyObject) {
        
        
        let urlLuis = NSURL(string: "http://llberganza.com")
        
        var llamarPagina = NSURLRequest(URL: urlLuis!)
        
        webContent.loadRequest(llamarPagina)
        
        
    }
    */
    
    
    
    
    

}
