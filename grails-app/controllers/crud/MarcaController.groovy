package crud

class MarcaController {

    def index() {
        [marcas: Marca.findAll()]
    }

    def create() {}

    def edit() {
        [marca: Marca.findById(params.get("marca_id") as Long)]
    }

    def save() {
        Marca marca = new Marca(params)
        marca.save()

        flash.message = "Marca adicionada com sucesso!"
        flash.args = ["Sucesso!"]
        flash.default = "Adicionado com sucesso!"

        redirect(controller: 'marca', action: 'index')
    }

    def update(){
        Marca marca = Marca.findById(params.get("marca_id") as Long)
        marca.properties = params
        marca.save()
        redirect(controller: 'marca', action: 'index')
    }

    def delete(){
        Marca marca = Marca.findById(params.get("marca_id") as Long)
        marca.delete()
        redirect(controller: 'marca', action: 'index')
    }
}
