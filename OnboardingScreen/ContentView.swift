//
//  ContentView.swift
//  OnboardingScreen
//
//  Created by John Kulimushi on 30/11/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    
    var body: some View {
        VStack {
            PageViewContainer( viewControllers: Page.getAll.map({  UIHostingController(rootView: PageView(page: $0) ) }))
        }.frame(maxHeight: .infinity).background(Color.backgroundColor).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
