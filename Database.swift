//
//  Database.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 16/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI
import Foundation

// Database //

// Parametres utilisateur
struct User : Identifiable{
    let id = UUID()
    var pseudo : String
    var email : String
    var password : String
    //image
}

var meUser = User (pseudo: "Pierre", email: "", password: "")

let user: [User] = [
    User(pseudo: "Pierre", email: "", password: "")
]


// Les filtres
enum DishType {
    case breakfast, lunch, snack
    var name : String {
        get {
            switch self {
                case .breakfast : return "Petit déjeuner"
                case .lunch : return "Déjeuner ou Dîner"
                case .snack : return "Snack"
            }
        }
    }
}
let dishTypes = [DishType.breakfast, DishType.lunch, DishType.snack]

// Les recettes et ingrédients
struct Recette: Identifiable {
    let id : String
    let titre : String
    let numberPersons : String
    let dishType : DishType
    var image : String
    let tempsDePreparation : Int
    let tempsDeCuisson : Int
    var ingredients : [Ingredient]
    let etapes: [EtapeRecette]
    var etoile : Int
}

struct EtapeRecette : Identifiable {
    let id = UUID()
    let numEtape: Int
    let descriptionEtape: String
}

struct Ingredient: Identifiable {
    var id = UUID()
    let name : String
    let image : String
    let historique : String
    let nutritiveValues: [NutritiveValue]
    let quantity: String
}

struct NutritiveValue : Identifiable {
    let id = UUID()
    let name: String
    let value: String
    let nutritiveQuality: NutritiveQuality
}

enum NutritiveQuality {
    case positive, negative
}

