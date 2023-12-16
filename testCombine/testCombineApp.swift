//
//  testCombineApp.swift
//  testCombine
//
//  Created by Hazel Alain on 15/12/23.
//

import SwiftUI

@main
struct testCombineApp: App {
    var modelo = Modelo()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }
    }
}
