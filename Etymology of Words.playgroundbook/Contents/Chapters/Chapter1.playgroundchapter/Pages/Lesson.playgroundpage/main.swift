//#-hidden-code

import PlaygroundSupport
import SwiftUI
import NaturalLanguage

let setup = Etymology()

private var colorScheme: ColorScheme = .light

typealias Language = NLLanguage

func showLanguage(_ language: Language) {
    setup.showLanguages([language])
}

func showLanguages(_ languages: [Language]) {
    setup.showLanguages(languages)
}

func showAllLanguages() {
    setup.showAllLanguages()
}

func hideLanguage(_ language: Language) {
    setup.hideLanguage(language)
}

func toggleColorScheme() {
    if colorScheme == .light {
        colorScheme = .dark
    } else {
        colorScheme = .light
    }
}

//#-end-hidden-code

/*:
 # Etymology of words

\
 What is etymology? Well, to put it simply, etymology is the study of the history of words. By knowing the history of words, one can also learn of their origins. Possibly also understand that the word usually does not originate from your language. These are called cognates, by the way.
 
\
 Now let us play a little game. We will learn about some word etymology then we can search on the map for its probable cognates.
 Firstly only the English language word will appear on the map. You can activate other languages by calling functions through code. Click on the emoji to see a word etymology in English.
 Try guessing all the languages that have a word to show on the map. (Hint: all of them are from some country which is on the screen)

\
 The main objective here is to awaken your thirst to learn a new subject. You might not find a cognate just by seeing a word in another language, but at least I hope it makes you curious about this subject. Some terms on the list have a cognate that does not have the same meaning in another language. You may perceive this phenomenon by looking closely at the "related words" sentence.

 - Tip:
 Use the `showLanguages([.portuguese, .german])` function to set which languages are appearing on the map. You can also use `showLanguage(.english)`, `hideLanguage(.portuguese)`, `showAllLanguages()`.
*/

//#-code-completion(identifier, show, "showLanguage()", "showLanguages()", "hideLanguage()", "showAllLanguages", "toggleColorScheme()")
//#-editable-code
showLanguage(<#T##type a language code here##Language#>)
// toggleColorScheme()
//#-end-editable-code

//#-hidden-code
PlaygroundPage.current.setLiveView(ContentView().environmentObject(setup)
    .colorScheme(colorScheme)
)
//#-end-hidden-code

/*:
Explanation:
\
The word examples used all come from Indo-European, a language group that contains many languages from that originated in Europe and Asia.
*/
