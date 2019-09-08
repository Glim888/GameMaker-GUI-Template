/// @description async_get_string(id)
/// @function async_get_string
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
