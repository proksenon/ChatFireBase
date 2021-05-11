//
//  MessagesWorker.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 24.10.2020.
//

import Foundation

class MessagesWorker {

  let service = FirestoreService()

  func messages(for chat: ChatObject, _ completion: @escaping CompletionObject<[MessageObject]>) {
	let reference = FirestoreService.Reference(first: .chats, second: .messages, id: chat.id)
	service.objectWithListener(MessageObject.self, reference: reference) { results in
	  completion(results)
	}
  }

  func create(_ message: MessageObject, chat: ChatObject, _ completion: @escaping CompletionObject<ResponseStatus>) {
	let reference = FirestoreService.Reference(first: .chats, second: .messages, id: chat.id)
	FirestoreService().update(message, reference: reference) { result in
	  completion(result)
	}
	if let id = chat.isRead.filter({$0.key != UserWorker().currentUserID() ?? ""}).first {
	  chat.isRead[id.key] = false
	}
	ChatsWorker().create(chat)
  }
}
