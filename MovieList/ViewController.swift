//
//  ViewController.swift
//  MovieList
//
//  Created by Fernanda Perovano on 27/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    let service = Service()

    override func viewDidLoad() {
        super.viewDidLoad()
        service.request(url: URL(string: "https://api.themoviedb.org/3/discover/tv?api_key=bf7cc7fe74c33bdb477a8d6cb86be322&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&with_watch_monetization_types=flatrate&with_status=0&with_type=0" ), expecting: List.self) { result in
            switch result {
            case .success(let movies):
                print(movies)
            case .failure(let error):
                print(error)
            }
        }
    }

    
    

}

