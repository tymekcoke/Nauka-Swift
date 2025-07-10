import Cocoa

// Liczby zmiennoprzecinkowe

// 1. Przykład precyzji:
let sum = 0.1 + 0.2
print("0.1 + 0.2 =", sum)
// Wynik: 0.30000000000000004 z powodu sposobu przechowywania w binarze

// Swift domyślnie używa Double (double-precision, 64 bity).
// Jeśli chcemy mniejszą precyzję (32 bity), używamy Float:
let f: Float = 3.14


// ——————————————————————————————


// 2. Operacje muszą się odbywać w tym samym typie:
let intValue = 1
let doubleValue: Double = 2.0
// let incorrect = intValue + doubleValue // błąd typów
let mix1 = Double(intValue) + doubleValue  // rzutowanie Int → Double
let mix2 = intValue + Int(doubleValue)     // rzutowanie Double → Int


// ——————————————————————————————


// 3. CGFloat to typ używany w niektórych API (CoreGraphics, UIKit); to alias na Double lub Float
import CoreGraphics
let cg: CGFloat = 4.5
let fromDouble: CGFloat = CGFloat(3.14)


// ——————————————————————————————


// 4. Możemy używać tych samych operatorów co dla Int:
var rating: Double = 5.0
rating *= 2
rating += 0.25
print("Ocena:", rating)  // 10.25


// ——————————————————————————————


// 5. Porównywanie z tolerancją - lepiej sprawdzać równości porównując rożnicę do niewielkiej wartości.
let a = 0.1 + 0.2        // 0.30000000000000004
let b = 0.3
let epsilon = 1e-12 // 0.000000000001
if abs(a - b) < epsilon {
  print("Równe w praktyce")
}


// ——————————————————————————————


// 6. Specjalne wartości: NaN oraz Infinity

// wynik niedozwolonych operacji
(0.0/0.0).isNaN          // true
// wynik dzielenia przez '0'
(1.0/0.0).isInfinite    // true


// ——————————————————————————————


// 7. Zaokrąglanie

let val = 3.14159
// Najpierw mnożąć prez '100' następnie zaokrągląjąc liczbę (314.159 -> 314), następnie dzieląc z powrotem przez '100' możemy zaokrąglić liczbę do wybranej ilości miejsc po przecinku.
let twoDecimals = (val * 100).rounded() / 100   // 3.14

// Rounded może mieć rożne strategie: .rounded(.down) / .up / .towardZero / .awayFromZero / .toNearestOrEven


// ——————————————————————————————


// 7. Typ Decimal dla dokładnych obliczeń dziesiętnych
// Do tego typu potrzebujemy biblioteki 'Foundation' (jest wbudowana w bibliotekę 'Cocoa')

let price: Decimal = 0.1
let qty:  Decimal = 3
let total = price * qty   // dokładnie 0.3


// ——————————————————————————————


// 8. Wydajność - Float jest szybszy i oszczędza pamięć, ale kosztem precyzji. W większości przypadków "bezpieczniej" stosować Double.