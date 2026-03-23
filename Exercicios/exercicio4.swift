protocol Desenhavel {
    var area: Double { get }
    func desenhar()
}

struct Circulo: Desenhavel {
    var raio: Double
    
    var area: Double {
        return Double.pi * raio * raio
    }
    
    func desenhar() {
        print("Desenhando circulo......")
    }
}

struct Retangulo: Desenhavel {
    var largura: Double
    var altura: Double
    
    var area: Double {
        return largura * altura
    }
    
    func desenhar() {
        print("Desenhando retangulo..........")
    }
}

extension Desenhavel {
    func imprimirDescricao() {
        print("Área: \(area) | Tipo: \(type(of: self))")
    }
}


func desenharTudo(_ formas: [Desenhavel]) {
    for forma in formas {
        forma.desenhar()
        forma.imprimirDescricao()
    }
}

//teste
let formas: [Desenhavel] = [
    Circulo(raio: 2),
    Retangulo(largura: 4, altura: 5)
]

desenharTudo(formas)