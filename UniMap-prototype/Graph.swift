//
//  Graph.swift
//  UniMap-prototype
//
//  Created by Krish Kalai on 1/22/21.
//

import Foundation

class Graph {
    class GraphNode : Hashable {
        static func == (lhs: Graph.GraphNode, rhs: Graph.GraphNode) -> Bool {
            return lhs.name == rhs.name
        }
        
        var hashValue: Int {
            return self.name.hash
        }
        
//        func hash(into hasher: inout Hasher) {
//
//        }
        
        var name: String
        var relative_coords_x: Int
        var relative_coords_y: Int
        //geocoords
        var description: String
        
        init(_ name: String, _ rel_x: Int, _ rel_y: Int, _ desc: String) {
            self.name = name
            self.relative_coords_x = rel_x
            self.relative_coords_y = rel_y
            self.description = desc
        }
        
        init (_ name: String) {
            self.name = name
            self.relative_coords_x = 0
            self.relative_coords_y = 0
            self.description = ""
        }
    }
    
    class GraphEdge : Hashable {
        var name: String
        var weight: Double
        
        init(_ name: String, _ weight: Double) {
            self.name = name
            self.weight = weight
        }
        
        init(_ name: String) {
            self.name = name
            self.weight = 0
        }
        
        func setWeight(_ newWeight: Double) {
            self.weight = newWeight
        }
        
        static func == (lhs: Graph.GraphEdge, rhs: Graph.GraphEdge) -> Bool {
            return lhs.name == rhs.name
        }
        
        var hashValue: Int {
            return self.name.hash
        }
    }
    
    var adj_list: [GraphNode : [GraphEdge]] = [:]
    
    init() {
        
    }
    
    func add_key(_ name: String, _ rel_x: Int, _ rel_y: Int, _ desc: String, _ connections: [String]) {
        let g: GraphNode = GraphNode(name, rel_x, rel_y, desc)
        if adj_list[g] == nil {
            adj_list[g] = []
        }
        
        for connection in connections {
            let edge: GraphEdge = GraphEdge(connection)
            adj_list[g]!.append(edge)
        }
    }
    
    func build_connections() {
        for (src_node, edge_list) in adj_list {
            for edge in edge_list {
                let dest_node: GraphNode = adj_list.first(where: {$0.key.name == edge.name})!.key
                let x1:Int = src_node.relative_coords_x
                let y1:Int = src_node.relative_coords_y
                let x2:Int = dest_node.relative_coords_x
                let y2:Int = dest_node.relative_coords_y
                let x_diff:Int = ((x2-x1)*(x2-x1))
                let y_diff:Int = ((y2-y1)*(y2-y1))
                edge.weight = round(sqrt(Double(x_diff + y_diff)))
                
                //x^2 + y^2 = z^2
            }
            
        }
        
    }
    
    func display_graph() {
        for (k, v) in adj_list {
            print("\(k.name) (\(k.relative_coords_x), \(k.relative_coords_y))")
            for item in v {
                print("\t\(item.name) -> \(item.weight)")
            }
        }
    }
    
    func shortest_path(_ src: String) -> ([String : Double], [String: String?])! {
        // vertex set Q
        var q: Set<String> = []
        var dist: [String : Double] = [:]
        var prev: [String : String?] = [:]
        
        // foreach vertex v in graph
        for v in adj_list {
            // dist[v] = inf
            dist[v.key.name] = -1.0
            // add v to Q
            q.insert(v.key.name)
        }
        
        // dist from src to src is always 0
        dist[src] = 0
        
        while(!q.isEmpty) {
            // u = vertex with min dist[v]
            var u: String = ""
            var min_dist: Double = -1.0
            for (k, v) in dist {
                if v != -1 && (min_dist == -1 || v <= min_dist) && q.contains(k) {
                    u = k
                    min_dist = v;
                }
            }
            
            q.remove(u)
            
            for v in adj_list[GraphNode(u)]! {
                let alt = dist[u]! + v.weight
                if dist[v.name]! == -1 || alt < dist[v.name]! {
                    dist[v.name] = alt
                    prev[v.name] = u
                }
            }
        }
        
        return (dist, prev)
    }
    
    func interpret_results(_ result: ([String : Double], [String: String?])) {
        let dist = result.0
        let prev = result.1
        
        for (k, _) in adj_list {
            if prev[k.name] != nil {
                print("\(k.name)<--\(dist[k.name]!)--\(prev[k.name]!! as String)")
            }
        }
    }
    
    func list_path(_ src: String, _ dest: String, _ prev: [String : String?]) -> [String]! {
        var path: [String] = []
        var curr_loc: String = dest
        while (curr_loc != src) {
            path.append(curr_loc)
            curr_loc = prev[curr_loc]!! as String
        }
        path.append(src)
        path.reverse()
        
        for loc in path {
            print(loc)
        }
        
        return path
    }
}
