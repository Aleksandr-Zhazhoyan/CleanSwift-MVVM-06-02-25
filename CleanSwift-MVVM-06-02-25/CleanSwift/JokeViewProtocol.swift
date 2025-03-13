//
//  JokeViewProtocol.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 13.03.2025.
//

protocol JokeViewProtocol: AnyObject {
    func displayJoke(joke: Joke)
}

protocol JokeInteractorProtocol: AnyObject {
    func fetchJoke()
}

protocol JokePresenterProtocol: AnyObject {
    func presentJoke(response: Joke)
}
