//
//  ViewController.swift
//  parsingJSON
//
//  Created by Kirill Taraturin on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var starWarsPlanetsURL = "https://swapi.dev/api/planets/3/"

    @IBAction func showDataDidTapped() {
        fetchPlanets()
    }
}

extension ViewController {
    private func fetchPlanets() {
        guard let url = URL(string: starWarsPlanetsURL) else { return }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) {  data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                let planets = try jsonDecoder.decode(Planets.self, from: data)
                print(planets)
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
