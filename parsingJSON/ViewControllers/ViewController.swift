//
//  ViewController.swift
//  parsingJSON
//
//  Created by Kirill Taraturin on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let url = "https://swapi.dev/api/planets"
    
    override func viewDidLoad() {
        super.viewDidLoad()
      fetchPlanets()
    }
}

extension ViewController {
    private func fetchPlanets() {
        guard let url = URL(string: url) else { return }
        
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
