//
//  InitialViewController.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import UIKit
import Lottie

class InitialViewController: UIViewController {
    
    // MARK: - Outletes
    @IBOutlet weak var shoppingCartView: AnimationView!
    @IBOutlet weak var startShoppingBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initial Animation Setup
        shoppingCartView.contentMode = .scaleAspectFit
        shoppingCartView.loopMode = .loop
        shoppingCartView.animationSpeed = 1
        shoppingCartView.play()
    }
    
    // MARK: - Shopping Button Action
    @IBAction func btnStartBtnPressed(_ sender: Any) {
        do {
            let client = try SafeClient(wrapping: DezervTestClient())
            let controller = FetchProductsService(client: client).createScene()
            let navigationController = UINavigationController(rootViewController: controller)
            self.present(navigationController, animated: true, completion: nil)
        } catch let error {
            print("Unable to load view:\n\(error.localizedDescription)")
        }
    }
}
