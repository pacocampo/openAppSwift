//
//  ViewController.swift
//  openAppDemo
//
//  Created by Francisco Ocampo Romero on 16/03/17.
//  Copyright © 2017 devf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func open(_ sender: Any) {
    let appUrl = URL(string : "waze://?ll=19.428564,-99.1679837")
    if UIApplication.shared.canOpenURL(appUrl!) {
      UIApplication.shared.openURL(appUrl!)
    } else {
      let url  = URL(string: "itms-apps://itunes.apple.com/us/app/waze-gps-navigation-maps-real-time-traffic/id323229106")
      UIApplication.shared.openURL(url!)
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

