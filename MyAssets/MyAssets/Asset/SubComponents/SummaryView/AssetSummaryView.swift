//
//  AssetSummaryView.swift
//  MyAssets
//
//  Created by woojin Choi on 2023/07/03.
//

import SwiftUI

struct AssetSummaryView: View {
    @EnvironmentObject var assetData: AssetSummaryData
    
    var assets: [Asset] {
        return assetData.assets
    }
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(assets) { asset in
                switch asset.type {
                case .creditCard:
                    AssetCardSectionView(asset: asset)
                        .frame(idealHeight: 250)
                default:
                    AssetSectionView(assetSection: asset)
                }
            }
            .background(Color.white) 
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

struct AssetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            AssetSummaryView()
                .environmentObject(AssetSummaryData())
                .background(Color.gray.opacity(0.2))
        }
    }
}
