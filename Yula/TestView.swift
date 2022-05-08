//
//  TestView.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

struct TestView: View {
    let index: Int
    @State private var selected: Int = 10
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                VStack {
                    Text(Localizer.testQuestions[index])
                        .titleStyle()
                    
                    ForEach(Localizer.testAnswers[index].indices.sorted(), id: \.self) { idx in
                        Group {
                            HStack {
                                Image(systemName: selected == idx ? "circle.fill" : "circle")
                                    .foregroundColor(.dark)
                                    .font(.title)
                                Text(Localizer.testAnswers[index][idx])
                                    .bodyStyle()
                                
                                Spacer()
                            }
                            .padding()
                            .border(Color.accent)
                            .padding()
                        }
                        .onTapGesture {
                            selected = selected == idx ? 10 : idx
                            answers[index] = selected
                        }
                    }
                    
                    HStack {
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
        .navigationTitle("Вопрос #\(index + 1)")
    }
    
    private var nextView: some View {
        index + 1 < Localizer.testCount ?
        AnyView(TestView(index: index + 1)) : AnyView(TestResultsView())
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(index: 0)
    }
}
