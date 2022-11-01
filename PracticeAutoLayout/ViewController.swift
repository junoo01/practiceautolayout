//
//  ViewController.swift
//  PracticeAutoLayout
//
//  Created by Apple on 31/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topContraints: NSLayoutConstraint!
    @IBOutlet weak var timeLablel: UILabel!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var botContraint: NSLayoutConstraint!
    
    var timer: Timer!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        timeLablel.text = "\(count)"
    }
    @objc func runTimer() {
        count += 1
        
        topContraints.constant += 50
        timeLablel.text = "\(count)"
//        if count <= 0 {
//            timer.invalidate()
//        }
        let viewHeight = waterView.viewHeight
        print(viewHeight)
//        var sumC = topContraints.constant + botContraint.constant
//        print(sumC)
        if viewHeight == 0 {
            timer.invalidate()
        }
       
        
    }
    
    

}

extension UIView {
    public var viewHeight: CGFloat {
        return self.frame.size.height
    }
}
