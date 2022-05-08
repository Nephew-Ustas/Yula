//
//  InfoView.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

struct InfoView: View {
    let index: Int
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ScrollView {
                    VStack {
                        Text(index < Localizer.infoTitles.count ?
                             Localizer.infoTitles[index] : "No title")
                        .titleStyle()
                        
                        Text(index < Localizer.infoBodies.count ?
                             Localizer.infoBodies[index] : "No body")
                        .bodyStyle()
                        
                        HStack {
                            NavigationLink {
                                StartView()
                            } label: {
                                Text(Localizer.homeTitle)
                                    .buttonStyle()
                            }
                            Spacer()
                            NavigationLink {
                                nextView
                            } label: {
                                Text(Localizer.continueTitle)
                                    .buttonStyle()
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Инфо")
        .navigationBarHidden(true)
    }
    
    private var nextView: some View {
        index + 1 < Localizer.infoCount ?
        AnyView(InfoView(index: index + 1)) : AnyView(TestIntroView())
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(index: 0)
    }
}
