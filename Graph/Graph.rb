# //2 classes, vertex and edge
# weighted graphs have density for edges, unweighted dont
# directed graphs vs undirected
# 

class AdjacenyListGraph
    attr_accessor :verticies
    def initialize
        @verticies = Array.new
    end
    def add_vertex(data)
        tmp = Vertex.new
        self.verticies << tmp
    end
end

class Vertex #node
    attr_accessor :data, :neighbors
    def initialize(data)
        @data = data
        @neighbors = Array.new
    end
    def edge(end_vtx, weight=1)
        tmp = Edge.new(self, end_vtx, weight)
        @neighbors << tmp;
    end
    
end

class Edge
    # //optional mainly for weighted graphs
    attr_reader :start, :end, :weight
    def initialize(start, end, weight = 1)  
        @start = start
        @end = end
        @weight = weight
    end

end
