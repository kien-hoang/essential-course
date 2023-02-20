//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Bradley Hoang on 20/02/2023.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
