//
//  Router.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/3/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func navigateToNextViewController(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: STORYBOARD_ID_FILTERS) as? UINavigationController
        if let viewContrl = vc {
            self.present(viewContrl, animated: true, completion: nil)
        }
    }
}
