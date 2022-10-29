package crud

class CarroController {

    def index() {
        [carros: Carro.list(params), carroCount: Carro.count()]
    }

    def create() {
        [marcas: Marca.findAll()]
    }

    def edit() {
        [carro: Carro.findById(params.get("carro_id") as Long), marcas: Marca.findAll()]
    }

    def save() {
        Marca marca = Marca.get(params.get("marca_id") as Long)
        Carro carro = new Carro(params)
        carro.setMarca(marca)

        carro.save()
        redirect(controller: 'carro', action: 'index')
    }

    def update() {
        Marca marca = Marca.get(params.get("marca_id") as Long)
        Carro carro = Carro.findById(params.get("carro_id") as Long)
        carro.properties = params
        carro.setMarca(marca)

        carro.save()
        redirect(controller: 'carro', action: 'index')
    }

    def delete() {
        Carro carro = Carro.findById(params.get("carro_id") as Long)
        carro.delete()
        redirect(controller: 'carro', action: 'index')
    }
}