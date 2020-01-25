//
//  ViewController.swift
//  timerApp
//
//  Created by Felix 05 on 25/01/20.
//  Copyright © 2020 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var count = 0
    
    @IBOutlet weak var buttonPlay: UIBarButtonItem!
    
    @IBOutlet weak var buttonStop: UIBarButtonItem!
    
    
    @IBOutlet weak var buttonPause: UIBarButtonItem!
    
    
    @IBOutlet weak var numbersLabel: UILabel!
    
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
        buttonPause.isEnabled = false
        buttonPlay.isEnabled = true
        
        
    }
    
    

    @IBAction func playButton(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getCount), userInfo: nil, repeats: true)
        buttonPlay.isEnabled = false
        buttonStop.isEnabled = true
        buttonPause.isEnabled = true
        
    }
    @objc func getCount()
    {
        count = Int(numbersLabel.text!)!
        count += 1
        numbersLabel.text = String(count)
    }
    
    
    
    
    @IBAction func crossButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
        numbersLabel.text = "0"
        buttonPause.isEnabled = false
        buttonPlay.isEnabled = true
        buttonStop.isEnabled = false
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