// Liste des ingrédients présents dans l'application
let listIngredients : [Ingredient] = [
    Ingredient(id: UUID(), name: "Potiron", image: "potiron", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "25,9", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,5", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,07", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,81", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Carotte", image: "carotte", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "41", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "9,58", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,24", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,93", nutritiveQuality: .positive)], quantity: "100g"),
     Ingredient(id: UUID(), name: "Lait", image: "lait", historique: "lait", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Aubergine", image: "aubergine", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "32,5", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,17", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,26", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,23", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Poivron", image: "poivron", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "29", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,8", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,9", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Artichaut", image: "artichaut", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "43", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,8", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,9", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Asperge", image: "asperges", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "19", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0,81", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,32", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,53", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Concombre", image: "concombre", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "13,6", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "2.04", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,11", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,64", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Courgette", image: "courgette", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "69,2", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,4", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,36", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,93", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Chou blanc", image: "chou blanc", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "28,4", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,8", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Céleri", image: "", historique: "celeri", nutritiveValues: [NutritiveValue(name: "Calories", value: "21,5", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,19", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,66", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Citrouille", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "40", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,5", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,07", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,81", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Epinard", image: "epinard", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "28,7", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0,5", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,14", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "3,2", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Endive", image: "endive", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "20,8", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,15", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Echalote", image: "echalote", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "58,7", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "8,35", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1,43", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,84", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Betterave", image: "betterave", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "47,2", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "8,56", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,18", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,84", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Avocat", image: "avocat", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "165", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,67", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "13,8", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,61", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Tomate", image: "tomate", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "15", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "2,26", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,26", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,86", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Ail", image: "ail", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "131", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "21,2", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,34", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "5,81", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Brocoli", image: "brocoli", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "22,80", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,1", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,78", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Fruit de la passion", image: "fruit de la passion", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "84,40", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "9,39", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,7", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Banane", image: "banane", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "90", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "19,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,25", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,98", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Citron vert", image: "citron vert", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "32,8", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "2,02", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,02", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,66", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Navet", image: "navet", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "25", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,7", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,82", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pomme de Terre", image: "pomme de terre", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "73", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "16,7", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,34", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,8", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Papaye", image: "papaye", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "43", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "9,9", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,28", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,58", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Haricot", image: "haricot", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "31", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,17", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Noix de Coco", image: "noix de coco", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "354", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,15", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "33,5", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "3,6", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Melon", image: "melon", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "34", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,57", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,73", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pastèque", image: "pasteque", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "30", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,38", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,13", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,62", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Fraise", image: "fraise", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "33", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,14", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,18", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,65", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Persil", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "36", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,48", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,63", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "3,63", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Raisin", image: "raisin", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "67", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "15,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,6", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Laitue", image: "laitue", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "15", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,33", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Framboise", image: "framboise", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "53", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,26", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,36", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,28", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Abricot", image: "abricot", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "48", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,14", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,35", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,01", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Champignons de Paris", image: "champignon", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "22", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,33", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,36", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,62", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Prune", image: "prune", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "48,7", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "9,41", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,29", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,66", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Ananas", image: "ananas", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "50", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "11", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,24", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,52", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pomme", image: "pomme", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "52", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "11,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,25", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,25", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Poire", image: "poire", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "57", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "10,9", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,27", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,49", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Châtaigne", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "133", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "28,8", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "282", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,96", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Cerise", image: "cerise", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "50", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "11,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,25", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,96", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Cassis", image: "cassis", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "54", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "8,03", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,86", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,33", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Myrtille", image: "myrtille", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "60", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "10,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,33", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,87", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Radis", image: "radis", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "16", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,24", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,76", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Amande", image: "amande", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "634", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,85", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "53,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "21,1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Noix de Cajou", image: "noix-cajou", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "553", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "21,8", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "49,1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "23,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Orange", image: "orange", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "45", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,92", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,36", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pamplemousse", image: "pamplemousse", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "39", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,34", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,63", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Kiwi", image: "kiwi", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "61", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "8,44", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,95", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,2", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Poireau", image: "poireau", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "61", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Petit pois", image: "petit pois", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "80", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,7", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,87", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "5,8", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pêche", image: "pêche", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "53", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "9", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,33", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,08", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Fève", image: "fève", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "61", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "10,4", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,45", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "6,01", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Noix", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "654", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,88", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "67,3", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "13,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Lentille", image: "lentille", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "116", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "20,13", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,38", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "9,02", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Litchi", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "66", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "15,2", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,42", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,76", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Choux de Bruxelles", image: "choux de bruxelles", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "43", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "5,67", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "3,98", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Soja", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "446", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,4", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2.57", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Rhubarbe", image: "rhubarbe", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "21", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "4,54", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,9", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Chou-Fleur", image: "chou fleur", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "25", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "1,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,46", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,86", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Patate Douce", image: "patate douce", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "86", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "12,2", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,15", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,69", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mâche", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "19,2", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0,6", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Pitaya", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "86", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "7,1", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Goyave", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "52", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "11", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,6", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,7", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Datte", image: "dattes", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "282", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "75", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "2,5", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Figue", image: "figue", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "74", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "14,3", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,3", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,85", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Cèpe", image: "cèpe", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "31,6", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "3,03", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,43", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "3,13", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Clémentine", image: "clémentines", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "47", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "11,9", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,19", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,8", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mangoustan", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "73", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "17,91", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,58", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,41", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Fenouil", image: "fenouil", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "19,9", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "2,3", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,14", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Anone", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "101", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "25,2", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,6", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,70", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Physalis", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "53", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "62,5", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "8,4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "6,8", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Groseille", image: "groseille", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "56", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,64", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,95", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "1,33", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mirabelle", image: "mirabelle", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "60", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "12,4", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,72", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Coing", image: "coing", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "58", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "6,30", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,20", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0,48", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Saumon", image: "saumon", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "180", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0g", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "14", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "282", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Anchois", image: "anchois", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "182", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "2,7g", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "8,5g", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "26,4g", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Anguille", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "230", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "282", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "13,5g", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "20g", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Cabillaud", image: "cabillaud", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "85", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0g", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1g", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "19g", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Dorade", image: "dorade", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "364", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "282", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "3", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "16", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Espadon", image: "espadon", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "121", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "4", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "20", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Hareng", image: "hareng", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "142", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "8,5", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "16,5", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Maquereau", image: "maquereau", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "240", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "17,81", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "23,85", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Merlan", image: "merlan", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "125", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "3,6", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mérou", image: "mérou", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "230", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1,3", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "24,84", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Morue", image: "morue", historique: "morue", nutritiveValues: [NutritiveValue(name: "Calories", value: "230", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Raie", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "80", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "20,7", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Requin", image: "", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "130", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "17,68", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "82,32", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Sardine", image: "sardine", historique: "sardines", nutritiveValues: [NutritiveValue(name: "Calories", value: "160", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "12,9", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "26,4", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Sole", image: "sole", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "73", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "0", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Thon", image: "thon", historique: "thon", nutritiveValues: [NutritiveValue(name: "Calories", value: "144", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "0,82", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "25,51", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Truite", image: "truite", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "230", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "4,63", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "21,46", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Oeufs", image: "oeuf", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Beurre", image: "beurre", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Creme fraiche", image: "crème fraiche", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Chocolat noir", image: "chocolat noir", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Chocolat blanc", image: "chocolat blanc", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Chocolat au lait", image: "chocolat au lait", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mascarpone", image: "mascarpone", historique: "", nutritiveValues: [], quantity: "100g"),
    Ingredient(id: UUID(), name: "Boeuf", image: "boeuf", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "250", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "20", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "17", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Mouton", image: "mouton", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "234", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0,1", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "11,1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "33,4", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Agneau", image: "agneau", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "232", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "14,6", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "25,7", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Lapin", image: "lapin", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "165", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "9,2", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "20,5", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Dinde", image: "dinde", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "114", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1,1", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "23,3", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Poulet", image: "poulet", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "111", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "1,8", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "24", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Canard", image: "canard", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "190", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "10", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "25", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Veau", image: "veau", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "149", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "2,8", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "31", nutritiveQuality: .positive)], quantity: "100g"),
    Ingredient(id: UUID(), name: "Porc", image: "porc", historique: "", nutritiveValues: [NutritiveValue(name: "Calories", value: "285", nutritiveQuality: .positive),NutritiveValue(name: "Glucide", value: "0", nutritiveQuality: .positive),NutritiveValue(name: "Lipides", value: "12", nutritiveQuality: .positive),NutritiveValue(name: "Sel", value: "", nutritiveQuality: .positive),NutritiveValue(name: "Protéine", value: "16", nutritiveQuality: .positive)], quantity: "100g")
    
]

// pour favoris
struct Defaults {
    let defaultsFavorites = "Favoris"
    
    var allFavoritesRecipes: [Recette] {
        let favoritesIds = UserDefaults.standard.stringArray(forKey: defaultsFavorites)
        return favoritesIds?.compactMap {id in recettes.first {recipe in recipe.id == id
            }
            } ?? []
    }
    func addFavorites(id: String) {
        var favorites = allFavorites()
        favorites.append(id)
        UserDefaults.standard.set(favorites, forKey: defaultsFavorites)
    }
    func removeAllFavorites(id: String) {
        var favorites = allFavorites()
        favorites.removeAll { favoriteId in favoriteId == id
        }
        UserDefaults.standard.set(favorites, forKey: defaultsFavorites)
    }
    
    
    func allFavorites() -> [String] {
        if let favorites = UserDefaults.standard.stringArray(forKey: defaultsFavorites)
        {
            return favorites
        }
        return []
    }
    func isFavorite(id: String) -> Bool {
        return allFavorites().contains(id)
    }
}

// Liste des recettes présentes dans l'application
let recettes: [Recette] = [
    
    Recette(id : "1",
            titre: "Soupe au potiron",
            numberPersons: "3 pers.",
            dishType: .lunch,
            
            image: "Soupe",
            tempsDePreparation: 20,
            tempsDeCuisson: 10,
            ingredients: [
                Ingredient(name: "Potiron", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                Ingredient(name: "Oignon", image: "", historique: "", nutritiveValues: [], quantity: "3"),
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Couper le potiron"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Bouillir")
        ],
            etoile: 3),
    
    Recette(id : "2",
            titre: "Crêpe végétarienne",
            numberPersons: "6 pers.",
            dishType: .lunch,
            
            image: "Crepe",
            tempsDePreparation: 30,
            tempsDeCuisson: 1,
            ingredients: [
                Ingredient(name: "Farine", image: "", historique: "", nutritiveValues: [], quantity: "300g"),
                Ingredient(name: "Oeufs", image: "", historique: "", nutritiveValues: [], quantity: "6"),
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Faire la pâte"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Brancher la plaque de cuisson")
        ],
            etoile: 5),
    
    Recette(id : "3",
            titre: "Cookies au chocolat noir",
            numberPersons: "5 pers.",
            dishType: .breakfast,
            image: "Cookies",
            tempsDePreparation: 10,
            tempsDeCuisson: 8,
            ingredients: [
                Ingredient(name: "Oeufs", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                Ingredient(name: "Chocolat", image: "", historique: "", nutritiveValues: [], quantity: "200g")
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Faire la pâte"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Allumer le four")
        ],
            etoile: 5),
    
    Recette(id : "4",
            titre: "Cookies au chocolat au lait",
            numberPersons: "5 pers.",
            dishType: .snack,
           
            image: "Cookies",
            tempsDePreparation: 15,
            tempsDeCuisson: 10,
            ingredients: [
                Ingredient(name: "Oeufs", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                Ingredient(name: "Chocolat", image: "", historique: "", nutritiveValues: [], quantity: "200g")
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Faire la pâte"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Allumer le four")
        ],
            etoile: 5),
    
    Recette(id : "5",
            titre: "Cookies au chocolat blanc",
            numberPersons: "5 pers.",
            dishType: .snack,
        
            image: "cookies-choco blanc",
            tempsDePreparation: 12,
            tempsDeCuisson: 12,
            ingredients: [
                Ingredient(name: "Oeufs", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                Ingredient(name: "Chocolat blanc", image: "", historique: "", nutritiveValues: [], quantity: "200g")
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Faire la pâte"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Allumer le four")
        ],
            etoile: 5),
    
    Recette(id : "6",
            titre: "Velouté aux champignons express",
            numberPersons: "4 pers.",
            dishType: .lunch,
            image: "champignonsParis",
            tempsDePreparation: 20,
            tempsDeCuisson: 25,
            ingredients: [
                Ingredient(name: "Champignons de Paris", image: "champignonsParis", historique: "", nutritiveValues: [], quantity: "460g"),
                Ingredient(name: "eau", image: "eau", historique: "", nutritiveValues: [], quantity: "1,5L"),
                Ingredient(name: "Crème liquide", image: "", historique: "", nutritiveValues: [], quantity: "25cl"),
                Ingredient(name: "Beurre", image: "", historique: "", nutritiveValues: [], quantity: "30g"),
                Ingredient(name: "Pain sec", image: "", historique: "", nutritiveValues: [], quantity: "100g"),
                Ingredient(name: "Ail en poudre", image: "", historique: "", nutritiveValues: [], quantity: "1 cuil. à soupe"),
                Ingredient(name: "Persil en poudre", image: "", historique: "", nutritiveValues: [], quantity: "1 cuil. à soupe"),
                Ingredient(name: "Bouillon de boeuf", image: "", historique: "", nutritiveValues: [], quantity: "2 cubes"),
                Ingredient(name: "Kub or", image: "", historique: "", nutritiveValues: [], quantity: "1 cube"),
                Ingredient(name: "Madère", image: "", historique: "", nutritiveValues: [], quantity: "2 cuil. à café"),
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Commencer par égoutter vos champignons, ensuite mettre le beurre à fondre dans une poêle et ajouter les champignons, les laisser rendre leur eau environ 5 min."),
                EtapeRecette(numEtape: 2, descriptionEtape: "Quand il n'y a plus d'eau dans la poêle et qu'ils commencent à dorer, ajouter l'ail le persil et le kub OR, laisser encore mijoter 5 min."),
                EtapeRecette(numEtape: 3, descriptionEtape: "Mettre l'eau à bouillir avec les 2 cubes de bouillon de boeuf, pendant ce temps ôter la croûte de votre pain afin de n'en garder que la mie, ensuite couper le pain en gros cubes."),
                EtapeRecette(numEtape: 4, descriptionEtape: "Quand votre bouillon bout, y ajouter vos champignons puis vos cubes de pain sec. Laisser encore cuire 5 min puis mixer le tout, ajouter ensuite la brique de crème liquide."),
                EtapeRecette(numEtape: 5, descriptionEtape: "Servir tel quel avec quelques croutons de pain, c'est délicieux."),
        ],
            etoile: 4),
    
    Recette(id : "7",
                titre: "Gratin dauphinois de patates douces",
                numberPersons: "6 pers.",
                
                dishType: .lunch,
                
                image: "gratin",
                tempsDePreparation: 45,
                tempsDeCuisson: 25,
                ingredients: [
                    Ingredient(name: "Patate douce", image: "", historique: "", nutritiveValues: [], quantity: "1 Kg"),
                    Ingredient(name: "Lait", image: "", historique: "", nutritiveValues: [], quantity: "1L"),
                    Ingredient(name: "Crème liquide", image: "", historique: "", nutritiveValues: [], quantity: "40cl"),
                    Ingredient(name: "Beurre", image: "", historique: "", nutritiveValues: [], quantity: "120g"),
                    Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "2 gousses"),
                    Ingredient(name: "Sel", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    Ingredient(name: "Poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    Ingredient(name: "Muscade", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
            ],
                etapes: [
                    EtapeRecette(numEtape: 1, descriptionEtape: "Préchauffer le four à 180°C (Thermostat 6)."),
                    EtapeRecette(numEtape: 2, descriptionEtape: "Nettoyer et éplucher les patates douces. Les couper en fines rondelles."),
                    EtapeRecette(numEtape: 3, descriptionEtape: "Frotter un plat à gratin avec l'une des gousses d'ail, puis le beurrer."),
                    EtapeRecette(numEtape: 4, descriptionEtape: "Porter à ébullition dans une casserole le lait, l'ail, le sel, le poivre et la muscade. Puis y plonger les patates douces et laisser cuire 10 mn."),
                    EtapeRecette(numEtape: 5, descriptionEtape: "Egoutter les patattes douces et disposer les rondelles dans le plat à gratin."),
                    EtapeRecette(numEtape: 5, descriptionEtape: "Couvrir de crème et ajouter quelques noix de beurre sur le dessus."),
                    EtapeRecette(numEtape: 5, descriptionEtape: "Enfourner pendant 45 minutes en surveillant le gratin. Déguster chaud. Bon appétit!"),
            ],
                etoile: 3),
    
    Recette(id : "8",
        titre: "Petits gâteaux au chocolat blanc",
        numberPersons: "6 pers.",
        
        dishType: .snack,
        
        image: "cookies-choco blanc",
        tempsDePreparation: 15,
        tempsDeCuisson: 10,
        ingredients: [
            Ingredient(name: "Beurre", image: "", historique: "", nutritiveValues: [], quantity: "120g"),
            Ingredient(name: "Sucre", image: "", historique: "", nutritiveValues: [], quantity: "120g"),
            Ingredient(name: "Farine", image: "", historique: "", nutritiveValues: [], quantity: "230g"),
            Ingredient(name: "Oeufs", image: "", historique: "", nutritiveValues: [], quantity: "2"),
            Ingredient(name: "Chocolat blanc", image: "", historique: "", nutritiveValues: [], quantity: "150g"),
            Ingredient(name: "Lait", image: "", historique: "", nutritiveValues: [], quantity: ""),
            Ingredient(name: "Sucre glace", image: "", historique: "", nutritiveValues: [], quantity: "")
    ],
        etapes: [
            EtapeRecette(numEtape: 1, descriptionEtape: "Faire fondre le beurre au micro-ondes, puis ajouter le sucre et fouetter (avec un batteur électrique) pour que le mélange blanchisse."),
            EtapeRecette(numEtape: 2, descriptionEtape: "Ajouter les oeufs, la farine et bien mélanger."),
            EtapeRecette(numEtape: 3, descriptionEtape: "Faire fondre le chocolat au micro-ondes avec un peu de lait (environ 3 cuillères à soupe), et ajouter au mélange précédent."),
            EtapeRecette(numEtape: 4, descriptionEtape: "Laisser la pâte au frigidaire pendant au, moins 1 heure"),
            EtapeRecette(numEtape: 5, descriptionEtape: "Faire de petites boules de la taille d'une noix et les placer sur une plaque recouverte de papier sulfurisé."),
            EtapeRecette(numEtape: 6, descriptionEtape: "Enfourner pour environ 10 minutes à 240°C (Thermostat 8)"),
            EtapeRecette(numEtape: 7, descriptionEtape: "Si vous faites plusieurs fournées, remettre la pâte au frigidaire en attendant."),
            EtapeRecette(numEtape: 8, descriptionEtape: "Saupoudrer de sucre glace pour la décoration."),
            
    ],
        etoile: 5),
    
        Recette(id : "9",
            titre: "Pot au feu sans viande",
            numberPersons: "4 pers.",
            
            dishType: .lunch,
            
            image: "Pot au feu",
            tempsDePreparation: 15,
            tempsDeCuisson: 60,
            ingredients: [
                Ingredient(name: "Carottes", image: "", historique: "", nutritiveValues: [], quantity: "4"),
                Ingredient(name: "Navets", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                Ingredient(name: "Poireau", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                Ingredient(name: "Oignons", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                Ingredient(name: "Clou de girofle", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Chou blanc", image: "", historique: "", nutritiveValues: [], quantity: "1/2"),
                Ingredient(name: "Poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Sel", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Herbes de Provence", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Thym", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Laurier", image: "", historique: "", nutritiveValues: [], quantity: ""),
                Ingredient(name: "Cubes Kub'Or", image: "", historique: "", nutritiveValues: [], quantity: "2"),
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Préparer la cocotte avec de l'eau et les 2 cubes Knorr. L'eau doit recouvrir les légumes"),
                EtapeRecette(numEtape: 2, descriptionEtape: "Après avoir lavé et épluché les légumes, les couper en morceaux (moyens) et les mettre ensemble dans la cocotte."),
                EtapeRecette(numEtape: 3, descriptionEtape: "Laisser cuire à couvert 1 heure. Puis découvert, si la quantité d'eau est trop importante."),
                EtapeRecette(numEtape: 4, descriptionEtape: "FRajouter des herbes si besoin, pour le parfum."),
                EtapeRecette(numEtape: 5, descriptionEtape: "Pour les non-végétariens, servir avec une viande cuite à part, du poulet grillé par exemple, le mélange est agréable."),
        ],
            etoile: 4),
        
        Recette(id : "10",
            titre: "Wok de boeuf thaï",
            numberPersons : "4",
            dishType: .lunch,
            image: "wok de boeuf thai",
            tempsDePreparation: 20,
            tempsDeCuisson: 20,
            ingredients: [
                Ingredient(name: "Pâte de curry vert sans gluten", image: "", historique: "", nutritiveValues: [], quantity: "2 c. à soupe"),
                Ingredient(name: "Boeuf", image: "", historique: "", nutritiveValues: [], quantity: "200g"),
                Ingredient(name: "Lait de coco", image: "", historique: "", nutritiveValues: [], quantity: "15cl"),
                Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à soupe"),
                Ingredient(name: "Sucre de palme", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à café"),
                Ingredient(name: "Piment rouge", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                Ingredient(name: "Haricots verts", image: "", historique: "", nutritiveValues: [], quantity: "200g"),
                Ingredient(name: "Riz thaï", image: "", historique: "", nutritiveValues: [], quantity: "250g"),
                Ingredient(name: "Coriandre fraîche ciselée", image: "", historique: "", nutritiveValues: [], quantity: "2 c. à soupe"),
                Ingredient(name: "Sel et poivre du moulin", image: "", historique: "", nutritiveValues: [], quantity: ""),
            
                
        ],
            etapes: [
                EtapeRecette(numEtape: 1, descriptionEtape: "Faites cuire les haricots verts 3 à 4 min à l’eau bouillante salée, puis égouttez-les et rafraîchissez-les sous l’eau courante."),
                EtapeRecette(numEtape: 2, descriptionEtape: "Faites cuire le riz à l’eau bouillante salée selon les instructions portées sur l’emballage, puis égouttez-le."),
                EtapeRecette(numEtape: 3, descriptionEtape: "Coupez la viande en lanières. Faites chauffer l’huile de tournesol dans un wok ou une sauteuse, ajoutez les lanières de boeuf et faites-les rissoler 2 min. Ajoutez la moitié de la pâte de curry, mélangez pour enduire la viande, puis versez dans une assiette creuse et couvrez de papier d’aluminium."),
                EtapeRecette(numEtape: 4, descriptionEtape: "Ajoutez dans le wok le reste de pâte de curry, le lait de coco, le jus de citron vert, le sucre de palme et le piment épépiné et émincé. Laissez bouillonner 3 min à feu doux."),
                EtapeRecette(numEtape: 5, descriptionEtape: "Ajoutez les haricots verts dans le wok, ainsi que la viande avec son jus. Mélangez pour bien enrober de sauce, puis parsemez de coriandre ciselée. Servez sur le riz et éparpillez des oignons frits par-dessus."),
                EtapeRecette(numEtape: 6, descriptionEtape: "OIGNONS FRITS : Pelez 2 oignons, puis coupez-les en lamelles de 5 mm d’épaisseur avant de séparer les anneaux avec vos doigts. Faites chauffer 2 c. à soupe d’huile de tournesol à feu vif dans une sauteuse, ajoutez les anneaux d’oignons et faites-les frire environ 10 min, jusqu’à ce qu’ils soient dorés et croustillants. Épongez-les avec du papier absorbant et utilisez les le plus rapidement possible."),
                
        ],
            etoile: 5),
        
        Recette(id : "11",
                    titre: "Curry vert de poulet",
                    numberPersons : "4",
                    dishType: .lunch,
                    image: "curry vert poulet",
                    tempsDePreparation: 30,
                    tempsDeCuisson: 10,
                    ingredients: [
                        Ingredient(name: "Poulet", image: "", historique: "", nutritiveValues: [], quantity: "500 g"),
                        Ingredient(name: "Lait de coco", image: "", historique: "", nutritiveValues: [], quantity: "40 cl"),
                        Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "2 gousses"),
                        Ingredient(name: "bouquet Basilic ou 5 branches de basilic thaÏ", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "bouquet Coriandre", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Oignon nouveau ou 10 brins de ciboule", image: "", historique: "", nutritiveValues: [], quantity: "5"),
                        Ingredient(name: "tiges Citronnelle", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Piment rouge", image: "", historique: "", nutritiveValues: [], quantity: "1 ou 2"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Racine de gingembre", image: "", historique: "", nutritiveValues: [], quantity: "10 cm"),
                        Ingredient(name: "Huile d'olive", image: "", historique: "", nutritiveValues: [], quantity: "10 cm"),
                        Ingredient(name: "Sel et poivre", image: "", historique: "", nutritiveValues: [], quantity: "10 cm"),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Pelez l’ail, effeuillez les herbes, retirez les premières peaux de la citronnelle. Lavez et coupez grossièrement la ciboule, épépinez les piments et hachez-les. Mettez tous ces ingrédients dans le bol d’un petit robot, râpez le zeste d’1 citron vert et pressez le fruit dans le bol."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Pelez le gingembre et râpez-le (vous devez obtenir une belle cuillerée à soupe). Ajoutez-le au reste des ingrédients et mixez afin d’obtenir une pâte parfumée."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Dans une grande poêle, faites dorer rapidement le poulet en gros cubes avec de l’huile d’olive. Ajoutez la pâte de curry et 30 cl de lait de coco, laissez cuire de 5 à 10 min (pour rester tendre, le poulet ne doit pas cuire trop longtemps)."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "En fin de cuisson, versez le reste de lait de coco, mélangez et retirez du feu. Pressez le citron restant, versez le jus dessus et servez immédiatement. Accompagnez de riz basmati et de quelques bâtonnets de concombre."),
                        
                ],
                    etoile: 5),
            
        Recette(id : "12",
                    titre: "Poulet épicé thaï",
                    numberPersons : "4",
                    dishType: .lunch,
                    image: "Poulet epice thai",
                    tempsDePreparation: 20,
                    tempsDeCuisson: 5,
                    ingredients: [
                        Ingredient(name: "Poulet", image: "", historique: "", nutritiveValues: [], quantity: "400 g"),
                        Ingredient(name: "Pois gourmands", image: "", historique: "", nutritiveValues: [], quantity: "300 g"),
                        Ingredient(name: "Mini-maïs", image: "", historique: "", nutritiveValues: [], quantity: "100 g"),
                        Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "2 gousses"),
                        Ingredient(name: "Gingembre frais pelé", image: "", historique: "", nutritiveValues: [], quantity: "3 cm"),
                        Ingredient(name: "Piments rouges", image: "", historique: "", nutritiveValues: [], quantity: "1 ou 2"),
                        Ingredient(name: "Bouillon de volaille", image: "", historique: "", nutritiveValues: [], quantity: "15 cl"),
                        Ingredient(name: "Basilic thaï", image: "", historique: "", nutritiveValues: [], quantity: "6 tiges"),
                        Ingredient(name: "Coriandre", image: "", historique: "", nutritiveValues: [], quantity: "6 tiges"),
                        Ingredient(name: "Nuoc-mâm", image: "", historique: "", nutritiveValues: [], quantity: "2 c. à soupe"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "1/2"),
                        Ingredient(name: "Sucre de canne", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à café"),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Commencez cette recette de poulet épicé thaï en hachant finement le poulet au couteau, puis le gingembre et les gousses d’ail. Mélangez l’ensemble."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Coupez le piment en deux et retirez les graines. Taillez les mini-maïs en rondelles et les pois gourmands en trois."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Mélangez le bouillon de volaille avec le nuoc-mâm, le sucre et le jus du citron vert. Dans un wok, faites chauffer cette préparation, puis ajoutez le poulet haché, le maïs et les pois gourmands."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "Faites cuire 3 à 4 min. Hors du feu ajoutez la coriandre et le basilic ciselés. Dégustez chaud."),
                        
                ],
                    etoile: 5),
            
        
        Recette(id : "13",
                    titre: "Salade Thaï aux crevettes",
                    numberPersons : "6",
                    dishType: .lunch,
                    image: "Salade thai crevettes",
                    tempsDePreparation: 20,
                    tempsDeCuisson: 2,
                    ingredients: [
                        Ingredient(name: "Vermicelles de riz", image: "", historique: "", nutritiveValues: [], quantity: "200 g"),
                        Ingredient(name: "Crevettes roses cuites", image: "", historique: "", nutritiveValues: [], quantity: "18 g"),
                        Ingredient(name: "Concombres", image: "", historique: "", nutritiveValues: [], quantity: "½"),
                        Ingredient(name: "Carotte", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Pamplemousse rose", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Piments rouges", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Tomates cerises", image: "", historique: "", nutritiveValues: [], quantity: "12"),
                        Ingredient(name: "Oignons nouveaux", image: "", historique: "", nutritiveValues: [], quantity: "3"),
                        Ingredient(name: "Botte de menthe", image: "", historique: "", nutritiveValues: [], quantity: "½"),
                        Ingredient(name: "Botte de coriandre", image: "", historique: "", nutritiveValues: [], quantity: "½"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à soupe"),
                        Ingredient(name: "Nuoc-mâm", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à café"),
                        Ingredient(name: "Sucre de canne", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à café"),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Commencez la réalisation de votre salade thaï en préparant les vermicelles selon les instructions portées sur l’emballage (souvent, un simple trempage dans de l’eau tiède suffit). Égouttez-les, puis déposez-les dans un saladier."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Pelez le pamplemousse à vif, puis passez une lame de couteau entre chaque segment, le long des cloisons blanches, pour en séparer les quartiers. Procédez au-dessus d’une jatte pour recueillir le jus qui s’écoule."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Épépinez le concombre, coupez-le en lamelles. Pelez la carotte et taillez-la en bâtonnets. Émincez les oignons nouveaux, coupez les tomates cerises en deux, épépinez et émincez le piment. Décortiquez les crevettes. Ciselez la menthe et la coriandre. Incorporez l’ensemble aux vermicelles, dans le saladier."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "Mélangez les ingrédients de la sauce dans un bol, ajoutez le jus de pamplemousse recueilli et fouettez bien pour émulsionner. Nappez la salade de cet assaisonnement."),
                        
                ],
                    etoile: 5),
            
        

        Recette(id : "14",
                    titre: "Ragoût de poisson au lait de coco",
                    numberPersons : "6",
                    dishType: .lunch,
                    image: "Ragout poisson lait de coco",
                    tempsDePreparation: 20,
                    tempsDeCuisson: 2,
                    ingredients: [
                        Ingredient(name: "Filet de poisson blanc", image: "", historique: "", nutritiveValues: [], quantity: "1 kg"),
                        Ingredient(name: "Oignon nouveau", image: "", historique: "", nutritiveValues: [], quantity: "1 botte"),
                        Ingredient(name: "Pommes de terre", image: "", historique: "", nutritiveValues: [], quantity: "400 g"),
                        Ingredient(name: "Gingembre frais", image: "", historique: "", nutritiveValues: [], quantity: "2 cm"),
                        Ingredient(name: "Blanc poireau", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Citronelle", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Coriandre", image: "", historique: "", nutritiveValues: [], quantity: "1/2 botte"),
                        Ingredient(name: "Carottes", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Lait coco", image: "", historique: "", nutritiveValues: [], quantity: "30 cl "),
                        Ingredient(name: "Poudre curry", image: "", historique: "", nutritiveValues: [], quantity: "1 c. à café"),
                        Ingredient(name: "Fumet poisson", image: "", historique: "", nutritiveValues: [], quantity: "50 cl"),
                        Ingredient(name: "Sel, poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Faites cuire les pommes de terre 20 min avec la peau, à l’eau bouillante salée. Égouttez-les, pelez-les et coupez-les en cubes."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Lavez et préparez tous les légumes. Coupez-les en morceaux. Retirez les feuilles dures de la citronnelle et coupez-la en tronçons. Pelez et râpez le gingembre. Effeuillez la coriandre. Réservez les feuilles pour la finition, hachez les tiges."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Portez à ébullition le lait de coco et le fumet de poisson. Ajoutez tous les légumes, salez, poivrez, saupoudrez de curry et laissez mijoter 15 min."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "Ajoutez les pommes de terre et le poisson coupé en gros morceaux. Prolongez la cuisson 10 min. Parsemez de coriandre ciselée "),
                        
                ],
                    etoile: 5),
            

        Recette(id : "15",
                    titre: "Galette coréenne aux champignons (Beoseot-jeon)",
                    numberPersons : "3",
                    dishType: .lunch,
                    image: "galette coreenne",
                    tempsDePreparation: 15,
                    tempsDeCuisson: 5,
                    ingredients: [
                        Ingredient(name: "Champignons de Paris", image: "", historique: "", nutritiveValues: [], quantity: "400 g"),
                        Ingredient(name: "Farine de blé", image: "", historique: "", nutritiveValues: [], quantity: "200 g"),
                        Ingredient(name: "Eau", image: "", historique: "", nutritiveValues: [], quantity: "20 cl"),
                        Ingredient(name: "Ciboule", image: "", historique: "", nutritiveValues: [], quantity: "50 g"),
                        Ingredient(name: "Carotte râpée", image: "", historique: "", nutritiveValues: [], quantity: "50 g"),
                        Ingredient(name: "Sel et poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Huile végétale", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Commencez cette recette de galette coréenne en éminçant les champignons en tranches de 3 m. Coupez la ciboule tous les 4 cm. Mélangez la farine, l’eau, la ciboule, la carotte et la moitié des champignons. Salez et poivrez."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Huilez une poêle chauffée à feu moyen, étalez-y rapidement la pâte, disposez dessus des tranches de champignons. Enfoncez-les fermement avec une spatule. Laissez cuire 2 à 3 min, retournez la galette et laissez cuire jusqu’à ce qu’elle soit dorée. Coupez-la en parts et servez-la sans attendre avec la sauce."),
                        
                ],
                    etoile: 5),
            

        Recette(id : "16",
                    titre: "Tomates provençales au four",
                    numberPersons : "6",
                    dishType: .lunch,
                    image: "Tomates provencales",
                    tempsDePreparation: 25,
                    tempsDeCuisson: 15,
                    ingredients: [
                        Ingredient(name: "Tomate", image: "", historique: "", nutritiveValues: [], quantity: "6"),
                        Ingredient(name: "Persil", image: "", historique: "", nutritiveValues: [], quantity: "1 petit bouquet"),
                        Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "6"),
                        Ingredient(name: "Chapelure", image: "", historique: "", nutritiveValues: [], quantity: "6 c. à soupe"),
                        Ingredient(name: "Huile d'olive", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Sel", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Lavez les tomates et séchez-les. Coupez-les en deux et retirez le maximum de pépins. Salez-les et retournez-les 15 minutes sur une grille."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Pelez et hachez finement l’ail. Lavez, séchez, effeuillez et hachez finement le persil. Dans un saladier, mélangez l’ail, le persil et la chapelure. Préchauffez le four à 210°C (thermostat 7)."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Disposez les tomates dans un plat four huilé, les unes à côté des autres. Garnissez-les de persillade. Arrosez d’un filet d’huile d’olive. Enfournez et faites cuire 20 à 25 minutes."),
                        
                ],
                    etoile: 5),
            

        Recette(id : "17",
                    titre: "Patates douces rôties au four, au fromage bleu et aux noix",
                    numberPersons : "4",
                    dishType: .lunch,
                    image: "patate douce rotie",
                    tempsDePreparation: 10,
                    tempsDeCuisson: 45,
                    ingredients: [
                        Ingredient(name: "Patate douce", image: "", historique: "", nutritiveValues: [], quantity: "4"),
                        Ingredient(name: "Bleu", image: "", historique: "", nutritiveValues: [], quantity: "120 g"),
                        Ingredient(name: "Noix", image: "", historique: "", nutritiveValues: [], quantity: "50 g"),
                        Ingredient(name: "Ciboulette", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Huile d'olive", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Pousses d'épinards", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Commencez cette recette de patates douces rôties en préchauffant le four à 220 °C (th. 7/8). Hachez grossièrement les noix. Lavez les patates douces avec une brosse à légume puis essuyez-les. Glissez les patates sur des brochettes pour une cuisson plus homogène. Placezles dans un plat et enfournez 35 min."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Sortez le plat, baissez le four à 180 °C (th. 6), retirez les brochettes puis fendez les patates douces en deux sans aller jusqu’au bout, insérez des morceaux de bleu, ajoutez les noix hachées et enfournez 10 min."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Poivrez les patates douces, parsemez de ciboulette, versez un filet d’huile d’olive et accompagnez d’une salade de pousses d’épinards."),
                        
                ],
                    etoile: 5),
            

        Recette(id : "18",
                    titre: "Yam woon sen",
                    numberPersons : "4",
                    dishType: .lunch,
                    image: "Yam woon sen",
                    tempsDePreparation: 15,
                    tempsDeCuisson: 10,
                    ingredients: [
                        Ingredient(name: "Vermicelle de soja", image: "", historique: "", nutritiveValues: [], quantity: "200 g"),
                        Ingredient(name: "Porc", image: "", historique: "", nutritiveValues: [], quantity: "200 g"),
                        Ingredient(name: "Sauce de poisson (nam pla)", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à soupe"),
                        Ingredient(name: "Sucre", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à café"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à soupe"),
                        Ingredient(name: "Piment sec", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à café"),
                        Ingredient(name: "Céleri chinois", image: "", historique: "", nutritiveValues: [], quantity: "1"),
                        Ingredient(name: "Oignon nouveau", image: "", historique: "", nutritiveValues: [], quantity: "20 g"),
                        Ingredient(name: "Échalote", image: "", historique: "", nutritiveValues: [], quantity: "3"),
                        Ingredient(name: "Coriandre fraîche", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Cachuète torréfiée et concassée", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Huile végétale", image: "", historique: "", nutritiveValues: [], quantity: ""),
                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Faites cuire les vermicelles en suivant les indications sur le paquet (entre 5 et 10 min). Égouttez-les dans une passoire et déposez-les dans un saladier."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Émincez le céleri. Hachez les piments, 1 échalote et les oignons. Faites cuire le porc haché dans une poêle avec un peu d’eau pour qu’il ne sèche pas. Ajoutez le porc aux vermicelles, puis la sauce de poisson, le jus de citron vert, le sucre, le piment, le céleri chinois, les oignons nouveaux, l’échalote et mélangez soigneusement."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Avant de servir, faites frire 2 échalotes émincées dans un peu d’huile, séchez-les avec du papier absorbant. Parsemez le plat d’échalotes frites, de cacahuètes concassées et de coriandre fraîche."),
                        
                ],
                    etoile: 5),
            

        Recette(id : "19",
                    titre: "Pad Thaï",
                    numberPersons : "6",
                    dishType: .lunch,
                    image: "Pad Thai",
                    tempsDePreparation: 30,
                    tempsDeCuisson: 25,
                    ingredients: [
                        Ingredient(name: "Nouille de riz", image: "", historique: "", nutritiveValues: [], quantity: "300 g"),
                        Ingredient(name: "Crevette crue", image: "", historique: "", nutritiveValues: [], quantity: "600 g"),
                        Ingredient(name: "Pousse de soja", image: "", historique: "", nutritiveValues: [], quantity: "150 g"),
                        Ingredient(name: "Oeuf", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Cébette", image: "", historique: "", nutritiveValues: [], quantity: "6"),
                        Ingredient(name: "Cacahuète", image: "", historique: "", nutritiveValues: [], quantity: "60 g"),
                        Ingredient(name: "Tofu ferme", image: "", historique: "", nutritiveValues: [], quantity: "100 g"),
                        Ingredient(name: "Coriandre", image: "", historique: "", nutritiveValues: [], quantity: "10 brins"),
                        Ingredient(name: "Cassonade", image: "", historique: "", nutritiveValues: [], quantity: "2 c. à soupe"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Sauce nuoc-mâm", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à soupe"),
                        Ingredient(name: "Sauce soja", image: "", historique: "", nutritiveValues: [], quantity: "4 c. à soupe"),
                        Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "2 gousses"),
                        Ingredient(name: "Huile d'arachide ou de tournesol", image: "", historique: "", nutritiveValues: [], quantity: "3 c. à soupe"),
                        Ingredient(name: "Sel et poivre", image: "", historique: "", nutritiveValues: [], quantity: ""),

                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Faites chauffer la moitié de l'huile dans un wok ou une grande poêle. Battez les œufs en omelette et faites les cuire 5 minutes sans cesser de mélanger. Débarrassez sur une assiette."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Pendant ce temps, faites tremper les nouilles de riz dans une grande quantité d'eau bouillante jusqu'à ce qu'elles ramollissent."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Décortiquez les crevettes en laissant la queue, incisez le dos et retirez le boyau noir. Rincez, épépinez et coupez le piment en rondelles."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "Dans le wok, chauffez le reste de l'huile. Faites revenir le tofu coupé en gros cubes pendant 5 minutes, puis ajoutez les crevettes. Faites revenir 5 minutes."),
                        EtapeRecette(numEtape: 5, descriptionEtape: "Ajoutez les nouilles égouttées, les sauces, le piment, l'ail, le sucre et un peu d'eau. Mélangez et faites sauter 5 minutes."),
                        EtapeRecette(numEtape: 6, descriptionEtape: "Juste avant de servir, ajoutez les pousses de soja et les oignons tiges coupés en bâtonnets, puis les oeufs."),
                        EtapeRecette(numEtape: 7, descriptionEtape: "Laissez chauffer encore 2 minutes puis servez avec les cacahuètes concassées parsemées sur le dessus, les feuilles de coriandre et des quartiers de citron vert."),
                        
                ],
                    etoile: 5),

        Recette(id : "20",
                    titre: "Bouillon thaï (tom yam koung)",
                    numberPersons : "4",
                    dishType: .lunch,
                    image: "Bouillon thai",
                    tempsDePreparation: 30,
                    tempsDeCuisson: 25,
                    ingredients: [
                        Ingredient(name: "Tomate", image: "", historique: "", nutritiveValues: [], quantity: "200 g"),
                        Ingredient(name: "Crevette crue", image: "", historique: "", nutritiveValues: [], quantity: "20"),
                        Ingredient(name: "Petits épis de maïs", image: "", historique: "", nutritiveValues: [], quantity: "125 g"),
                        Ingredient(name: "Citron vert", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Echalotes", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Ail", image: "", historique: "", nutritiveValues: [], quantity: "1 gousse"),
                        Ingredient(name: "Piment thaï", image: "", historique: "", nutritiveValues: [], quantity: "1/2 ou 1"),
                        Ingredient(name: "Galanga", image: "", historique: "", nutritiveValues: [], quantity: "50 g"),
                        Ingredient(name: "Citronnelle", image: "", historique: "", nutritiveValues: [], quantity: "3 tiges"),
                        Ingredient(name: "Citron kaffir", image: "", historique: "", nutritiveValues: [], quantity: "6 feuilles"),
                        Ingredient(name: "Nuoc-mâm", image: "", historique: "", nutritiveValues: [], quantity: "10 c. à soupe"),
                        Ingredient(name: "Sucre", image: "", historique: "", nutritiveValues: [], quantity: "2 c. à café"),
                        Ingredient(name: "Basilic thaï", image: "", historique: "", nutritiveValues: [], quantity: "2"),
                        Ingredient(name: "Coriandre", image: "", historique: "", nutritiveValues: [], quantity: ""),
                        Ingredient(name: "Cives ou ciboulette thaï", image: "", historique: "", nutritiveValues: [], quantity: ""),

                    
                        
                ],
                    etapes: [
                        EtapeRecette(numEtape: 1, descriptionEtape: "Commencez cette recette de bouillon thaï en préparant les ingrédients : pressez les citrons, puis hachez les herbes, froissez ou déchirez les feuilles de citrons kaffir pour libérer leurs parfums. Décortiquez les crevettes, gardez la queue et retirez le boyau. Réservez."),
                        EtapeRecette(numEtape: 2, descriptionEtape: "Ôtez la partie extérieure de la citronnelle, puis fendez-la en deux et écrasezla à l’aide d’un pilon ou le dos d’un couteau. Mixez l’ail, l’échalote, le galanga et le piment."),
                        EtapeRecette(numEtape: 3, descriptionEtape: "Dans une casserole, versez 1, 5 l d’eau, ajoutez le mélange mixé, les feuilles de citron kaffir. Portez à ébullition 3 à 4 min. Ajoutez les épis de maïs coupés en tronçons, les tomates épluchées et concassées, et la citronnelle. Couvrez et laissez mijoter 10 min."),
                        EtapeRecette(numEtape: 4, descriptionEtape: "Ajoutez les crevettes, le nuoc-mâm, le jus des citrons verts et les herbes. Stoppez la cuisson dès que les crevettes sont nacrées et juste tendres, soit environ au bout de 2 min."),
                        
                ],
                    etoile: 5)
    
]


struct Database_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
