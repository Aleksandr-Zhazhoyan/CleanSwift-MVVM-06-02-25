//
//  JokeViewController.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import UIKit

class JokeViewController: UIViewController, JokeViewProtocol {
    var interactor: JokeInteractorProtocol?
    var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        interactor?.fetchJoke()
    }
    
    func setupUI() {
        jokeLabel = UILabel(frame: self.view.bounds)
        jokeLabel.numberOfLines = 0
        jokeLabel.textAlignment = .center
        self.view.addSubview(jokeLabel)
    }
    
    func displayJoke(joke: Joke) {
        if let setup = joke.setup, let delivery = joke.delivery {
            jokeLabel.text = "\(setup) - \(delivery)"
        } else if let jokeText = joke.joke {
            jokeLabel.text = jokeText
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
