//
//  AllCoinsView.swift
//  SwiftCryptoApp
//
//  Created by MAC on 07/11/2022.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coins")
                    
                
                Spacer()
                
                Text("Prices")
                    
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView(.vertical){
                VStack {
                    ForEach(viewModel.coins){ coin in
                        CoinRowView(coin: coin)
                    }
                    
                }
            }
        }
    }
}
//
//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
