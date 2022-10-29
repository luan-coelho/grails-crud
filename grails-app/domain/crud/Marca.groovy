package crud

class Marca {
    String nome

    static constraints = {
        nome unique: true, blank: false, nullable: false
    }

    @Override
    String toString() {
        return this.nome
    }
}
