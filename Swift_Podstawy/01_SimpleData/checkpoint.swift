import Cocoa

// Jakieś proste rzeczy z prostych danych

// Konwersja temperatur
let humanTemperatureInCelsius: Double = 36.6
let humanTemperatureInFarenheit: Double = (humanTemperatureInCelsius * 9) / 5 + 32
print("Temperatura w stopniach celsjusza: \(humanTemperatureInCelsius)")
print("Temperatura w stopniach farenheita: \((humanTemperatureInFarenheit * 10).rounded() / 10)")


// ——————————————————————————————


// Obliczanie miejsc zerowych funkcji kwadratowej (bez wykrywania błędów)
let wartoscA: Double = 1 // wartość przy x^2
let wartoscB: Double = -5 // wartość przy x
let wartoscC: Double = 6 // liczba wolna

// Obliczamy delte
let delta: Double = wartoscB * wartoscB - 4 * wartoscA * wartoscC

// Obliczamy miejsca zerowe
let root1 = (-wartoscB + delta.rounded()) / (2 * wartoscA)
let root2 = (-wartoscB - delta.rounded()) / (2 * wartoscA)