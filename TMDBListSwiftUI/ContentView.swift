//
//  ContentView.swift
//  TMDBListSwiftUI
//
//  Created by Ricardo Venieris on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var movieList:[MDBResult] = [
        MDBResult(adult: false,
                  backdropPath: "/1rO4xoCo4Z5WubK0OwdVll3DPYo.jpg",
                  id: 84773,
                  name: "The Lord of the Rings: The Rings of Power",
                  overview: "Beginning in a time of relative peace, we follow an ensemble cast of characters as they confront the re-emergence of evil to Middle-earth. From the darkest depths of the Misty Mountains, to the majestic forests of Lindon, to the breathtaking island kingdom of Númenor, to the furthest reaches of the map, these kingdoms and characters will carve out legacies that live on long after they are gone.",
                  posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg",
                  mediaType: .tv,
                  genreIDS: [],
                  voteAverage: 5.0,
                  voteCount: 100),
        MDBResult(adult: false,
                  backdropPath: "/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg",
                  id: 94997,
                  name: "House of the Dragon",
                  overview: "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.",
                  posterPath: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
                  mediaType: .tv,
                  genreIDS: [],
                  voteAverage: 5.0,
                  voteCount: 100),
        MDBResult(adult: false,
                  backdropPath: "/9GvhICFMiRQA82vS6ydkXxeEkrd.jpg",
                  id: 92783,
                  name: "She-Hulk: Attorney at Law",
                  overview: "Jennifer Walters navigates the complicated life of a single, 30-something attorney who also happens to be a green 6-foot-7-inch superpowered hulk.",
                  posterPath: "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg",
                  mediaType: .tv,
                  genreIDS: [],
                  voteAverage: 5.0, voteCount: 100),
        MDBResult(adult: false,
                  backdropPath: "/qtfMr08KQsWXnCHY0a96N8NpQ2l.jpg",
                  id: 30984,
                  name: "Bleach",
                  overview: "For as long as he can remember, Ichigo Kurosaki has been able to see ghosts. But when he meets Rukia, a Soul Reaper who battles evil spirits known as Hollows, he finds his life is changed forever. Now, with a newfound wealth of spiritual energy, Ichigo discovers his true calling: to protect the living and the dead from evil.",
                  posterPath: "/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg",
                  mediaType: .tv,
                  genreIDS: [],
                  voteAverage: 5.0, voteCount: 100),
        MDBResult(adult: false,
                  backdropPath: "/ajztm40qDPqMONaSJhQ2PaNe2Xd.jpg",
                  id: 83867,
                  name: "Star Wars: Andor",
                  overview: "The tale of the burgeoning rebellion against the Empire and how people and planets became involved. In an era filled with danger, deception and intrigue, Cassian Andor embarks on the path that is destined to turn him into a rebel hero.",
                  posterPath: "/59SVNwLfoMnZPPB6ukW6dlPxAdI.jpg",
                  mediaType: .tv,
                  genreIDS: [],
                  voteAverage: 5.0, voteCount: 100),
    ]
    
    
    
    
    var body: some View {
        
        Text("Se deu mal, otário")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
