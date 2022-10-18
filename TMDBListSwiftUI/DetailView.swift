//
//  DetailView.swift
//  TMDBListSwiftUI
//
//  Created by Ricardo Venieris on 18/10/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var item:MDBResult

    var body: some View {
        VStack {
            Text(item.name)
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500"+item.backdropPath))
                .aspectRatio(contentMode: .fit)
            Text(item.overview)
            Stepper(value:$item.voteAverage) {
                Text("\(Int(item.voteAverage))")
            }
            Spacer()

        }.padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    @State static var item =         MDBResult(adult: false,
                                        backdropPath: "/ajztm40qDPqMONaSJhQ2PaNe2Xd.jpg",
                                        id: 83867,
                                        name: "Star Wars: Andor",
                                        overview: "The tale of the burgeoning rebellion against the Empire and how people and planets became involved. In an era filled with danger, deception and intrigue, Cassian Andor embarks on the path that is destined to turn him into a rebel hero.",
                                        posterPath: "/59SVNwLfoMnZPPB6ukW6dlPxAdI.jpg",
                                        mediaType: .tv,
                                        genreIDS: [],
                                        voteAverage: 5.0, voteCount: 100)

    static var previews: some View {
        DetailView(item: $item)
    }
}
