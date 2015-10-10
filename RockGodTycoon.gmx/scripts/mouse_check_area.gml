/// mouse_check_area(x1,y1,x2,y2);
gml_pragma("forceinline"); // YYC speed up

var m_x = mouse_x-view_xview[0];
var m_y = mouse_y-view_yview[0];

if ( m_x > argument0 )
{
    if ( m_x < argument2 )
    {
        if ( m_y > argument1 )
        {
            if ( m_y < argument3 )
            {
                return true;
            }else{return false;}
        }else{return false;}
    }else{return false;}
}else{return false;}
