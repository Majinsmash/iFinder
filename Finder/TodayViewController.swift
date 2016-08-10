//
//  TodayViewController.swift
//  Widget
//
//  Created by Tucker Morley on 1/26/16.
//  Copyright © 2016 MSDevs. All rights reserved.
//

import UIKit
import NotificationCenter
class TodayViewController: UIViewController, NCWidgetProviding {

    @IBAction func finder(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "finder://")!, completionHandler: nil)
    }
    @IBAction func cloudApp(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "iclouddriveapp://")!, completionHandler: nil)
    }
    
    @IBAction func keyBoard(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "prefs:root=General&path=Keyboard")!, completionHandler: nil)
    }

    @IBAction func wifiLaunch(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "prefs:root=WIFI")!, completionHandler: nil)
    }
    
 
    @IBAction func bluetoothLaunch(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "prefs:root=Bluetooth")!, completionHandler: nil)
        
    }
    @IBAction func battLaunch(sender: AnyObject) {
    extensionContext?.openURL(NSURL(string: "prefs:root=BATTERY_USAGE")!, completionHandler: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        self.preferredContentSize = CGSizeMake(0, 255)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.NewData)
    }
    
}
