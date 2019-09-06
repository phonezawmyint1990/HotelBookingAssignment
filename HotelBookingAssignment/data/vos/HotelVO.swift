//
//  HotelVO.swift
//  HotelBookingAssignment
//
//  Created by Aung Ko Ko on 9/4/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
import UIKit

class HotelVO {
    var hotelName: String = ""
    var hotelImg: UIImage?
    var price: String = ""
    var discount: String = ""
    var address: String = ""
    var services: String = ""
    var rating: String = ""
    
    init(hotelName:String, hotelImg:UIImage, price:String, discount:String, address:String, services:String, rating:String) {
        self.hotelName = hotelName
        self.hotelImg = hotelImg
        self.price = price
        self.discount = discount
        self.address = address
        self.services = services
        self.rating = rating
    }
    
}

extension HotelVO {
   static func getNearByHotelList() -> [HotelVO] {
        return [
                .init(hotelName: "Sedona Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sedona"), price: "99", discount: "FREE BUFFET DINNER", address: "Yankin, Yangon", services: "Free Wifi . Swimming", rating: "4.3(21 ratings)"),
                .init(hotelName: "Sule Shangrila Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sule"), price: "88", discount: "FREE TEA TIME", address: "Sule, Yangon", services: "Free Wifi . Free Transportation", rating: "4.8(22 ratings)"),
                .init(hotelName: "LOTEE Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_lotee"), price: "90", discount: "GET 20% OFF", address: "Hlaing, Yangon", services: "Free Wifi . Swimming", rating: "4.9(26 ratings)"),
                .init(hotelName: "Maliea Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_maliea"), price: "79", discount: "GET 10% DINNER", address: "Yangon, Myanmar", services: "Free Wifi . GOLF", rating: "4.7(25 ratings)"),
               .init(hotelName: "Novotel Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_novotel"), price: "99", discount: "FREE DINNER", address: "Kamayut, Yangon", services: "Free Wifi", rating: "4.9(30 ratings)")]
    }
    
    static func getPopularHotelList() -> [HotelVO] {
        return [.init(hotelName: "The Westeen", hotelImg: #imageLiteral(resourceName: "img_hotel_westeen") ,price: "89", discount: "GET 50% OFF", address: "Gulshan Circle 2, Dhaka", services: "Free Wifi . Swimming", rating: "4.5 (21 ratings)"),
                .init(hotelName: "Hotel Zwekabin", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelzwegabin"), price: "79", discount: "30% LUNCH", address: "Hpa-An, Myanmar", services: "Free Wifi .Local Guide ", rating: "4.8(28ratings)"),
                .init(hotelName: "Park Royal Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_parkroyal"), price: "98", discount: "FREE KARAOKE 1 Time", address: "Bahan, Yangon", services: "Free Wifi . Swimming", rating: "4.4(24 ratings)"),
                .init(hotelName: "Hotel G", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelG"), price: "89", discount: "30% OFF DINNER", address: "Kyauktada, Yangon", services: "Free Wifi", rating: "4.5(26 ratings)"),
                .init(hotelName: "Sky Star Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_skystar"), price: "88", discount: "50% OFF DINNER", address: "Tamwe, Yangon", services: "Free Wifi", rating: "4.9(29 ratings)")]
    }
    
    static func getAllHotelList() -> [HotelVO] {
        return [
            
            .init(hotelName: "Sky Star Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_skystar"), price: "88", discount: "50% OFF DINNER", address: "Tamwe, Yangon", services: "Free Wifi", rating: "4.9(29 ratings)"),
            .init(hotelName: "Novotel Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_novotel"), price: "99", discount: "FREE DINNER", address: "Kamayut, Yangon", services: "Free Wifi", rating: "4.9(30 ratings)"),
            .init(hotelName: "Maliea Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_maliea"), price: "79", discount: "GET 10% DINNER", address: "Yangon, Myanmar", services: "Free Wifi . GOLF", rating: "4.7(25 ratings)"),
            .init(hotelName: "Hotel G", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelG"), price: "89", discount: "30% OFF DINNER", address: "Kyauktada, Yangon", services: "Free Wifi", rating: "4.5(26 ratings)"),
            .init(hotelName: "The Westeen", hotelImg: #imageLiteral(resourceName: "img_hotel_westeen") ,price: "89", discount: "GET 50% OFF", address: "Gulshan Circle 2, Dhaka", services: "Free Wifi . Swimming", rating: "4.5 (21 ratings)"),
            .init(hotelName: "Park Royal Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_parkroyal"), price: "98", discount: "FREE KARAOKE 1 Time", address: "Bahan, Yangon", services: "Free Wifi . Swimming", rating: "4.4(24 ratings)"),
            .init(hotelName: "Sedona Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sedona"), price: "99", discount: "FREE BUFFET DINNER", address: "Yankin, Yangon", services: "Free Wifi . Swimming", rating: "4.3(21 ratings)"),
            .init(hotelName: "Sule Shangrila Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sule"), price: "88", discount: "FREE TEA TIME", address: "Sule, Yangon", services: "Free Wifi . Free Transportation", rating: "4.8(22 ratings)"),
            .init(hotelName: "LOTEE Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_lotee"), price: "90", discount: "GET 20% OFF", address: "Hlaing, Yangon", services: "Free Wifi . Swimming", rating: "4.9(26 ratings)"),
            .init(hotelName: "Hotel Zwekabin", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelzwegabin"), price: "79", discount: "30% LUNCH", address: "Hpa-An, Myanmar", services: "Free Wifi .Local Guide ", rating: "4.8(28ratings)")
                ]
    }

    
    static func getTopHotelList() -> [HotelVO] {
        return [
            .init(hotelName: "Tulip Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_tulip"), price: "89", discount: "50% OFF DINNER", address: "Coxbazar, Chittagong", services: "Free Wifi", rating: "4.3(21 ratings)"),
            .init(hotelName: "Radison Blu", hotelImg: #imageLiteral(resourceName: "img_hotel_radison"), price: "89", discount: "FREE DINNER", address: "Airpot Road, Dhaka", services: "Free Wifi", rating: "4.3(21 ratings)"),
            .init(hotelName: "Maliea Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_maliea"), price: "79", discount: "GET 10% DINNER", address: "Yangon, Myanmar", services: "Free Wifi . GOLF", rating: "4.7(25 ratings)"),
            .init(hotelName: "Hotel G", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelG"), price: "89", discount: "30% OFF DINNER", address: "Kyauktada, Yangon", services: "Free Wifi", rating: "4.5(26 ratings)"),
            .init(hotelName: "The Westeen", hotelImg: #imageLiteral(resourceName: "img_hotel_westeen") ,price: "89", discount: "GET 50% OFF", address: "Gulshan Circle 2, Dhaka", services: "Free Wifi . Swimming", rating: "4.5 (21 ratings)"),
            .init(hotelName: "Park Royal Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_parkroyal"), price: "98", discount: "FREE KARAOKE 1 Time", address: "Bahan, Yangon", services: "Free Wifi . Swimming", rating: "4.4(24 ratings)"),
            .init(hotelName: "Sedona Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sedona"), price: "99", discount: "FREE BUFFET DINNER", address: "Yankin, Yangon", services: "Free Wifi . Swimming", rating: "4.3(21 ratings)"),
            .init(hotelName: "Sule Shangrila Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_sule"), price: "88", discount: "FREE TEA TIME", address: "Sule, Yangon", services: "Free Wifi . Free Transportation", rating: "4.8(22 ratings)"),
            .init(hotelName: "LOTEE Hotel", hotelImg: #imageLiteral(resourceName: "img_hotel_lotee"), price: "90", discount: "GET 20% OFF", address: "Hlaing, Yangon", services: "Free Wifi . Swimming", rating: "4.9(26 ratings)"),
            .init(hotelName: "Hotel Zwekabin", hotelImg: #imageLiteral(resourceName: "img_hotel_hotelzwegabin"), price: "79", discount: "30% LUNCH", address: "Hpa-An, Myanmar", services: "Free Wifi .Local Guide ", rating: "4.8(28ratings)")
        ]
    }
}
