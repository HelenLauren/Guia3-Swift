enum Resolucao {
    case sd, hd, uhd
}

enum TipoMidia {
    case musica(titulo: String, artista: String, duracao: Int)
    case video(titulo: String, duracao: Int, resolucao: Resolucao)
    case podcast(titulo: String, host: String, episodio: Int)
}

func descreverMidia(_ midia: TipoMidia) {
    switch midia {
    case .musica(let titulo, let artista, let duracao):
        print("🎵 \(titulo) - \(artista) | \(duracao)s") //hehe emojis no swift
        
    case .video(let titulo, let duracao, let resolucao):
        print("🎬 \(titulo) | \(duracao)s | resolução: \(resolucao)")
        
    case .podcast(let titulo, let host, let episodio):
        print("🎙️ \(titulo) com \(host) - episódio \(episodio)")
    }
}

let musica1 = TipoMidia.musica(titulo: "Over Now", artista: "Post Malone", duracao: 215)
let musica2 = TipoMidia.musica(titulo: "Call Back", artista: "Don Toliver", duracao: 210)

let video1 = TipoMidia.video(titulo: "SPIDER-MAN: BRAND NEW DAY Official Trailer (HD)", duracao: 160, resolucao: .hd)

let podcast1 = TipoMidia.podcast(titulo: "True Crime Story", host: "Rotten Mango", episodio: 120)
let podcast2 = TipoMidia.podcast(titulo: "Dark Cases Explained", host: "Rotten Mango", episodio: 121)

//forma decente de usar
let listaMidias: [TipoMidia] = [
    musica1, musica2,
    video1,
    podcast1, podcast2
]

listaMidias.forEach { descreverMidia($0) }