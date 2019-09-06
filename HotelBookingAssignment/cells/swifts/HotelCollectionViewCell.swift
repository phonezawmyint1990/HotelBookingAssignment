//
//  HotelCollectionViewCell.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/3/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class HotelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ivHotel: UIImageView!
    @IBOutlet weak var lblHotelName: UILabel!
    @IBOutlet weak var lblHotelAddress: UILabel!
    @IBOutlet weak var lblHotelPrice: UILabel!
    
    var mData:HotelVO!{
        didSet{
            ivHotel.image = mData.hotelImg
            lblHotelName.text = mData.hotelName
            lblHotelAddress.text = mData.address
            lblHotelPrice.text = "$" + mData.price + "/day"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
