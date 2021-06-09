import SwiftUI
import NaturalLanguage

public class Etymology: ObservableObject {
    
    public init() {}
    
    public let wordsArray = [
        Word("Apple", emoji: "🍎",
             etymology: """
                from Proto-Germanic *ap(a)laz.
                ⬅️ from PIE *h₂ébōl "apple".
                """,
             dict: Word.makeDict(
                da: "Æble",
                nl: "Appel",
                de: "Apfel",
                fr: "Pomme",
                it: "Mela",
                es: "Manzana",
                pt: "Maçã",
                el: "Μήλο",
                pl: "Jabłko"
             )),
        Word("Star", emoji: "⭐️",
             etymology: """
                from Proto-Germanic *sternan-.
                ⬅️ from Proto-Indo-European *H₂ster- "star".
                """,
             dict: Word.makeDict(
                da: "Stjerne",
                nl: "Ster",
                de: "Stern",
                fr: "Etóile",
                it: "Stella",
                es: "Estrella",
                pt: "Estrela",
                el: "Αστέρι",
                pl: "Gwiazda"
             )),
        Word("Woman", emoji: "👩🏽‍🦱",
             etymology: """
                from Old English wiman, wimman-, from wīfmann (“woman”, literally “female person”), a compound of wīf (“woman”) +‎ mann (“person”).
                ‼️ different from Proto-Indo-European *gʷén-eH₂- "woman, wife".
                """,
             dict: Word.makeDict(
                da: "Kvinde",
                nl: "Vrouw",
                de: "Frau",
                fr: "Femme",
                it: "Donna",
                es: "Mujer",
                pt: "Mulher",
                el: "Γυναίκα",
                pl: "Kobieta"
             )),
        Word("Man", emoji: "🧔🏿",
             etymology: """
                from Proto-Germanic *mann- (“human being, man”).
                ‼️ different from Proto-Indo-European *dʰĝʰemon- "person, human (litt. of the earth)".
                """,
             dict: Word.makeDict(
                da: "Mand",
                nl: "Man",
                de: "Mann",
                fr: "Homme",
                it: "Uomo",
                es: "Hombre",
                pt: "Homem",
                el: "Ανδρας",
                pl: "Człowiek"
             )),
        Word("Fish", emoji: "🐠",
             etymology: """
                from Proto-Germanic *fiskaz (“fish”).
                ⬅️ from Proto-Indo-European *peysḱ- (“fish”) (compare Irish iasc, Latin piscis).
                """,
             dict: Word.makeDict(
                da: "Fisk",
                nl: "Vis",
                de: "Fisch",
                fr: "Poisson",
                it: "Pesce",
                es: "Pescado",
                pt: "Peixe",
                el: "Ψάρι",
                pl: "Ryba"
             )),
        Word("Cake", emoji: "🍰",
             etymology: """
                from Proto-Germanic *kakǭ (“cake”).
                ⬅️ from Proto-Indo-European *gog (“ball-shaped object”).
                """,
             dict: Word.makeDict(
                da: "Kage",
                nl: "Taart",
                de: "Kuchen",
                fr: "Gâteau",
                it: "Torta",
                es: "Tarta",
                pt: "Bolo",
                el: "Κέικ",
                pl: "Ciasto"
             )),
        Word("Eye", emoji: "👁",
             etymology: """
                from Proto-Germanic *augô (“eye”).
                ⬅️ from Proto-Indo-European *h₃okʷ-, *h₃ekʷ- (“eye; to see”).
                """,
             dict: Word.makeDict(
                da: "Øje",
                nl: "Oog",
                de: "Auge",
                fr: "Œil",
                it: "Occhio",
                es: "Ojo",
                pt: "Olho",
                el: "Μάτι",
                pl: "Oko"
             )),
        Word("Three", emoji: "3️⃣",
             etymology: """
                from Proto-Germanic *þrīz.
                ⬅️ from Proto-Indo-European *tréyes.
                """,
             dict: Word.makeDict(
                da: "Tre",
                nl: "Drie",
                de: "Drei",
                fr: "Trois",
                it: "Tre",
                es: "Tres",
                pt: "Três",
                el: "Τρία",
                pl: "Trzy"
             )),
        Word("Hundred", emoji: "💯",
             etymology: """
                from Proto-Germanic *hundaradą.
                ⬅️ from *hundą (from Proto-Indo-European *ḱm̥tóm) + *radą (“count”).
                """,
             dict: Word.makeDict(
                da: "Hundrede",
                nl: "Honderd",
                de: "Hundert",
                fr: "Cent",
                it: "Cento",
                es: "Cien",
                pt: "Cem",
                el: "Εκατό",
                pl: "Sto"
             )),
        Word("Dog", emoji: "🐕‍🦺",
             etymology: """
                from Old English dogga, docga, of uncertain origin.
                🌀 there is "Hound" from Proto-Germanic *hundaz.
                ⬅️ from pre-Germanic *ḱuntós, enlargement of Proto-Indo-European *ḱwṓ (“dog”).
                """,
             dict: Word.makeDict(
                da: "Hund",
                nl: "Hond",
                de: "Hund",
                fr: "Chien",
                it: "Cane",
                es: "Perro",
                pt: "Cão",
                el: "Σκύλος",
                pl: "Pies"
             )),
        Word("Cat", emoji: "🐈",
             etymology: """
                from Proto-Germanic *kattuz.
                ❓ perhaps borrowed through Latin cattus (“cat”).
                """,
             dict: Word.makeDict(
                da: "Kat",
                nl: "Kat",
                de: "Katze",
                fr: "Chat",
                it: "Gatto",
                es: "Gato",
                pt: "Gato",
                el: "Γάτα",
                pl: "Kot"
             )),
        Word("Telephone", emoji: "☎️",
             etymology: """
                borrowed from French téléphone.
                ⬅️ from Ancient Greek τῆλε (têle, “afar”) + φωνή (phōnḗ, “voice, sound”).
                """,
             dict: Word.makeDict(
                da: "Telefon",
                nl: "Telefoon",
                de: "Telefon",
                fr: "Téléphone",
                it: "Telefono",
                es: "Teléfono",
                pt: "Telefone",
                el: "Τηλέφωνο",
                pl: "Telefon"
             )),
    ]
    
    public var visibleLanguages: Set<NLLanguage> = [.english]
    
    public func showLanguages(_ languages: [NLLanguage]) {
        visibleLanguages.formUnion(languages)
    }
    
    public func hideLanguage(_ language: NLLanguage) {
        visibleLanguages.remove(language)
    }
    
    public func showAllLanguages() {
        visibleLanguages.formUnion([
            .danish,
            .dutch,
            .german,
            .french,
            .italian,
            .spanish,
            .portuguese,
            .greek,
            .polish,
        ])
    }
}
