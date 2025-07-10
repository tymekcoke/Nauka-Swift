// Liczby całkowite

// Swift ignoruje '_' dla prostoty odczytu podczas kodowania
let num1 = 1000000000
let num2 = 1_000_000_000
print(num1, num2)


// ——————————————————————————————


// Operacje z '.='
var num3 = 64

num3 += 1
num3 -= 3
num3 /= 2
num3 *= 4
num3 %= 3
print(num3)

// Sprawdzanie czy 'num4' jest wielokrotnością liczby x (w tym przypadku '7' oraz '2'). Zwraca True lub False.
let num4 = 49

// TRUE
print(num4.isMultiple(of: 7))
// FALSE
print(num4.isMultiple(of: 2))


// ——————————————————————————————


// Możemy również zmieniać zmienne Int o ich rozmiary bit'owe. Standardowo są one 64 bit'owe. Mamy rozmiary: Int8, Int16, Int32, Int64 oraz ich nie-podpisane (unsigned) odpowiedniki np. UInt8 (większy zakres, ale bez ujemnych).

let a: Int8 = 100
let b: Int16 = 500
// aby dodać, musimy przekonwertować:
let sum = Int16(a) + b

// Korzystamy z adnotacji typu (po ': ...'). Przydaje się nam kiedy deklarujemy zmienną bez wartości początkowej albo po prostu w celu zwiększenia czytelności kodu.

var username: String
username = "Tymon"


// ——————————————————————————————


// Obsługa przepełnienia - 'arithmetic wrapping'

// Przykład „wrapping" na typie UInt8 (0–255)
var u: UInt8 = UInt8.max   // 255
u = u &+ 1                 // wrapping addition
print("UInt8 max &+ 1 =", u)  // 0

// Przykład wrapping na typie Int8 (–128…127)
var i: Int8 = Int8.max     // 127
i = i &+ 1                 // wrapping addition
print("Int8 max &+ 1 =", i)   // –128

// Domyślne operatory bez '&' spowodują błąd (trap) przy overflow w debug build:
// let crash = Int8.max + 1  // runtime error: arithmetic overflow


// ——————————————————————————————


// Liczby możemy również zapisywać w różnych systemach pozycyjnych

let hex  = 0xFF       // 255
let bin  = 0b1010     // 10
let oct  = 0o17       // 15


// ——————————————————————————————


// Losowe liczby całkowite

let r = Int.random(in: 1...100)

// W Swifcie '...' to closed range operator. Czyli 1...5 to jak <1,5>.
// Możemy również stosować połowiczne domknięcie np. 0..<3 to <0,3).
// UWAGA: Swift nie ma składni pisania (x, y). Są tylko te dwa przypadki.

for j in 0..<3 {
  print(j)
}
// Wypisze: 0, 1, 2   (3 już nie)