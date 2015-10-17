/// fps_calculate_z(z)
gml_pragma("forceinline")
if argument0<=0{
    return -(10*argument0)/(argument0/50-10)
    exit;}
return power(0.8*argument0,(argument0/2500+1))
