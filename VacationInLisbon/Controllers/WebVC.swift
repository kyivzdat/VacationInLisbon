//
//  WebVC.swift
//  VacationInLisbon
//
//  Created by Vladyslav PALAMARCHUK on 1/20/20.
//  Copyright © 2020 Vladyslav PALAMARCHUK. All rights reserved.
//

import UIKit
import WebKit

class WebVC: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var url: URL!
    var webView: WKWebView!
    var progressView: UIProgressView!
    
    deinit {
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
        setupToolBar()
        let request = URLRequest(url: url)
        webView.load(request)
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
    }
    
    func setupWebView() {
        navigationController?.navigationBar.isTranslucent = false
        webView = WKWebView()
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        webView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(webView)
        
        // Constraint
        webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        
        if #available(iOS 11.0, *) {
            webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        } else {
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        }
    }
    
    func setupToolBar() {
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let loadViewButton = UIBarButtonItem(customView: progressView)
        let flexibleSpacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let refreshButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        let stopButton = UIBarButtonItem(barButtonSystemItem: .stop, target: webView, action: #selector(webView.stopLoading))
        let goBackButton = UIBarButtonItem(image: UIImage(named: "goBack"), style: .plain, target: webView, action: #selector(webView.goBack))
        toolbarItems = [loadViewButton, flexibleSpacer, goBackButton, flexibleSpacer, refreshButton, flexibleSpacer, stopButton]
        navigationController?.isToolbarHidden = false
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webView.estimatedProgress)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
