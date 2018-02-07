//
//  ViewController.swift
//  WeiboComposeAnnimationDemo
//
//  Created by 张宇 on 2018/2/7.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - 属性
    @IBOutlet var btnOffsetY: [NSLayoutConstraint]!
    
    var  popAndMove = false
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

//MARK: - 动画
extension ViewController{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         popAndMove = !popAndMove
        if popAndMove {
            popAnimation()
        }else{
            moveAnination()
        }
    }
    
    func popAnimation(){
        
        for (i,btnY) in btnOffsetY.enumerated(){
            btnY.constant  =  0
            UIView.animate(withDuration: 1, delay: TimeInterval(Double(i)*0.5), options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            }, completion: { (isfinish) in
                
            })
        }
       
        
    }
    
    func moveAnination(){
        for (i,btnY) in btnOffsetY.enumerated(){
            btnY.constant  =  220
            UIView.animate(withDuration: 1, delay: TimeInterval(Double(i)*0.5), options: .curveEaseInOut, animations: {
                self.view.layoutIfNeeded()
            }, completion: { (isfinish) in
                
            })
        }
    }
}
