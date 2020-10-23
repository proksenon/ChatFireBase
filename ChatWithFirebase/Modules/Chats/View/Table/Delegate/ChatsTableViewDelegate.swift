//
//  ChatsTableViewDelegate.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import UIKit

final class ChatsTableViewDelegate:NSObject, UITableViewDelegate {

	weak var output: ChatsTableViewDelegateOutput?

	init(output: ChatsTableViewDelegateOutput){
		super.init()
		self.output = output
	}

}
