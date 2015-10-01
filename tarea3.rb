class Nodo
        def intialize(data,ref = nil)
        @data = data
        @refe = refe
    end

    def get_data
        return @data
    end

    def set_data(newdata)
        @dato = newdata
    end

    def get_ref
        return @ref
    end

    def set_ref(newref)
        @ref = newref
    end
end

class Linkedlist
    def initialize 
        @size = 0
        @header = nil
    end

    def add_var(value)
        @aize = @size + 1

        if @header == nil
                @header = Node.new(value)  
        nodeActual = @header
            while nodeActual.get_ref != nil
                nodeActual = nodeActual.get_ref
            end
        nodeActual.set_ref(Node.new(value))
        end
    end

    def  print_list
	nodeActual = @header
	accumulate = []
	while nodeActual.get_ref != nil
		accumulate += [nodeActual.get_data]
		nodeActual = nodeActual.get_ref
	end
	accumulate += [nodeActual.get_dato]
	puts accumulate.join(",")
    end
end

list = Linkedlist.new
stop=1
while stop != -1
	a=gets.chomp
    	if a.to_i == -1
		stop = -1
	else
		list.add_elem(a)
	end
end