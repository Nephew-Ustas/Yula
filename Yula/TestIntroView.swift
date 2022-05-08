//
//  TestIntroView.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

var answers: [Int] = []

struct TestIntroView: View {
    
    init() {
        answers = [10, 10, 10, 10, 10, 10]
    }
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text(Localizer.testIntro)
                    .titleStyle()
                
                NavigationLink {
                    TestView(index: 0)
                } label: {
                    Text(Localizer.startTitle)
                        .buttonStyle()
                }
                
            }
        }
        .navigationTitle("Тест")
        .navigationBarHidden(true)
    }
}

struct TestIntroView_Previews: PreviewProvider {
    static var previews: some View {
        TestIntroView()
    }
}
