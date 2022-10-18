    //
    //  ContentView.swift
    //  TMDBListSwiftUI
    //
    //  Created by Ricardo Venieris on 18/10/22.
    //

import SwiftUI

struct ContentView: View {
    var service = TMDBService(apiKey: "")
    @State var movieList:[MDBResult] = []

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach($movieList) { $item in
                    NavigationLink(destination: DetailView(item: $item)) {
                        VStack {
                            Text(item.name)
                                .font(.title)
                                .padding()
                            Text("\(item.voteAverage)")
                            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500"+item.posterPath)) {image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                            } placeholder: {
                                ProgressView()
                            }.padding(.bottom, 30)
                            Divider()
                        }
                    }
                }
            }.onAppear {
                request(.trendingAllWeek)
            }
        }
    }
    
    
    func request(_ type: TMDBService.RequestType) {
        service.request(requestType: type, then: {result in
            switch result {
                case .success(let request):
                    self.movieList = request.results
                case .failure(let error):
                    // popUp  se ferrou!
                    debugPrint(error)
                    break
            }
        })
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
