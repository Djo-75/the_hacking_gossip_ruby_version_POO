require 'pry'
require 'csv'

class Gossip 

    attr_reader :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save # méthode d'instance
        CSV.open("./db/gossip.csv", "a+") do |csv|
          csv << [@author, @content]
        end
        rescue => error
        puts "Error while writing to the CSV file: #{error}"
    end

    def self.all # self = méthode de classe, self remplace Gossip ici
        @all_gossips = []
        CSV.foreach("./db/gossip.csv") do |gossips|
        @all_gossips << gossips
        end
        return @all_gossips
    end

    def self.destroy_gossips(gossip_to_delete)
        @all_gossips.delete_at(gossip_to_delete)
        CSV.open("./db/gossip.csv", "w") do  |csv_lines|
            @all_gossips.each do |index|
                csv_lines << [index[0],index[1]]
            end
        end
    end
end


# binding.pry