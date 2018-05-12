//
//  ViewController.swift
//  CircularProgressView
//
//  Created by Rajesh Sharma on 5/12/18.
//  Copyright © 2018 Rajesh Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var circleView: CircularView!
    
    //MARK: - Properties
    let shapeLayer = CAShapeLayer()
    var timer  = Timer()
    var duration = 10
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTime.text = "\(duration)"
    }
    
     //MARK: - IBAction
    @IBAction func startAction(_ sender: UIButton) {
        labelTime.text = "\(duration)"
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        circleView.addAnimation()
    }

    @objc func updateTimer() {
        if duration < 1 {
            timer.invalidate()
            duration = 10
            //Send alert to indicate "time's up!"
            print("Stop Timer")
        } else {
            duration = duration-1
            labelTime.text = "\(duration)"
        }
    }
}

