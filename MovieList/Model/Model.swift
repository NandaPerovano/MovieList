//
//  Model.swift
//  MovieList
//
//  Created by Fernanda Perovano on 27/12/22.
//

import Foundation

struct List: Codable {
    let page: Int?
    let results: [Movie]?
    let totalPages, totalResults: Int?
}

// MARK: - Result
struct Movie: Codable {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originalLanguage: OriginalLanguage?
    let original_title: String?
    let overview: String?
    
    let popularity: Double?
    let posterPath, releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
}

enum OriginalLanguage: Codable {
    case en
    case es
    case originalLanguageIs
    case uk
}


