package crud

enum TipoCarro {
    CARRO('Carro'), CAMINHAO('Caminhão'), CAMINHONETE('Caminhonete')

    String label

    TipoCarro(String label) {
        this.label = label
    }
}
