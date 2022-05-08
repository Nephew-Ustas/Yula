//
//  StartView.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text(Localizer.onboarding)
                    .titleStyle()
                
                Spacer()
                
                HStack {
                    NavigationLink {
                        InfoView(index: 0)
                    } label: {
                        Text(Localizer.continueTitle)
                            .buttonStyle()
                    }
                    NavigationLink {
                        TestIntroView()
                    } label: {
                        Text(Localizer.takeTest)
                            .buttonStyle()
                        
                    }
                }
            }
        }
        .navigationTitle("Главная")
        .navigationBarHidden(true)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StartView()
        }
    }
}
