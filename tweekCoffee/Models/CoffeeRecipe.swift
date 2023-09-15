//
//  CoffeeRecipe.swift
//  tweekCoffee
//
//  Created by Théau Antoine on 12/09/2023.
//

import Foundation

enum CoffeeMachineType: String {
    case espressoMachine = "Machine à expresso"
    case dripCoffeeMaker = "Machine à café filtre"
    case frenchPress = "Presse française"
    case pourOver = "Verseur"
    case aeropress = "Aeropress"
    case chemex = "Chemex"
    case siphon = "Siphon"
    case coldBrewMaker = "Machine à café froid"
}

enum CoffeeExtractionMethod: String {
    case espresso = "Expresso"
    case drip = "Filtre"
    case frenchPress = "Presse française"
    case pourOver = "Verseur"
    case aeropress = "Aeropress"
    case chemex = "Chemex"
    case siphon = "Siphon"
    case coldBrew = "Café froid"
}


struct CoffeeRecipe: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: [String]
    let steps: [String]
    let coffeeQuantityInGrams: Int
    let brewingTimeInSeconds: Int // Temps d'infusion en secondes
    let coffeeExtractionMethod: CoffeeExtractionMethod.RawValue
    let coffeeMachineType: CoffeeMachineType.RawValue
    let degrees: Int
    let datePublished: String
    let coffeeWaterRatio: String
    let waterQuantityInGrams: Int
    let image: String



    // Méthode calculée pour afficher le temps d'infusion en minutes et secondes
    var brewingTimeFormatted: String {
        let minutes = brewingTimeInSeconds / 60
        let seconds = brewingTimeInSeconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

extension CoffeeRecipe {
    static let all: [CoffeeRecipe] = [
        CoffeeRecipe(
            name: "Café Espresso",
            ingredients: ["Café moulu", "Eau"],
            steps: ["Préparez l'espresso en utilisant une machine à expresso.", "Dégustez!"],
            coffeeQuantityInGrams: 18,
            brewingTimeInSeconds: 25,
            coffeeExtractionMethod: CoffeeExtractionMethod.espresso.rawValue,
            coffeeMachineType: CoffeeMachineType.espressoMachine.rawValue,
            degrees: 95,
            datePublished: "2023-09-14",
            coffeeWaterRatio: "1:2",
            waterQuantityInGrams: 36, // Exemple : 1:2 signifie 18 g de café pour 36 g d'eau
            image: "https://blog.litha-espresso.fr/wp-content/uploads/2021/05/CAF%C3%89-GO%C3%9BT-ESPRESSO.png"
        ),
        CoffeeRecipe(
            name: "Café Filtre Classique",
            ingredients: ["Café moulu", "Filtre en papier", "Eau"],
            steps: ["Placez le filtre en papier dans la machine à café.", "Ajoutez le café moulu dans le filtre.", "Versez de l'eau chaude sur le café.", "Laissez infuser.", "Servez et dégustez!"],
            coffeeQuantityInGrams: 30,
            brewingTimeInSeconds: 240,
            coffeeExtractionMethod: CoffeeExtractionMethod.drip.rawValue,
            coffeeMachineType: CoffeeMachineType.dripCoffeeMaker.rawValue,
            degrees: 90,
            datePublished: "2023-09-15",
            coffeeWaterRatio: "1:16",
            waterQuantityInGrams: 480, // Exemple : 1:16 signifie 30 g de café pour 480 g d'eau
            image: "https://www.maxicoffee.com/fstrz/r/s/www.maxicoffee.com/blog/wp-content/uploads/2017/08/cafetiere-filtre-electrique-1.jpg?frz-v=126"
        ),
        CoffeeRecipe(
            name: "Café à la Presse Française",
            ingredients: ["Café moulu", "Eau"],
            steps: ["Ajoutez le café moulu dans la presse française.", "Versez de l'eau chaude sur le café.", "Placez le couvercle avec le piston.", "Laissez infuser.", "Appuyez lentement sur le piston.", "Servez et dégustez!"],
            coffeeQuantityInGrams: 30,
            brewingTimeInSeconds: 240,
            coffeeExtractionMethod: CoffeeExtractionMethod.frenchPress.rawValue,
            coffeeMachineType: CoffeeMachineType.frenchPress.rawValue,
            degrees: 95,
            datePublished: "2023-09-16",
            coffeeWaterRatio: "1:15",
            waterQuantityInGrams: 450, // Exemple : 1:15 signifie 30 g de café pour 450 g d'eau
            image: "https://www.maxicoffee.com/fstrz/r/s/www.maxicoffee.com/blog/wp-content/uploads/2020/08/preparer-une-cafetiere-a-piston-870x380.jpg?frz-v=126"
        ),
        CoffeeRecipe(
            name: "Café avec Chemex",
            ingredients: ["Café moulu", "Filtre Chemex", "Eau"],
            steps: [
                "Placez le filtre Chemex dans la Chemex elle-même.",
                "Ajoutez le café moulu dans le filtre Chemex.",
                "Versez de l'eau chaude (environ 205°F ou 96°C) sur le café de manière uniforme, en commençant par le centre et en faisant des cercles extérieurs.",
                "Laissez le café s'infuser pendant environ 3 à 4 minutes.",
                "Retirez le filtre Chemex avec le marc de café.",
                "Servez et dégustez!"
            ],
            coffeeQuantityInGrams: 30,
            brewingTimeInSeconds: 280,
            coffeeExtractionMethod: CoffeeExtractionMethod.chemex.rawValue,
            coffeeMachineType: CoffeeMachineType.chemex.rawValue,
            degrees: 96,
            datePublished: "2023-09-17",
            coffeeWaterRatio: "1:16",
            waterQuantityInGrams: 500,
            image: "https://www.maxicoffee.com/fstrz/r/s/www.maxicoffee.com/blog/wp-content/uploads/2017/08/faire-du-cafe-filtre-comment.jpg?frz-v=126"

        ),
        // Vous pouvez ajouter plus de recettes ici
    ]
}

