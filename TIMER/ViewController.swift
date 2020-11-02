//
//  ViewController.swift
//  TIMER
//
//  Created by MAKAN on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }

    @IBAction func button(_ sender: Any) {
        
        print("Button clicked")
    }
    
    
    @objc func timerFunction () {
       
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate() // BU TIMER I DURDURUR \ BITIRIR.
            timeLabel.text = "Times`s Over"
            
        }
        
    }
}

