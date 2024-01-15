//
//  ExpadableView.swift
//  Expandable View
//
//  Created by 김병엽 on 2024/01/15.
//

import SwiftUI

struct ExpandableView: View {
    @Namespace private var namespace
    @State private var show = false
    
    var thumbnail: ThumbnailView
    var expanded: ExpandedView
    
    var body: some View {
        ZStack {
            if !show {
                thumbnailView()
            } else {
                expandedView()
            }
        }
    }
    
    @ViewBuilder
    private func thumbnailView() -> some View {
        
        thumbnail
//            .matchedGeometryEffect(id: "view", in: namespace)
            .background(
                Color.gray.opacity(0.7)
                    .matchedGeometryEffect(id: "background", in: namespace)
            )
            .mask {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .matchedGeometryEffect(id: "mask", in: namespace)
            }
        
        Button {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        } label: {
            Image(systemName: "chevron.down")
                .foregroundStyle(Color.white)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .matchedGeometryEffect(id: "mask", in: namespace)
        
    }
    
    @ViewBuilder
    private func expandedView() -> some View {
        
        expanded
//            .matchedGeometryEffect(id: "view", in: namespace)
            .background(
                Color.gray
                    .matchedGeometryEffect(id: "background", in: namespace)
            )
            .mask {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .matchedGeometryEffect(id: "mask", in: namespace)
            }
        
        Button {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        } label: {
            Image(systemName: "chevron.up")
                .foregroundStyle(Color.white)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .matchedGeometryEffect(id: "mask", in: namespace)
        
    }
}
