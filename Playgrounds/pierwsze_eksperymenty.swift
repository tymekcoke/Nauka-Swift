// Zestaw framewordków Apple do tworzenia aplikacji na macOS
import Cocoa

// Stała wartość
let pi = 3.14

// Zmienna wartość
var name = "Tymon"
// To przypisze ^ 'name' do 'greeting'
var greeting_old = "Hello, \(name)"

// Aby móc wywoływać 'greeting' po zmianach 'name' bez przeliczen 'greeting' musimy zastosować COMPUTED PROPERTY, która zawsze będzie odwoływać się do bieżacej wartości 'name'.
var greeting: String {
    return "Hello, \(name)"
}

print(greeting)

name = "Kacper"

print(greeting)


// Przypisywanie string'ów wielowierszowych
let multilineString = """
Lorem ipsum
Lorem ipsum
Lorem ipsum
"""

print(multilineString)

// Count liczy ilość znaków (wraz ze spacją)
let nameCountLetters = name.count
print(nameCountLetters)

// W obliczeniach musimy mieć ten sam typ zmiennej, trzeba rzutować. W Swifcie nie ma floata, jest tylko double.
let piTimesNameLetters = Double(nameCountLetters) * pi

// Funkcje zmieniające wielkość liter w Stringu
print(name.uppercased())
print(name.lowercased())

// Funkcje sprawdzające czy String zaczyna się od "..." albo konczy się na "...", zwracają True lub False.
print(name.hasPrefix("T"))
print(name.hasSuffix("r"))