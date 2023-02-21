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
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let planets = try JSONDecoder().decode(Planets.self, from: data)
                print(planets)
                
            } catch {
                print(error)
            }
            
        }.resume()
    }
}
