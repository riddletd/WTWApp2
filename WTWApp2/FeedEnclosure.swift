//
//  FeedEnclosure.swift
//  WTWApp2
//
//  Created by Alec Rieger on 4/12/17.
//  Copyright © 2017 Trevor. All rights reserved.
//
import Foundation
import UIKit

class FeedEnclosure: NSObject {
    var url: String
    var type: String
    var length: Int
    
    init(url: String, type: String, length: Int) {
        self.url = url
        self.type = type
        self.length = length
    }
}