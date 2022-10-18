//
//  MDBMovies.swift
//  MovieConsultor
//
//  Created by Ricardo Venieris on 24/05/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

import Foundation
//import CodableExtensions

    // MARK: - Result
public struct MDBResult: Codable, Identifiable {
    
    public var adult: Bool
    public var backdropPath: String
    public var id: Int
    public var name: String
    public var overview: String
    public var posterPath: String
    public var mediaType: MediaType
    public var genreIDS: [Int]
    public var voteAverage: Double
    public var voteCount: Int

    public let title: String? = nil
    public let originalTitle: String? = nil
    public let releaseDate: String? = nil
    public let video: Bool? = nil
    public let originalLanguage: String? = nil
    public let originalName: String? = nil
    public let popularity: Double? = nil
    public let firstAirDate: String? = nil
    public let originCountry: [String]? = nil
    
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case id = "id"
        case name = "name"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview = "overview"
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity = "popularity"
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case originCountry = "origin_country"
        case title = "title"
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case video = "video"
    }
}

public enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}
