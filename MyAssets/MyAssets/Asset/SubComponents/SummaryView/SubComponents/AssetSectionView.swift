//
//  AssetSectionView.swift
//  MyAssets
//
//  Created by woojin Choi on 2023/07/03.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title) // OO은행
                        .font(.title3)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount) // OOO원
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(
            id: 0,
            type: .bankAccount,
            data: [
                AssetData(id: 0, title: "신한은행", amount: "5,300,000원"),
                AssetData(id: 1, title: "국민은행", amount: "700,000원"),
                AssetData(id: 2, title: "카카오뱅크", amount: "112,900,000원")
            ]
        )
        AssetSectionView(assetSection: asset)
    }
}
