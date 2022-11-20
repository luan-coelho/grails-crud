package crud

class Marca {
    String nome
    List<Carro> carroList


    static  transients = ['carroList']


    static constraints = {unique: true
        nome unique: true, blank: false, nullable: false,maxSize: 255
    }


    @Override
    String toString() {
        return this.nome
    }
}
