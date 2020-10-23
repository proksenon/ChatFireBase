//
//  NameInteractorInput.swift
//  MoneyTransfer
//
//  Created by 18579132 on 10.09.2020.
//  Copyright © 2020 18579132. All rights reserved.
//

import Foundation

protocol EntryInteractorInput: class {
	func signIn(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>)
	func signOut()
	func currentUserId()->String?
	func register(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>)
}
