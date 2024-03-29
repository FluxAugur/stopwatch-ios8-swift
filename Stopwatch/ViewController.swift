//
//  ViewController.swift
//  Stopwatch
//
//  Created by Nathanial L. McConnell on 9/17/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var timer = NSTimer()
  var count = 0
  
  @IBOutlet weak var time: UILabel!
  
  @IBAction func start(sender: AnyObject) {
    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
  }
  
  @IBAction func pause(sender: AnyObject) {
    timer.invalidate()
  }
  
  @IBAction func reset(sender: AnyObject) {
    timer.invalidate()
    count = 0
    time.text = "0"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func result() {
    count++
    time.text = String(count)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

