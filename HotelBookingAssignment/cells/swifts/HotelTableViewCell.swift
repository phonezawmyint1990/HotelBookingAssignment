//
//  HotelTableViewCell.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/2/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit
import SDWebImage

class HotelTableViewCell: UITableViewCell {

    @IBOutlet weak var ivHotel: UIImageView!
    @IBOutlet weak var lblHotelName: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblServices: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    var mData:HotelVO!{
        didSet {
            //ivHotel.sd_setImage(with: URL(string: mData.hotelImg), completed: nil)
            ivHotel.image = mData.hotelImg
            lblHotelName.text = mData.hotelName
            lblDiscount.text = mData.discount
            lblAddress.text = mData.address
            lblServices.text = mData.services
            lblRating.text = mData.rating
            lblPrice.text = "$" + mData.price + "/day"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        ivHotel.layer.cornerRadius = 8
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
