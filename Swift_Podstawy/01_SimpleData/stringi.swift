import Cocoa

// Stringi

// ——————————————————————————————

// 1. Literały stringów
let empty1 = ""
let empty2 = String()
print("Pusty string 1:", empty1, "Pusty string 2:", empty2)

// Unicode i emoji
let emoji     = "🐱‍👓"
let accented  = "Zażółć gęślą jaźń"
print(emoji, accented)


// ——————————————————————————————

// 2. Łączenie i interpolacja
let first  = "Hello"
let second = "Swift"

// concatenation
let helloSwift = first + ", " + second + "!"
print(helloSwift)    // Hello, Swift!

// interpolacja
let name    = "Tymon"
let welcome = "Cześć, \(name)! Masz \(emoji.count) emoji."
print(welcome)


// ——————————————————————————————

// 3. Podstawowe właściwości i metody
let sample = "Zażółć"

// count – liczba znaków (Unicode-aware)
print("Długość '\(sample)' =", sample.count)

// hasPrefix / hasSuffix
print(sample.hasPrefix("Za"),  sample.hasSuffix("ć"))


// ——————————————————————————————

// 4. Substringy i indeksowanie

let text = "Swift"

// startIndex – pierwszy indeks w stringu jako String.Index, nie Int, zapewniający poprawne operacje Unicode
let i0 = text.startIndex
// text[i0] – dostęp do pojedynczego Character pod wskazanym indeksem; zwraca Character
print("Pierwszy znak:", text[i0])
// index(_:offsetBy:) – metoda zwracająca indeks oddalony o 'offsetBy' pozycji od podanego indeksu, bezpiecznie z uwzględnieniem Unicode
let i1   = text.index(i0, offsetBy: 1)
// text[i1...i3] – wycinanie Substring w zakresie od i1 do i3 włącznie; zakres w nawiasach []
let i3   = text.index(i0, offsetBy: 3)
let part = text[i1...i3]
print("Fragment [1...3]:", part)


// ——————————————————————————————

// 5. Mutowalność
var mutable = "foo"
mutable += "bar"
print("Mutable string:", mutable)


// ——————————————————————————————

// 6. Konwersje
let number = 2025
let strNum = String(number)                   // "2025"
// String(format: "%04d", ...) – formatowanie liczb: %d = integer, 04 = minimalna szerokość 4, dopełniane zerami z lewej
let formatted = String(format: "%04d", number) // "2025"
print(strNum, formatted)


// ——————————————————————————————

// 7. Operacje na białych znakach
let padded = "  hello  \n"

// Metoda trimmingCharacters(in:) usuwa wybrane znaki z początku i końca ciągu:
// - Argument in: to CharacterSet, czyli zestaw znaków do usunięcia.
// - .whitespacesAndNewlines obejmuje spacje, tabulatory oraz znaki nowej linii.
// Dzięki temu trimmed jest nowym Stringiem pozbawionym białych znaków i końcowych linii.
let trimmed = padded.trimmingCharacters(in: .whitespacesAndNewlines)
print("Trimowane:'\(trimmed)'")


// ——————————————————————————————

// 8. Podział i łączenie
let csv = "a,b,c,d"
// split(separator: "x") – dzieli String na [Substring] według separatora, np. przecinek
let parts = csv.split(separator: ",")   // ["a","b","c","d"]
print("Split:", parts)

// joined(separator: "x") – łączy elementy kolekcji w jeden String, wstawiając między nie podany separator
let joined = parts.joined(separator: "|")
print("Joined:", joined)