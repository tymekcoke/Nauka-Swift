import Cocoa

// Bool – typ logiczny w Swift
// Reprezentuje dwie wartości: true lub false

// ——————————————————————————————


// 1. Źródła wartości Bool

// a) Porównania
let a = 5
let b = 10
let isEqual       = (a == b)   // false
let isNotEqual    = (a != b)   // true
let isGreater     = (a > b)    // false
let isLessOrEqual = (a <= b)   // true

// b) Metody zwracające Bool
let filename = "koszalin.jpg"
let isJPG     = filename.hasSuffix(".jpg")     // true

let number    = 120
let isMultipleOf4 = number.isMultiple(of: 4)   // true


// ——————————————————————————————


// 2. Operatory logiczne

// Negacja
var flag     = true
let notFlag  = !flag     // false

// Możemy również użyć '.toggle()'
// true -> false
flag.toggle()
print(flag)

// false -> true
flag.toggle()
print(flag)


// Conjunction (AND)
let cond1    = (a < b) && (number.isMultiple(of: 3))
// true && true  → true

// Disjunction (OR)
let cond2    = (a > b) || (number.isMultiple(of: 7))
// false || false  → false

// Łączenie wielu warunków z nawiasami
let cond3    = (a < b) && ((number % 5 == 0) || flag)
// true && (true || true)  → true


// ——————————————————————————————


// 3. Użycie w sterowaniu przepływem

if isJPG {
    print("Plik ma rozszerzenie .jpg")
} else {
    print("Inny format")
}


// Prosta pętla z while z warunkiem Bool
var counter = 3
while counter > 0 {
    print("Zostaje \(counter)...")
    counter -= 1
}


// ——————————————————————————————


// 4. Konwersja do Bool

// Nie ma bezpośredniej konwersji z Int/String → Bool.
// Możemy jednak robić własne sprawdzenia:
let text = "hello"
let isEmpty = text.isEmpty     // false
let hasContent = !text.isEmpty // true


// ——————————————————————————————


// 5. Przydatne metody

// isEmpty – sprawdza, czy kolekcja lub String jest pusty
let emptyArray: [Int] = []
print(emptyArray.isEmpty)      // true

// optionalBool ?? false – bezpieczne rozpakowanie
// Znak '?' po typie (np. Int?, Bool?) oznacza Optional:
// Zmienna z takim typem może mieć również wartość 'nil' - czyli brak wartości.
let optionalFlag: Bool? = nil
// Znaku '??' używamy aby podać domyślną wartość, gdy mamy 'nil'
let definite = optionalFlag ?? false   // false

// Dzięki temu nasz kod może obsługiwać zarówno logiczne odpowiedzi ('true' i 'false) jak i brak decyzji ('nil')