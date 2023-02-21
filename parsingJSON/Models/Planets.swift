//
//  Planets.swift
//  parsingJSON
//
//  Created by Kirill Taraturin on 17.02.2023.
//

struct Planet: Decodable {
    let name: String
    let rotation_period: String
    let orbital_period: String
    let diameter: String
    let climate: String
    let gravity: String
    let terrain: String
    let surface_water: String
    let population: String
}

struct Planets:Decodable {
    let count: Int
    let next: String
    let results: [Planet]
}

