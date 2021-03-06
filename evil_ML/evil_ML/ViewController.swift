//
//  ViewController.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/7/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    

    var circle_colors = [UIColor.white.cgColor, UIColor.white.cgColor, UIColor.white.cgColor, UIColor.white.cgColor,UIColor.white.cgColor,UIColor.white.cgColor,]
    var circle_ptr = 0
    let navigation_controller = UINavigationController()
    let trackLayer = CAShapeLayer()
    let trackLayer_2 = CAShapeLayer()
    let trackLayer_3 = CAShapeLayer()
    let trackLayer_4 = CAShapeLayer()
    let trackLayer_5 = CAShapeLayer()
    let trackLayer_6 = CAShapeLayer()
    var questionView = UIViewController()
    var question_views = [QuestionViewController(), Question2ViewController(), Question3ViewController(), Question4ViewController(), Question5ViewController(), Question6ViewController(), QuestionFinalViewController()]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 244/255, green: 245/255, blue: 250/255, alpha: 1)
        
        let backButton = backButtonView()
        backButton.addTarget(self, action: #selector(backButtonAction(_:)), for: .touchUpInside)
//        let progress_bar = progressBarView(circle_colors: circle_colors)
        
        let progress_bar = UIView()
        let center_1 = CGPoint(x: 80, y: 100)
        let center_2 = CGPoint(x: 110, y: 100)
        let center_3 = CGPoint(x: 140, y: 100)
        let center_4 = CGPoint(x: 170, y: 100)
        let center_5 = CGPoint(x: 200, y: 100)
        let center_6 = CGPoint(x: 230, y: 100)
        let circle_1 = UIBezierPath(arcCenter: center_1, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        let circle_2 = UIBezierPath(arcCenter: center_2, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        let circle_3 = UIBezierPath(arcCenter: center_3, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        let circle_4 = UIBezierPath(arcCenter: center_4, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        let circle_5 = UIBezierPath(arcCenter: center_5, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        let circle_6 = UIBezierPath(arcCenter: center_6, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
               
               //track layer
//        let trackLayer = CAShapeLayer()
        trackLayer.path = circle_1.cgPath
        trackLayer.strokeColor = circle_colors[0]
        trackLayer.lineWidth = 10
        trackLayer.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer)

//        let trackLayer_2 = CAShapeLayer()
        trackLayer_2.path = circle_2.cgPath
        trackLayer_2.strokeColor = circle_colors[1]
        trackLayer_2.lineWidth = 10
        trackLayer_2.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer_2)

//        let trackLayer_3 = CAShapeLayer()
        trackLayer_3.path = circle_3.cgPath
        trackLayer_3.strokeColor = circle_colors[2]
        trackLayer_3.lineWidth = 10
        trackLayer_3.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer_3)
        
        trackLayer_4.path = circle_4.cgPath
        trackLayer_4.strokeColor = circle_colors[3]
        trackLayer_4.lineWidth = 10
        trackLayer_4.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer_4)
        
        trackLayer_5.path = circle_5.cgPath
        trackLayer_5.strokeColor = circle_colors[4]
        trackLayer_5.lineWidth = 10
        trackLayer_5.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer_5)
        
        trackLayer_6.path = circle_6.cgPath
        trackLayer_6.strokeColor = circle_colors[5]
        trackLayer_6.lineWidth = 10
        trackLayer_6.lineCap = CAShapeLayerLineCap.round
        progress_bar.layer.addSublayer(trackLayer_6)
        
        view.addSubview(backButton)
        view.addSubview(progress_bar)
        let test = UITextField()
        self.view.addSubview(test)
        questionView = question_views[circle_ptr]
        self.addChild(questionView)
        questionView.view.frame = CGRect(x: 50, y: 200, width: 300, height: 600)
            questionView.view.layer.shadowColor = UIColor.lightGray.cgColor
        questionView.view.layer.shadowOffset = CGSize(width: 2, height: 2.0)
        questionView.view.layer.masksToBounds = false
        questionView.view.layer.shadowRadius = 15.0
        questionView.view.layer.shadowOpacity = 0.2
        questionView.view.layer.cornerRadius = 8
        self.view.addSubview(questionView.view)
        questionView.didMove(toParent: self)

        
        let nextButton = nextButtonView()
        // Set button action
        nextButton.addTarget(self, action: #selector(nextButtonAction(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
        
         backButton.snp.makeConstraints {  (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(40)
            make.right.equalTo(view).offset(-300)
            make.bottom.equalTo(view).offset(-810)
        }
        
        progress_bar.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(45)
            make.top.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-30)
        }
        
        questionView.view.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(40)
            make.top.equalTo(view).offset(150)
            make.bottom.equalTo(view).offset(-160)
            make.right.equalTo(view).offset(-40)
        }
        
        nextButton.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(200)
            make.top.equalTo(view).offset(750)
            make.bottom.equalTo(view).offset(-100)
            make.right.equalTo(view).offset(-40)
        }
        

        
    }
    @objc func nextButtonAction(_ sender:UIButton!)
    {
        
//        self.present(ViewController3.init(), animated: true, completion: nil)
//        self.navigationController?.pushViewController(ViewController2(), animated: true)
        if circle_ptr < circle_colors.count {
            circle_colors[circle_ptr] = UIColor.blue.cgColor
            self.trackLayer.strokeColor = circle_colors[0]
            self.trackLayer_2.strokeColor = circle_colors[1]
            self.trackLayer_3.strokeColor = circle_colors[2]
            self.trackLayer_4.strokeColor = circle_colors[3]
            self.trackLayer_5.strokeColor = circle_colors[4]
            self.trackLayer_6.strokeColor = circle_colors[5]
            
            questionView = question_views[circle_ptr + 1]
            questionView.view.frame = CGRect(x: 50, y: 200, width: 300, height: 600)
            questionView.view.layer.cornerRadius = 8
            self.view.addSubview(questionView.view)
            questionView.didMove(toParent: self)
            
            questionView.view.snp.makeConstraints { (make) -> Void in
                make.left.equalTo(view).offset(40)
                make.top.equalTo(view).offset(150)
                make.bottom.equalTo(view).offset(-160)
                make.right.equalTo(view).offset(-40)
            }
            circle_ptr += 1
            print(circle_ptr)
        }
//        viewDidLoad()

//        self.view.setNeedsDisplay()
        print("next Button tapped")
    }
    
    @objc func backButtonAction(_ sender:UIButton!) {
        if circle_ptr > 0 && circle_ptr <= circle_colors.count {
            circle_ptr -= 1
            circle_colors[circle_ptr] = UIColor.white.cgColor
           self.trackLayer.strokeColor = circle_colors[0]
           self.trackLayer_2.strokeColor = circle_colors[1]
           self.trackLayer_3.strokeColor = circle_colors[2]
            self.trackLayer_4.strokeColor = circle_colors[3]
            self.trackLayer_5.strokeColor = circle_colors[4]
            self.trackLayer_6.strokeColor = circle_colors[5]
            
            questionView = question_views[circle_ptr]
            questionView.view.frame = CGRect(x: 50, y: 200, width: 300, height: 600)
            questionView.view.layer.cornerRadius = 8
            self.view.addSubview(questionView.view)
            questionView.didMove(toParent: self)
            
            questionView.view.snp.makeConstraints { (make) -> Void in
                make.left.equalTo(view).offset(40)
                make.top.equalTo(view).offset(150)
                make.bottom.equalTo(view).offset(-160)
                make.right.equalTo(view).offset(-40)
            }
            print(circle_ptr)
        }
//        viewDidLoad()
        self.view.setNeedsDisplay()
        print("back Button tapped")
    }
    


}

