//
//  TextArea.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/21.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placholder: String, text: Binding<String>) {
        self.placeholder = placholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
       }
        .font(.body)
    }
}
