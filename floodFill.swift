class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
     var output = image
     var stcolor = output[sr][sc]
     if stcolor == newColor {
         return output
     }   
     output[sr][sc] = newColor
     var tuples = [(1,0), (0,1), (-1,0), (0,-1)]
        
     for (x,y) in tuples {
         
         var newr = sr + x
         var newc = sc + y
         if newr >= 0 && newr < output.count && newc >= 0 && newc < output[0].count {
             if output[newr][newc] == stcolor {
                 output = floodFill(output,newr,newc,newColor)
             } 
         }
    }
    return output  
}
}
