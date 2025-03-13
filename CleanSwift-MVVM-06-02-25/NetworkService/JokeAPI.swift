//
//  JokeAPI.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import Foundation

class JokeAPI {
    let baseURL = "https://v2.jokeapi.dev/joke/Any"
    
    func randomJoke(completion: @escaping (Result<Joke, Error>) -> Void) {
        guard let url = URL(string: baseURL) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let joke = try JSONDecoder().decode(Joke.self, from: data)
                completion(.success(joke))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
