//
//  ViewController.swift
//  dev-profile
//
//  Created by Eduardo Malvido on 9/11/20.
//  Copyright © 2020 Eduardo Malvido. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var devsBG: UIImageView!
    @IBOutlet weak var devsLogo: UIImageView!
    @IBOutlet weak var devsLbl: UILabel!
    @IBOutlet weak var iconsSV: UIStackView!
    @IBOutlet weak var upperSV: UIStackView!
    @IBOutlet weak var lowerSV: UIStackView!
    @IBOutlet weak var DashboardBtn: UIButton!
    @IBOutlet weak var dataImg: UIImageView!
    @IBOutlet weak var videoImg: UIImageView!
    
    var iPadconst = [NSLayoutConstraint]()
    var iPhoneV = [NSLayoutConstraint]()
    var iPhoneH = [NSLayoutConstraint]()
    var allDevices = [NSLayoutConstraint]()
    
    var model = UIDevice.current.model
    var isIphone: Bool = false
    var isIpad: Bool = false
    var isLandscape: Bool = false
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        loadLayoutArrays()
    }

//    func loadLayoutArrays() {
//        allDevices = [
//            devsBG.topAnchor.constraint(equalTo: view.topAnchor),
//            devsBG.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            devsBG.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            iconsSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            devsLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            devsLogo.topAnchor.constraint(equalTo: devsBG.bottomAnchor, constant: -35),
//            devsLogo.heightAnchor.constraint(equalTo: devsBG.heightAnchor, multiplier: 0.75),
//            devsLogo.widthAnchor.constraint(equalTo: devsLogo.heightAnchor, multiplier: 1.0),
//            lowerSV.topAnchor.constraint(equalTo: upperSV.bottomAnchor, constant: 20),
//            dataImg.heightAnchor.constraint(equalTo: videoImg.heightAnchor, multiplier: 1.0),
//            DashboardBtn.heightAnchor.constraint(equalToConstant: 55),
//            DashboardBtn.widthAnchor.constraint(equalToConstant: 350)
//        ]
////
////        iPhoneV = [
////            devsBG.heightAnchor.constraint(equalToConstant: 130),
////            devsLbl.centerYAnchor.constraint(equalTo: devsLogo.centerYAnchor),
////            devsLbl.leadingAnchor.constraint(equalTo: devsLogo.trailingAnchor, constant: 15),
////            iconsSV.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////            iconsSV.topAnchor.constraint(equalTo: devsLogo.bottomAnchor, constant: 15),
////            iconsSV.heightAnchor.constraint(equalToConstant: 60),
////            upperSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
////            upperSV.topAnchor.constraint(equalTo: iconsSV.bottomAnchor, constant: 20),
////            lowerSV.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
////        ]
////
////        iPhoneH = [
////            devsBG.heightAnchor.constraint(equalToConstant: 120),
////            devsLbl.centerYAnchor.constraint(equalTo: devsLogo.centerYAnchor),
////            devsLbl.leadingAnchor.constraint(equalTo: devsLogo.trailingAnchor, constant: 15),
////            iconsSV.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////            iconsSV.topAnchor.constraint(equalTo: devsLogo.bottomAnchor, constant: 15),
////            iconsSV.heightAnchor.constraint(equalToConstant: 60),
////            upperSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
////            upperSV.topAnchor.constraint(equalTo: iconsSV.bottomAnchor, constant: 20),
////            lowerSV.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
////        ]
//
//        iPadconst = [
//            devsBG.topAnchor.constraint(equalTo: view.topAnchor),
//            devsBG.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            devsBG.trailingAnchor.constraint(equalTo: view.trailingAnchor),
////            iconsSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
////            devsLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
////            devsLogo.topAnchor.constraint(equalTo: devsBG.bottomAnchor, constant: -35),
////            devsLogo.heightAnchor.constraint(equalTo: devsBG.heightAnchor, multiplier: 0.75),
////            devsLogo.widthAnchor.constraint(equalTo: devsLogo.heightAnchor, multiplier: 1.0),
////            lowerSV.topAnchor.constraint(equalTo: upperSV.bottomAnchor, constant: 20),
////            dataImg.heightAnchor.constraint(equalTo: videoImg.heightAnchor, multiplier: 1.0),
////            DashboardBtn.heightAnchor.constraint(equalToConstant: 55),
////            DashboardBtn.widthAnchor.constraint(equalToConstant: 350),
////            devsBG.heightAnchor.constraint(equalToConstant: 175),
////            devsLbl.centerYAnchor.constraint(equalTo: devsLogo.centerYAnchor, constant: 25),
////            devsLbl.leadingAnchor.constraint(equalTo: devsLogo.trailingAnchor, constant: 15),
////            iconsSV.centerYAnchor.constraint(equalTo: devsLbl.centerYAnchor),
////            iconsSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
////            iconsSV.heightAnchor.constraint(equalToConstant: 60),
////            upperSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
////            upperSV.topAnchor.constraint(equalTo: devsLogo.bottomAnchor, constant: 50),
////            DashboardBtn.topAnchor.constraint(equalTo: lowerSV.bottomAnchor, constant: 20),
////            DashboardBtn.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
//        ]
//
//    }
//
//    override func viewDidLayoutSubviews() {
//        NSLayoutConstraint.deactivate(iPadconst)
//        NSLayoutConstraint.deactivate(iPhoneH)
//        NSLayoutConstraint.deactivate(iPhoneV)
//        isLandscape = UIDevice.current.orientation.isLandscape
//        NSLayoutConstraint.activate(allDevices)
//        if model == "iPad" {
//            NSLayoutConstraint.activate(iPadconst)
//        } else if model == "iPhone" {
//            if isLandscape {
//                NSLayoutConstraint.activate(iPhoneH)
//            } else {
//                NSLayoutConstraint.activate(iPhoneV)
//            }
//        }
//    }

}

