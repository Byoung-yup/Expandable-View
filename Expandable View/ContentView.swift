//
//  ContentView.swift
//  Expandable View
//
//  Created by 김병엽 on 2024/01/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    ExpandableView(
                        thumbnail: ThumbnailView {
                            VStack {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("Reading time: 3 mins")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 8))
                            }
                            .padding()
                        },
                        expanded: ExpandedView {
                            VStack {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 28, weight: .bold))
                                
                                Text("Reading time: 3 mins")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 14))
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua.")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 14))
                            }
                            .padding()
                        }
                    )
                    ExpandableView(
                        thumbnail: ThumbnailView {
                            VStack {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("Reading time: 3 mins")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 8, weight: .bold))
                            }
                            .padding()
                        },
                        expanded: ExpandedView {
                            VStack {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 28, weight: .bold))
                                
                                Text("Reading time: 3 mins")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 14, weight: .bold))
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua.")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 14))
                            }
                            .padding()
                        }
                    )
                }
                .padding()
            }
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    ContentView()
}
