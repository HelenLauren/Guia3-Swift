struct ResultadoOperacao<T, E> {
    var sucesso: T?
    var erro: E?
    
    init(sucesso: T) {
        self.sucesso = sucesso
        self.erro = nil
    }
    
    init(erro: E) {
        self.erro = erro
        self.sucesso = nil
    }
}


func convertStringsToInt(_ array: [String]) -> [ResultadoOperacao<Int, String>] {
    var resultados: [ResultadoOperacao<Int, String>] = []
    
    for item in array {
        if let numero = Int(item) {
            resultados.append(ResultadoOperacao(sucesso: numero))
        } else {
            resultados.append(ResultadoOperacao(erro: "Erro ao converter '\(item)'"))
        }
    }
    
    return resultados
}

//teste
let entrada = ["10", "20", "Helen", "30"]

let resultado = convertStringsToInt(entrada)

for r in resultado {
    if let valor = r.sucesso {
        print("Sucesso: \(valor)")
    } else {
        print("Erro: \(r.erro!)")
    }
}