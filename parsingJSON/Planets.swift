//
//  Planets.swift
//  parsingJSON
//
//  Created by Kirill Taraturin on 17.02.2023.
//

struct Planets: Decodable{
    let name: String?
    let rotation_period: String?
    let orbital_period: String?
    let diameter: String?
    let climate: String?
    let gravity: String?
    let terrain: String?
    let surface_water: String?
    let population: String?
    let residents: [String]?
}
