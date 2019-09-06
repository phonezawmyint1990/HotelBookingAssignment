//
//  Extension.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/2/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{
    func registerForTableViewCell(strID: String){
        register(UINib(nibName:strID, bundle: nil), forCellReuseIdentifier: strID)
    }
}

extension UICollectionView{
    func registerForCollectionViewCell(strID: String){
       register(UINib(nibName: strID, bundle: nil), forCellWithReuseIdentifier: strID)
    }
    
    func registerForResuableSectionHeaderCollectionViewCell(strID: String){
        register(UINib(nibName: strID, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: strID)
    }
    
    func registerForResuableSectionFooterCollectionViewCell(strID: String){
        register(UINib(nibName: strID, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: strID)
    }
}


extension UIButton{
    func addStarImgToButton(){
        let imgView = UIImageView(image: #imageLiteral(resourceName: "icon_btnStar1"))
        let imgsize: CGFloat = 15
       imgView.frame = CGRect(x: self.frame.width-imgsize-18, y: (self.frame.height/2)-imgsize/2, width: imgsize, height: imgsize)
        self.addSubview(imgView)
    }
}
