//
//  SearchViewController.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/2/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit
import FittedSheets

class SearchViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var hotelOuterCollectionView: UICollectionView!
    @IBOutlet weak var tfCheckIn: UITextField!
    @IBOutlet weak var tfCheckOut: UITextField!
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var ivLocation: UIImageView!
    
    
    var checkInDatePicker: UIDatePicker?
    var checkOutDatePicker: UIDatePicker?
    
    let formatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        tfCheckIn.delegate = self
        tfCheckOut.delegate = self

        let imgView = UIImageView(image: #imageLiteral(resourceName: "icon_filter"))
        let imgsize: CGFloat = 20
        imgView.frame = CGRect(x: 10, y: (btnFilter.frame.height/2)-imgsize/2, width: imgsize, height: imgsize)
        btnFilter.addSubview(imgView)
        btnFilter.layer.cornerRadius = 20
  
        formatter.dateFormat = "dd MMM, yyyy"
        
        checkInDatePicker = UIDatePicker()
        checkInDatePicker?.datePickerMode = .date
        checkInDatePicker?.addTarget(self, action: #selector(selectedDateForCheckIn(datePicker:)), for: .valueChanged)
        tfCheckIn.inputView = checkInDatePicker
        
        
        checkOutDatePicker = UIDatePicker()
        checkOutDatePicker?.datePickerMode = .date
        checkOutDatePicker?.addTarget(self, action: #selector(selectedDateForCheckOut(datePicker:)), for: .valueChanged)
        tfCheckOut.inputView = checkOutDatePicker
    
        hotelOuterCollectionView.delegate = self
        hotelOuterCollectionView.dataSource = self
        
        let layout = hotelOuterCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: (self.view.frame.width - 50), height: 200)
        
        hotelOuterCollectionView.registerForCollectionViewCell(strID: String(describing: HoterOuterCollectionViewCell.self))
        hotelOuterCollectionView.registerForResuableSectionHeaderCollectionViewCell(strID: String(describing: SectionCustomCollectionReusableView.self))
        hotelOuterCollectionView.registerForResuableSectionFooterCollectionViewCell(strID: String(describing: SectionCustomCollectionReusableView.self))
    }
    
    @objc func selectedDateForCheckIn(datePicker: UIDatePicker){
        tfCheckIn.text = formatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func selectedDateForCheckOut(datePicker: UIDatePicker){
        tfCheckOut.text = formatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @IBAction func btnFilterAction(_ sender: Any) {
        //navigateToNextViewController()
        let controller = SheetViewController(controller: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: STORYBOARD_ID_FILTERS), sizes: [.fixed(self.view.frame.height * 3/4) , .fixed(self.view.frame.height * 2/4), .fixed(self.view.frame.height * 1/4), .fullScreen])
        controller.topCornersRadius = 15
        controller.handleColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3)
        self.present(controller, animated: false, completion: nil)
    }
    
    
}


extension SearchViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HoterOuterCollectionViewCell.self), for: indexPath) as! HoterOuterCollectionViewCell
        return item
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

extension SearchViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: SectionCustomCollectionReusableView.self), for: indexPath) as! SectionCustomCollectionReusableView
            headerView.lblSectionHeader.text = "TOP SEARCHES"
            return headerView
        }else{
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: SectionCustomCollectionReusableView.self), for: indexPath) as! SectionCustomCollectionReusableView
            footerView.lblSectionHeader.text = "RECENT SEARCHES"
            return footerView
        }
        
    }
}
