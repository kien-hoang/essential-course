//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Bradley Hoang on 30/03/2023.
//

import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
