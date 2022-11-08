//
//  HomeView.swift
//  SwiftCryptoApp
//
//  Created by MAC on 07/11/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack() {
                // Top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // All coins view
                AllCoinsView(viewModel: viewModel)
                
            }.navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
