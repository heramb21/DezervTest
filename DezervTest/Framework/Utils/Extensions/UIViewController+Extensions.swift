//
//  UIViewController+Extensions.swift
//  PaytmInsiderTest
//
//  Created by Heramb Joshi on 8/6/20.
//  Copyright © 2020 Heramb Joshi. All rights reserved.
//

import UIKit
import ReactiveKit

extension UIViewController {
    
    func alert(_ title: String? = nil, _ message: String? = nil, callback: ((UIAlertAction) -> ())? = nil) {
        let vc = UIAlertController(title: title, message: message, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .cancel, handler: callback))
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func showLoading() {
        let progressHUD = LottieProgressHUD.shared
        progressHUD.animationFileName = "productLoading"
        progressHUD.hudHeight = 100
        progressHUD.hudWidth = 100
        progressHUD.center = self.view.center
        progressHUD.hudBackgroundColor = UIColor().pitLightBGColor()
        progressHUD.borderColor = UIColor.clear.cgColor
        self.view.addSubview(progressHUD)
        progressHUD.show()
    }
    
    @objc func hideLoading() {
        let view = self.view
        let progressHUD = LottieProgressHUD.shared
        if ((view?.subviews.contains(progressHUD)) != nil) {
            progressHUD.hide()
        }else{
            progressHUD.hide()
        }
    }
}
