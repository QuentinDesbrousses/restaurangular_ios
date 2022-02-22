//
//  Ingredient.swift
//  Restaurangular (iOS)
//
//  Created by Ingrid on 19/02/2022.
//

import Foundation

protocol IngredientObserver{
    func change(nom_ingredient:String)
    func change(unite:String)
    func change(cout_unitaire:Double)
    func change(stock:Double)
    func change(id_cat_ingr:Int)
    func change(id_allergene:Int)
}

class Ingredient {
    
    var ingredientObserver : IngredientObserver?
    
    var id_ingredient : Int
    var nom_ingredient : String {
        didSet{
            self.ingredientObserver?.change(nom_ingredient : self.nom_ingredient)
        }
    }
    
    var unite : String {
        didSet{
            self.ingredientObserver?.change(unite : self.unite)
        }
    }
    
    var cout_unitaire : Double {
        didSet{
            self.ingredientObserver?.change(cout_unitaire : self.cout_unitaire)
        }
    }
    
    var stock : Double {
        didSet{
            self.ingredientObserver?.change(stock : self.stock)
        }
    }
    
    var id_cat_ingr : Int {
        didSet{
            self.ingredientObserver?.change(id_cat_ingr : self.id_cat_ingr)
        }
    }
    
    var id_allergene : Int {
        didSet{
            self.ingredientObserver?.change(id_allergene : self.id_allergene)
        }
    }

    var allergene : String
    
    var nom_cat_ingr : String
    
    init (id_ingredient:Int, nom_ingredient:String,unite:String, cout_unitaire:Double, stock:Double, id_cat_ingr : Int, id_allergene : Int, allergene : String, nom_cat_ingr : String  ){
        self.id_ingredient=id_ingredient
        self.nom_ingredient=nom_ingredient
        self.unite=unite
        self.cout_unitaire=cout_unitaire
        self.stock=stock
        self.id_cat_ingr=id_cat_ingr
        self.id_allergene=id_allergene
        self.allergene=allergene
        self.nom_cat_ingr=nom_cat_ingr
    }
}