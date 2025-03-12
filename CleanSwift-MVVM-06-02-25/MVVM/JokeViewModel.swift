//
//  JokeViewModel.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import Foundation

class JokeViewModel {
    private let jokeAPI = JokeAPI()
    var joke: String? {
        didSet {
            onJokeUpdate?(joke)
        }
    }
    var onJokeUpdate: ((String?) -> Void)?
    
    func fetchJoke() {
        jokeAPI.randomJoke { [weak self] result in
            switch result {
            case .success(let joke):
                self?.joke = joke.joke ?? "No joke available"
            case .failure:
                self?.joke = "Failed to fetch joke"
            }
        }
    }
}
