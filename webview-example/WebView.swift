//
//  WebView.swift
//  webview-example
//
//  Created by nabetama on 2024/02/04.
//

import SwiftUI
import WebKit

// https://developer.apple.com/documentation/swiftui/uiviewrepresentable
struct WebView: UIViewRepresentable {
    let url: URL
    let webView:WKWebView
    
    // Creates the view object and configures its initial state.
    // Required
    func makeUIView(context: Context) -> WKWebView {
        let view = webView
        
        // A Boolean value that indicates whether horizontal swipe gestures trigger backward and forward page navigation.
        view.allowsBackForwardNavigationGestures = true
        return view
    }
    
    //    Updates the state of the specified view with new information from SwiftUI.
    //    Required
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
