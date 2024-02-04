//
//  ContentView.swift
//  webview-example
//
//  Created by nabetama on 2024/02/04.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var webView: WKWebView?
    private let url = "https://yahoo.co.jp"
    
    var body: some View {
        VStack {
            if let webView = webView {
                VStack(spacing: 0){
                    WebView(url: URL(string: url)!, webView: webView)
                    Spacer()
                    Divider()
                    // Footer menu
                    HStack {
                        Button(action: {
                            webView.goBack()
                        }, label: {
                            Image(systemName: "chevron.left")
                        })
                        Spacer()
                            .frame(width: 30.0)
                        Button(action: {
                            webView.goForward()
                        }, label: {
                            Image(systemName: "chevron.right")
                        })
                        Spacer()
                        Button(action: {
                            webView.reload()
                        }, label: {
                            Image(systemName: "arrow.circlepath")
                        })
                        Spacer()
                            .frame(width: 50.0)
                    }
                    .padding(.leading,50)
                    .padding(.top, 10)
                    .padding(.vertical, 10)
                }
                .background()
            }
        }
        .onAppear {
            webView = WKWebView()
        }
    }
}

#Preview {
    ContentView()
}
