//
//  JokeInteractor.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 13.03.2025.
//

import Foundation

class JokeInteractor: JokeInteractorProtocol {
    
    var presenter: JokePresenterProtocol?
    
    
    func fetchJoke() {
        let url = URL(string: "https://v2.jokeapi.dev/joke/Any")!
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let joke = try JSONDecoder().decode(Joke.self, from: data)
                self?.presenter?.presentJoke(response: joke)
            } catch {
                print("Error parsing joke: \(error)")
            }
        }
        task.resume()
    }
}
