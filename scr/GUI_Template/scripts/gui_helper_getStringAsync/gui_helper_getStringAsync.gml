/// @description gui_helper_getStringAsync(id)
/// @function gui_helper_getStringAsync
/// @param id

var _id = ds_map_find_value(async_load, "id");
 if (_id == argument0)
    {
    if (ds_map_find_value(async_load, "status"))
       {
       if (ds_map_find_value(async_load, "result") != "")
          {
          return ds_map_find_value(async_load, "result");
          }
       }
    }
return undefined;
