//
//  UserWorker.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 21.10.2020.
//

import FirebaseAuth

protocol UserWorkerProtocol {
	func auth(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>)
	func register(user: UserObject, completion: @escaping CompletionObject<ResponseStatus>)
	func update(user: UserObject, completion: @escaping CompletionObject<ResponseStatus>)
	func signOut() -> Bool
	func currentUserID() -> String?
}

class UserWorker: UserWorkerProtocol {

	func currentUserID() -> String? {
	  return Auth.auth().currentUser?.uid
	}

	func auth(user: UserObject, complition: @escaping CompletionObject<ResponseStatus>){
		guard let email = user.email, let password = user.password else {complition(.failure); return}
		Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
			if error == nil {
				complition(.success)
			} else {
				complition(.failure)
			}
		}
	}

	func register(user: UserObject, completion: @escaping CompletionObject<ResponseStatus>) {
	  guard let email = user.email, let password = user.password else { completion(.failure); return }
	  Auth.auth().createUser(withEmail: email, password: password) {[weak self] (response, error) in
		print(error)
		guard error == nil else { completion(.failure); return }
		user.id = response?.user.uid ?? UUID().uuidString
		self?.update(user: user, completion: { result in
		  completion(result)
		})
	  }
	}

	func update(user: UserObject, completion: @escaping CompletionObject<ResponseStatus>) {
		FirestoreService().update(user, reference: .init(location: .users), completion: { result in
			print(result)
		  completion(result)
		})
	}

	func signOut() -> Bool {
	  do {
		try Auth.auth().signOut()
		return true
	  } catch {
		return false
	  }
	}

}
