//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Bradley Hoang on 06/02/2023.
//

import Foundation

final class FeedItemsMapper {
    private struct Root: Decodable {
        let items: [Item]
        
        var feed: [FeedItem] {
            return items.map { $0.item }
        }
    }
    
    private struct Item: Decodable {
        private let id: UUID
        private let description: String?
        private let location: String?
        private let image: URL
        
        var item: FeedItem {
            return FeedItem(id: id,
                            description: description,
                            location: location,
                            imageURL: image)
        }
    }
    
    private static var OK_200: Int { return 200 }
    
    static func map(_ data: Data, from response: HTTPURLResponse) -> RemoteFeedLoader.Result {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(.invalidData)
        }
        
        return .success(root.feed)
    }
}
