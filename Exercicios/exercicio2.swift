//filtrar o array

//versao normal
func filtrarArray(_ array: [Int], usando closure: (Int) -> Bool) -> [Int] {
    var resultado: [Int] = []
    
    for numero in array {
        if closure(numero) {
            resultado.append(numero)
        }
    }
    
    return resultado
}

let numeros = [1, 2, 3, 4, 5, 6]

let pares = filtrarArray(numeros) { $0 % 2 == 0 }
print(pares)

//com capture list
class Filtro {
    var minimo = 3
    
    func aplicar() {
        let numeros = [1, 2, 3, 4, 5]
        
        let resultado = filtrarArray(numeros) { [weak self] numero in
            guard let self = self else { return false }
            return numero >= self.minimo
        }
        
        print(resultado)
    }
}