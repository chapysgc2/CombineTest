//
//  ContentView.swift
//  testCombine
//
//  Created by Hazel Alain on 15/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contador = Modelo()
    //aqui le pondremos observedObject en donde creamos la clase es observableobject
    @State private var titulo = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("contador = \(contador.contador)")
            
            Button("Reinciar"){
                contador.contador += 1
            }
            
            Spacer()
            vista2()
            Spacer()
            vista3()
            Spacer()
            vista4()
            Spacer()
            vista5()
                    
        }
        .padding()
    }
}


struct vista2: View {
    
    @ObservedObject var contador = Modelo()
    //aqui le pondremos observedObject en donde creamos la clase es observableobject
    
    var body: some View {
        VStack {
            
            Text("contador de vista 2 (observedObject) = \(contador.contador)")
            
            Button("Sumar contador"){
                contador.contador += 1
            }
                    
        }
        .padding()
    }
}


struct vista3: View {
    
    @StateObject var contador = Modelo()
    //aqui le pondremos observedObject en donde creamos la clase es observableobject
    
    var body: some View {
        VStack {
            
            Text("contador de vista 3 (StateObject) = \(contador.contador)")
            
            Button("Sumar contador"){
                contador.contador += 1
            }
                    
        }
        .padding()
    }
}


struct vista4: View {
    
    @EnvironmentObject var contador : Modelo
    //aqui le pondremos observedObject en donde creamos la clase es observableobject
    
    var body: some View {
        VStack {
            
            Text("contador de vista 3 (EnvironmentObject) = \(contador.contador)")
            
            Button("Sumar contador"){
                contador.contador += 1
            }
                    
        }
        .padding()
    }
}


struct vista5: View {
    
    @EnvironmentObject var contador : Modelo
    //aqui le pondremos observedObject en donde creamos la clase es observableobject
    
    var body: some View {
        VStack {
            
            Text("contador de vista 3 (EnvironmentObject) = \(contador.contador)")
            
            Button("Sumar contador"){
                contador.contador += 1
            }
                    
        }
        .padding()
    }
}
