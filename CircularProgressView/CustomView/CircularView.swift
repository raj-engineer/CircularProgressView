//
//  CircularView.swift
//  CircularProgressView
//
//  Created by Rajesh Sharma on 5/13/18.
//  Copyright © 2018 Rajesh Sharma. All rights reserved.
//


import Foundation
import UIKit


class CircularView : UIView {
    //MARK: - Properties
    let shapeLayer = CAShapeLayer()
    let duration = 10
    
    //MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        circleShapeLayer()
        
    }
    
    //MARK: - Custom Action
    func circleShapeLayer(){
        
        let shape = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.bounds.width/2)
        
        let trackLayer = CAShapeLayer()
        trackLayer.path = shape.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.strokeColor = UIColor(red: 231/255.0, green: 232/255.0, blue: 234/255.0, alpha: 1.0).cgColor
        trackLayer.lineWidth = 10.0
        self.layer.addSublayer(trackLayer)
        
        
    
        shapeLayer.path = shape.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor(red: 218/255.0, green: 165/255.0, blue: 44/255.0, alpha: 1.0).cgColor
        shapeLayer.lineWidth = 10.0
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = kCALineCapRound
        self.layer.addSublayer(shapeLayer)
    
    }
    
    func addAnimation(){
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = CFTimeInterval(duration)
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "animation")
    }
}












































