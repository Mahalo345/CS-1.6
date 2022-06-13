#include <amxmodx>
#include <engine>

#define PLUGIN "de_inferno ladder Remover"
#define VERSION "1.0"
#define AUTHOR "AMXX Community"

public plugin_init()
{
    register_plugin(PLUGIN, VERSION, AUTHOR)
    
    new szMapname[32]
    get_mapname(szMapname, charsmax(szMapname))
    
    if(equali(szMapname, "de_inferno"))
    {
        remove_entities()
    }
    else
    {
        pause("ad")
    }
}

remove_entities()
{
    remove_entity(find_ent_by_model(-1, "func_wall", "*15"))
    
    remove_entity(find_ent_by_model(-1, "func_ladder", "*142"))
} 