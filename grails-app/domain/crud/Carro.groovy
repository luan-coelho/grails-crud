package crud

class Carro {
    String nome
    String modelo
    Date dataLancamento
    Marca marca
    TipoCarro tipo

    static hasOne = [Marca, TipoCarro]

    static constraints = {
        marca nullable: true
        tipo nullable: true
    }
}
