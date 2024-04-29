//
//  ContentView.swift
//  iPet
//
//  Created by Kalen on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 15, on: .main, in: .common)
    
    var body: some View {
        Form {
            Section("Pet") {
                TextField("Name your pet!", text: $vm.pet.name)
                Image(vm.pet.happinessLevel == "Happy" ? "happyIPet" : "sadIPet")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .centerH()
                Text("Age: **\(vm.pet.age)** seconds")
                Text("Status: **\(vm.pet.happinessLevel)**")
                Text("Hunger: **\(vm.pet.hunger)**")
                Text("Thirst: **\(vm.pet.thirst)**")
            }
            Section("Actions") {
                Button("Feed", action: vm.feed)
                Button("Give Water", action: vm.giveWater)
            }
        }
        .onReceive(timer) {_ in
            vm.saveData()
        }
    }
    
}

#Preview {
    ContentView()
}


