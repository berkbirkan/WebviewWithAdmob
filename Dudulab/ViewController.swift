//
//  ViewController.swift
//  Dudulab
//
//  Created by berk birkan on 1.07.2017.
//  Copyright © 2017 berk birkan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController , GADBannerViewDelegate {
    @IBOutlet weak var banner: GADBannerView!
    @IBOutlet weak var mywebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Request
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        banner.adUnitID = "ca-app-pub-6959079396709429/3238966154"
        banner.rootViewController = self
        banner.delegate = self
        
        banner.load(request)
        
        let url = URL(string: "https://www.google.com")
        mywebView.loadRequest(URLRequest(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

