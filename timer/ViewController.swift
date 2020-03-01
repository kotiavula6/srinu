//
//  ViewController.swift
//  timer
//
//  Created by avula koti on 25/01/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTimer: UILabel!
    @IBOutlet weak var pauselabel: UIButton!
    @IBOutlet weak var startButton: UIButton!

    var timer: Timer?
    var timeIntervel = 1
    var seconds = 0
    var minutes = 0
    var hours = 0
    var repeates = true
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func timeUpadate() {
    timer = Timer.scheduledTimer(timeInterval: TimeInterval(timeIntervel), target: self, selector: #selector(runtimer), userInfo: nil, repeats: repeates)

    }
    @IBAction func onTapIncreateButton(_ sender: UIButton) {
           timeUpadate()
           timeIntervel += 0
           
       }
    @IBAction func stepper(_ sender: UIStepper) {

    }
    @objc func runtimer()
   {
       seconds += 1
    self.labelTimer.text = "\(hours) : " + "\(minutes)" + " : \(seconds)"
       if seconds >= 0 {
     
       }
    if seconds >= 59{
        seconds = 0
        minutes += 1
    }
    if minutes >= 59{
        minutes = 0
        hours += 1
    }
   }
    
    @IBAction func Start(_ sender: UIButton) {
        timeUpadate()
       
    }
    @IBAction func Stop(_ sender: UIButton) {
        timeUpadate()
        timer?.invalidate()
        //timer = false
        repeates = false
    }
    @IBAction func PauseButton(_ sender: UIButton) {
        
//        timeUpadate()
//        repeates = false
    }
    @IBAction func IncreaseButton(_ sender: UIButton) {
        
    }
    @IBAction func DecreaseButton(_ sender: UIButton) {
    }
}

