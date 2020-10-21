//
//  Typealias.swift
//  ChatWithFirebase
//
//  Created by 18579132 on 21.10.2020.
//

import Foundation

public typealias EmptyCompletion = () -> Void
public typealias CompletionObject<T> = (_ response: T) -> Void
public typealias CompletionOptionalObject<T> = (_ response: T?) -> Void
