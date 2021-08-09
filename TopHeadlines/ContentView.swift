//
//  ContentView.swift
//  TopHeadlines
//
//  Created by ramil on 09.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = NewsViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .onAppear() {
                viewModel.getNews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
