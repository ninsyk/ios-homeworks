//
//  ViewController.swift
//  Netology_IB_Instruments
//
//  Created by playrix on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadFromNib()
        // Do any additional setup after loading the view.
    }
    
    func loadFromNib() {
        if let xibView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as?
            ProfileView {
            xibView.frame = CGRect(x: 0, y: 10, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            view.addSubview(xibView)
        }
    }


}

