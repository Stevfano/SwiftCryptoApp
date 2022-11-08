//
//  TopMoversItemView.swift
//  SwiftCryptoApp
//
//  Created by MAC on 07/11/2022.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading){
            // Coin Image
            KFImage(URL(string: coin.image))
                .resizable()
                .padding(.bottom, 8.0)
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // Coin info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // Coin percent change
            Text("+ \(coin.priceChangePercentage24H.toPercentString())")
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140.0, height: 140.0)
        .background(Color("ItemBackgroundColor"))
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
