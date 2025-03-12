//
//  JokeViewController.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import UIKit

class JokeViewController: UIViewController {
    var jokeLabel: UILabel!
    var jokeAPI = JokeAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchJoke()
    }
    
    func setupUI() {
        jokeLabel = UILabel()
        jokeLabel.numberOfLines = 0
        jokeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(jokeLabel)
        
        NSLayoutConstraint.activate([
            jokeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            jokeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            jokeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            jokeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func fetchJoke() {
        jokeAPI.randomJoke { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let joke):
                    self?.displayJoke(joke)
                case .failure(let error):
                    self?.jokeLabel.text = "Failed to fetch joke: \(error.localizedDescription)"
                }
            }
        }
    }
    
    func displayJoke(_ joke: Joke) {
        if let jokeText = joke.joke {
            jokeLabel.text = jokeText
        } else if let setup = joke.setup, let delivery = joke.delivery {
            jokeLabel.text = "\(setup) - \(delivery)"
        }
    }
}
