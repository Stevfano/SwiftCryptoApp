//
//  TopMoversView.swift
//  SwiftCryptoApp
//
//  Created by MAC on 07/11/2022.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Gainers")
                .font(.headline)
                .fontWeight(.bold)
            
            ScrollView(.horizontal){
                HStack(spacing: 15){
                    ForEach(viewModel.TopMovingCoins) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }.padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
