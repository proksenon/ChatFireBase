//
//  ChatsWorker.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 23.10.2020.
//

import Foundation

class ChatsWorker {

  let service = FirestoreService()

  func currentChats(_ completion: @escaping CompletionObject<[ChatObject]>) {
	guard let userID = UserWorker().currentUserID() else { return }
	let query = FirestoreService.DataQuery(key: "userIDs", value: userID, mode: .contains)
	service.objectWithListener(ChatObject.self, parameter: query, reference: .init(location: .chats)) { results in
	  completion(results)
	}
  }

  func create(_ chats: ChatObject, _ completion: CompletionObject<ResponseStatus>? = nil) {
	FirestoreService().update(chats, reference: .init(location: .chats)) { completion?($0) }
  }

  func markAsRead(_ chats: ChatObject, _ completion: CompletionObject<ResponseStatus>? = nil) {
	guard let userID = UserWorker().currentUserID() else { return }
	guard chats.isRead[userID] == false else { return }
	chats.isRead[userID] = true
	FirestoreService().update(chats, reference: .init(location: .chats)) { completion?($0) }
  }
}
