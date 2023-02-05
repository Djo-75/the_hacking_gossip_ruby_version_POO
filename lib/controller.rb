require 'gossip'
require 'view'

# Il aura 3 méthodes : une qui gère la création d'un potin, une qui gère l'affichage de la liste des potins, et une qui permet de détruire un potin. 
# Une fois l'action effectuée (via le model), la méthode devra renvoyer vers la view.

class Controller

    def initialize 
        @view = View.new
    end

    def create_gossip
        params = @view.create_gossip

        gossip = Gossip.new(params[:author], params[:content]) # appel à la classe Gossip pour créer un nouveau potin
        gossip.save
    end

    def index_gossips
        @view.index_gossips(Gossip.all)    # = self.all dans Gossip      
    end

    def destroy_gossips
        @view.index_gossips(Gossip.all)
        gossip_to_delete = @view.destroy_gossips
        Gossip.destroy_gossips(gossip_to_delete)
        @view.index_gossips(Gossip.all)
    end

end