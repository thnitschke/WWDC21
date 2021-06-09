import NaturalLanguage

public class Word {
    
    let base: String
    let emoji: String
    let etymology: String
    let translationDict: [NLLanguage: String]
    
    public init(_ base: String, emoji: String, etymology: String = "", dict: [NLLanguage: String]) {
        self.base = base
        self.emoji = emoji
        self.etymology = etymology
        self.translationDict = dict
    }
    
    func translate(to language: NLLanguage) -> String {
        if let translation = translationDict[language] {
            return translation
        } else {
            return language == .english ? base : "*"
        }
    }
    
    static func makeDict(
        da: String,
        nl: String,
        de: String,
        fr: String,
        it: String,
        es: String,
        pt: String,
        el: String,
        pl: String) -> [NLLanguage: String] {
        return [
            .danish: da,
            .dutch: nl,
            .german: de,
            .french: fr,
            .italian: it,
            .spanish: es,
            .portuguese: pt,
            .greek: el,
            .polish: pl,
        ]
    }
}

extension Word: Hashable {
    public static func == (lhs: Word, rhs: Word) -> Bool {
        return lhs.base == rhs.base
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(base)
    }
}
