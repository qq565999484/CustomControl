//
//  ViewController.swift
//  CustomControl
//
//  Created by chenyh on 16/7/4.
//  Copyright © 2016年 chenyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let rangeSlider = RangeSlider(frame:CGRectZero)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    rangeSlider.backgroundColor = UIColor.redColor()
    view.addSubview(rangeSlider)
        
        
    }
    
    
    
    //完成布局的时候
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        
        rangeSlider.frame = CGRect(x:margin,y: margin,width:width,height: 31.0)
        
        rangeSlider.backgroundColor = UIColor.clearColor()
        
        rangeSlider.addTarget(self, action: #selector(ViewController.rangeSliderValueChange(_:)), forControlEvents: .ValueChanged)
        
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.rangeSlider.trackHighlightTintColor = UIColor.redColor()
            self.rangeSlider.curvaceousness = 0.0
        }
        
    }
    
    
    func rangeSliderValueChange(rangeSlider: RangeSlider) {
        print("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

