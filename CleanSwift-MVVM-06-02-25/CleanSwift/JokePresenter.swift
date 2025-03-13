//
//  JokePresenter.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 13.03.2025.
//

import Foundation


class JokePresenter: JokePresenterProtocol {
    
    weak var view: JokeViewProtocol?
    
    func presentJoke(response: Joke) {
        DispatchQueue.main.async {
            self.view?.displayJoke(joke: response)
        }
    }
}
