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
public struct MDBResult: Codable {
    internal init(adult: Bool, backdropPath: String, id: Int, name: String? = nil, title: String? = nil, originalTitle: String? = nil, releaseDate: String? = nil, video: Bool? = nil, originalLanguage: String? = nil, originalName: String? = nil, overview: String, posterPath: String, mediaType: MediaType, genreIDS: [Int], popularity: Double? = nil, firstAirDate: String? = nil, voteAverage: Double, voteCount: Int, originCountry: [String]? = nil) {
        self.id = id
        self.name = name
        self.title = title
        self.originalTitle = originalTitle
        self.releaseDate = releaseDate
        self.video = video
        self.adult = adult
        self.backdropPath = backdropPath
        self.originalLanguage = originalLanguage
        self.originalName = originalName
        self.overview = overview
        self.posterPath = posterPath
        self.mediaType = mediaType
        self.genreIDS = genreIDS
        self.popularity = popularity
        self.firstAirDate = firstAirDate
        self.voteAverage = voteAverage
        self.voteCount = voteCount
        self.originCountry = originCountry
    }
    
    
    public let id: Int
    public let name: String?
    public let title: String?
    public let originalTitle: String?
    public let releaseDate: String?
    public let video: Bool?
    public let adult: Bool
    public let backdropPath: String
    public let originalLanguage: String?
    public let originalName: String?
    public let overview: String
    public let posterPath: String
    public let mediaType: MediaType
    public let genreIDS: [Int]
    public let popularity: Double?
    public let firstAirDate: String?
    public let voteAverage: Double
    public let voteCount: Int
    public let originCountry: [String]?
    
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
