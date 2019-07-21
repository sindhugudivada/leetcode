class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
        sfav = {}
        vfav = {}
        result = []
        for index,val in enumerate(list1):
            sfav[val] = index
        for index,val in enumerate(list2):
            vfav[val] = index  
        common = {}    
        for key in sfav:
            if key in vfav:
                common[key] = sfav[key] + vfav[key]
        min_index_rest = sorted(common, key = common.get)        
        min_value = common[min_index_rest[0]]
        
        for ele in min_index_rest:
            if common[ele] == min_value:
                result.append(ele)
            else:
                break
        return result        
                
                
