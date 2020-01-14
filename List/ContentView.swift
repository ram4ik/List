//
//  ContentView.swift
//  List
//
//  Created by ramil on 14.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let names = [Person(id: UUID(), name: "Jim", image: "person"),
                 Person(id: UUID(), name: "Antuan", image: "person"),
                 Person(id: UUID(), name: "Kerry", image: "person"),
                 Person(id: UUID(), name: "Bill", image: "person"),
                 Person(id: UUID(), name: "Otus", image: "person"),
                 Person(id: UUID(), name: "Kevin", image: "person"),
                 Person(id: UUID(), name: "Mark", image: "person")
    ]
    
    var body: some View {
        List(names, id: \.id) { name in
            Image(systemName: name.image)
            Text(name.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let image: String
}
