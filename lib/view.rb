

class View

    def create_gossip
        puts "Quel est le nom de l'auteur du potin ?"
        puts author = gets.chomp

        puts "Et quel est le potin que tu souhaites balancer ?"
        puts content = gets.chomp

        params = {content: content, author: author}
        return params
    end 

    def index_gossips(array_gossips)
    array_gossips.each do |line|
        print array_gossips.index(line)
            print line
            puts
        end
    end

    def destroy_gossips
        puts "Tu veux supprimer quel potin ?"    
        gossip_to_delete = gets.chomp.to_i  
        return gossip_to_delete
    end
    
end
