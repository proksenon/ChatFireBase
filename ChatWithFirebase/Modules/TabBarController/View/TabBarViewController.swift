//
//  TreatmentViewController.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import UIKit

final class TabBarViewController: UITabBarController {

	var output: TabBarViewOutput?

	@IBAction func gg() {
		print("gg")
	}
	

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "clock"), style: .done, target: self, action: #selector(gg))
        // Do any additional setup after loading the view.
    }


}

extension TabBarViewController: TabBarViewInput {
	
}
