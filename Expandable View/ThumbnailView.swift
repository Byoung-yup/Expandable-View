//
//  ThumbnailView.swift
//  Expandable View
//
//  Created by 김병엽 on 2024/01/15.
//

import SwiftUI

struct ThumbnailView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        
            AnyView(content)
        
    }
}
