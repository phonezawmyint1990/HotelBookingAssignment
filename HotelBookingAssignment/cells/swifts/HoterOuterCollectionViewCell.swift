//
//  HoterOuterCollectionViewCell.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/3/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class HoterOuterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var hotelInnerCollectionView: UICollectionView!
    
    
    var hotelList:[HotelVO] = HotelVO.getTopHotelList()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hotelInnerCollectionView.delegate = self
        hotelInnerCollectionView.dataSource = self
        
        let layout = hotelInnerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 280 , height: 180)
        
        hotelInnerCollectionView.registerForCollectionViewCell(strID: String(describing: HotelCollectionViewCell.self))
    }

}

extension HoterOuterCollectionViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HotelCollectionViewCell.self), for: indexPath) as! HotelCollectionViewCell
        item.mData = hotelList[indexPath.row]
        return item
    }
    
    
}

extension HoterOuterCollectionViewCell: UICollectionViewDelegate{
    
}
