//
//  ViewController.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/2/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var vCount: UIView!
    @IBOutlet weak var vNearby: UIView!
    @IBOutlet weak var vPopular: UIView!
    @IBOutlet weak var vAll: UIView!
    @IBOutlet weak var lblNearby: UILabel!
    @IBOutlet weak var lblPopular: UILabel!
    @IBOutlet weak var lblAll: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var hotelTableView: UITableView!
    var hotelList: [HotelVO] = HotelVO.getNearByHotelList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivProfile.layer.cornerRadius = ivProfile.frame.width/2
        ivProfile.layer.borderWidth = 1
        ivProfile.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        vCount.layer.cornerRadius = vCount.frame.width/2
        vNearby.layer.cornerRadius = vNearby.frame.width/2
        vPopular.layer.cornerRadius = vPopular.frame.width/2
        vAll.layer.cornerRadius = vAll.frame.width/2
        vPopular.backgroundColor = UIColor.clear
        vAll.backgroundColor = UIColor.clear
        lblPopular.textColor = UIColor(white: 0, alpha: 0.5)
        lblAll.textColor = UIColor(white: 0, alpha: 0.5)
        lblLocation.textColor = UIColor(white: 0, alpha: 0.5)
        hotelTableView.delegate = self
        hotelTableView.dataSource = self
        hotelTableView.registerForTableViewCell(strID: String(describing: HotelTableViewCell.self))
        hotelTableView.separatorColor = UIColor.clear
        
        lblNearby.tag = 1
        lblPopular.tag = 2
        lblAll.tag = 3
        
        let lblList : [Any] = [lblNearby,lblPopular,lblAll]
        for lbl in lblList {
            self.addGesture(to: lbl)
        }
    }
    
    func addGesture(to:Any){
        if let lbl = to as? UILabel {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tappedLabel(_:)))
            lbl.addGestureRecognizer(tapGesture)
            lbl.isUserInteractionEnabled = true
        }
    }
    
    @objc func tappedLabel(_ sender:UITapGestureRecognizer){
        switch sender.view?.tag {
        case 1:
            vNearby.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            vPopular.backgroundColor = UIColor.clear
            vAll.backgroundColor = UIColor.clear
            lblNearby.textColor = UIColor(white: 0, alpha: 1)
            lblPopular.textColor = UIColor(white: 0, alpha: 0.5)
            lblAll.textColor = UIColor(white: 0, alpha: 0.5)
            hotelList = HotelVO.getNearByHotelList()
            hotelTableView.reloadData()
            break
        case 2:
            vNearby.backgroundColor = UIColor.clear
            vPopular.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            vAll.backgroundColor = UIColor.clear
            lblNearby.textColor = UIColor(white: 0, alpha: 0.5)
            lblPopular.textColor = UIColor(white: 0, alpha: 1)
            lblAll.textColor = UIColor(white: 0, alpha: 0.5)
            hotelList = HotelVO.getPopularHotelList()
            hotelTableView.reloadData()
            break
        case 3:
            vNearby.backgroundColor = UIColor.clear
            vPopular.backgroundColor = UIColor.clear
            vAll.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            lblNearby.textColor = UIColor(white: 0, alpha: 0.5)
            lblPopular.textColor = UIColor(white: 0, alpha: 0.5)
            lblAll.textColor = UIColor(white: 0, alpha: 1)
            hotelList = HotelVO.getAllHotelList()
            hotelTableView.reloadData()
            break
        default:
            break
        }
    }
}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HotelTableViewCell.self), for: indexPath) as! HotelTableViewCell
        cell.mData = hotelList[indexPath.row]
        return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate{
    
}
