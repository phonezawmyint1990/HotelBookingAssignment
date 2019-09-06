//
//  FilterViewController.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/3/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var btnNone: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var vFirstCircle: UIView!
    @IBOutlet weak var vSecondCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnNone.layer.cornerRadius = 5
        btnNone.layer.borderWidth = 1
        btnNone.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnOne.layer.cornerRadius = 5
        btnOne.layer.borderWidth = 1
        btnOne.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnTwo.layer.cornerRadius = 5
        btnTwo.layer.borderWidth = 1
        btnTwo.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnThree.layer.cornerRadius = 5
        btnThree.layer.borderWidth = 1
        btnThree.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnFour.layer.cornerRadius = 5
        btnFour.layer.borderWidth = 1
        btnFour.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnFive.layer.cornerRadius = 5
        btnFive.layer.borderWidth = 1
        btnFive.layer.borderColor = #colorLiteral(red: 0.8999999762, green: 0.8999999762, blue: 0.8999999762, alpha: 1)
        
        btnOne.addStarImgToButton()
        btnTwo.addStarImgToButton()
        btnThree.addStarImgToButton()
        btnFour.addStarImgToButton()
        btnFive.addStarImgToButton()
        
        vFirstCircle.layer.cornerRadius = vFirstCircle.frame.width/2
        vFirstCircle.layer.borderWidth = 1
        vFirstCircle.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        vSecondCircle.layer.cornerRadius = vSecondCircle.frame.width/2
        vSecondCircle.layer.borderWidth = 1
        vSecondCircle.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }

    @IBAction func btnCancleAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnNoneAction(_ sender: Any) {
        btnNone.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnOne.backgroundColor = UIColor.clear
        btnTwo.backgroundColor = UIColor.clear
        btnThree.backgroundColor = UIColor.clear
        btnFour.backgroundColor = UIColor.clear
        btnFive.backgroundColor = UIColor.clear
        btnNone.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func btnOneAction(_ sender: Any) {
        btnNone.backgroundColor = UIColor.clear
        btnOne.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnTwo.backgroundColor = UIColor.clear
        btnThree.backgroundColor = UIColor.clear
        btnFour.backgroundColor = UIColor.clear
        btnFive.backgroundColor = UIColor.clear
        btnOne.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func btnTwoAction(_ sender: Any) {
        btnNone.backgroundColor = UIColor.clear
        btnOne.backgroundColor = UIColor.clear
        btnTwo.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnThree.backgroundColor = UIColor.clear
        btnFour.backgroundColor = UIColor.clear
        btnFive.backgroundColor = UIColor.clear
        btnTwo.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func btnThreeAction(_ sender: Any) {
        btnNone.backgroundColor = UIColor.clear
        btnOne.backgroundColor = UIColor.clear
        btnTwo.backgroundColor = UIColor.clear
        btnThree.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnFour.backgroundColor = UIColor.clear
        btnFive.backgroundColor = UIColor.clear
        btnThree.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func btnFourAction(_ sender: Any) {
        btnNone.backgroundColor = UIColor.clear
        btnOne.backgroundColor = UIColor.clear
        btnTwo.backgroundColor = UIColor.clear
        btnThree.backgroundColor = UIColor.clear
        btnFour.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnFive.backgroundColor = UIColor.clear
        btnFour.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func btnFiveAction(_ sender: Any) {
        btnNone.backgroundColor = UIColor.clear
        btnOne.backgroundColor = UIColor.clear
        btnTwo.backgroundColor = UIColor.clear
        btnThree.backgroundColor = UIColor.clear
        btnFour.backgroundColor = UIColor.clear
        btnFive.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        btnFive.titleLabel?.textColor = UIColor.white
    }
    
}
