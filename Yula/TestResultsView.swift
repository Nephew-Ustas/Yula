//
//  TestResultsView.swift
//  Yula
//
//  Created by Daniel Pustotin on 08.05.2022.
//

import SwiftUI

struct TestResultsView: View {

    var correct: Int {
        var cnt = 0
        answers.indices.forEach {
            cnt += answers[$0] == Localizer.testCorrectAnswers[$0] ? 1 : 0
        }
        return cnt
    }

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text("Ты отвелил правильно на \(correct) вопрос" + (correct == 1 ? "" : 2 <= correct && correct <= 4 ? "а" : "ов"))
                    .titleStyle()

                Text(correct == Localizer.testCount ? "Отличный результат!" : "Попробуй еще раз")
                    .titleStyle()

                NavigationLink {
                    TestIntroView()
                } label: {
                    Text(Localizer.oneMoreTimeTitle)
                        .buttonStyle()
                }

                NavigationLink {
                    StartView()
                } label: {
                    Text(Localizer.homeTitle)
                        .buttonStyle()
                }
            }
        }
        .navigationTitle("Результаты")
        .navigationBarHidden(true)
    }
}

struct TestResultsView_Previews: PreviewProvider {
    static var previews: some View {
        TestResultsView()
    }
}
