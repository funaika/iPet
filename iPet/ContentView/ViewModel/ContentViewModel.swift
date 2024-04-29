//
//  ContentViewModel.swift
//  iPet
//
//  Created by Kalen on 4/12/24.
//

import Foundation
import SwiftUI

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var pet: Pet
        private var repository = PetRepository()
        
        init() {
            pet = repository.loadData()
        }
        func saveData() {
            objectWillChange.send()
            repository.saveData(pet: pet)
        }
        func feed() {
            pet.lastMeal = Date()
            saveData()
        }
        func giveWater() {
            pet.lastDrink = Date()
            saveData()
        }
    }
}
