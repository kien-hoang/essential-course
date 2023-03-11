//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Bradley Hoang on 16/02/2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
