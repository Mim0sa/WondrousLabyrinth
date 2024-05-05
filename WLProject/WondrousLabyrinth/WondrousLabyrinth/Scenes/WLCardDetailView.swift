//
//  WLCardDetailView.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/11.
//

import SwiftUI

struct WLCardDetailView: View {
    var body: some View {
        GeometryReader { geometryReader in
            ScrollView {
                VStack {
                    Image("75")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometryReader.size.width / 1.6,
                               height: geometryReader.size.width / 1.6 / 300 * 420)
                        .shadow(radius: 6)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    HStack(alignment: .center, spacing: 2) {
                        Text("苍响V")
                            .font(Font.custom("SmileySans-Oblique", size: 32))
                            .padding(.trailing, 8)
                        Text("HP")
                            .font(.system(size: 16))
                        Text("70")
                            .font(.system(size: 26, weight: .semibold))
                        Image("Water")
                        Spacer()
                    }
                    .padding(.leading, 30)
                    HStack(alignment: .center, spacing: 10) {
                        Text("宝可梦")
                            .font(.system(size: 14))
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .background(.gray90)
                            .cornerRadius(8)
                        Text("基础")
                            .font(.system(size: 14))
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .background(.gray90)
                            .cornerRadius(8)
                        Text("GX")
                            .font(.system(size: 14))
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .background(.gray90)
                            .cornerRadius(8)
                        Text("TAG TEAM")
                            .font(.system(size: 14))
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .background(.gray90)
                            .cornerRadius(8)
                        Spacer()
                    }
                    .padding(.leading, 30)
                }
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    WLCardDetailView()
}
