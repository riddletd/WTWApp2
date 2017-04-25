//
//  FeedChannel.swift
//  WTWApp2
//
//  Created by Alec Rieger on 4/12/17.
//  Copyright © 2017 Trevor. All rights reserved.
//
import Foundation
import UIKit

class FeedChannel: NSObject {
    // MARK: - mandatory properties
    var channelTitle: String?
    var channelURL: String?     // url of the RSS feed
    var channelLink: String?    // link to the site
    
    // MARK: - optional properties
    var channelDescription: String?
    var channelLogoURL: String?
    var channelLogo: UIImage?
    var channelLanguage: String?
    var channelDateOfLastChange: Date?
    var channelCategory: String?
    var channelID: Int? // from the READY API
    
    override var hashValue: Int {
        return self.isValid ? channelTitle!.hashValue ^ channelURL!.hashValue ^ channelLink!.hashValue : 0
    }
    
    convenience init(url: String, title: String, link:String) {
        self.init()
        self.channelURL = url
        self.channelTitle = title
        self.channelLink = link
    }
    
    // MARK: - utility methods
    var isValid: Bool {
        if (channelTitle != nil && channelURL != nil && channelLink != nil) { return true }
        else { return false }
    }
    
    override var description: String {
        var desc = "\nFeedChannel:\n"
        if (channelTitle != nil) { desc += "\t- Title: \(String(describing: channelTitle))\n" }
        if (channelURL != nil) { desc += "\t- URL: \(String(describing: channelURL))\n" }
        if (channelLink != nil) { desc += "\t- Link: \(String(describing: channelLink))\n" }
        if (channelID != nil) { desc += "\t- ID (Ready): \(String(describing: channelID))\n" }
        if (channelDescription != nil) { desc += "\t- Description: \(String(describing: channelDescription))\n" }
        if (channelLogoURL != nil) { desc += "\t- Logo URL: \(String(describing: channelLogoURL))\n" }
        if (channelLanguage != nil) { desc += "\t- Language: \(String(describing: channelLanguage))\n" }
        if (channelDateOfLastChange != nil) { desc += "\t- Date of last change: \(String(describing: channelDateOfLastChange))\n" }
        if (channelCategory != nil) { desc += "\t- Category: \(String(describing: channelCategory))\n" }
        
        return desc + "\n"
    }
    
}

func == (lhs: FeedChannel, rhs: FeedChannel) -> Bool {
    return lhs.channelURL == rhs.channelURL
}