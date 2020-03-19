# Gmod RunString Debug
A simple Lua script to debug and print the source of RunString errors in Garry's Mod. 

## Installation Instructions
1. Download the `hexanerunstringdebug.lua` script.
2. Add/upload it to your servers `garrysmod/lua/autorun` directory.
3. Restart the server and wait for the runstring error to appear. Next to it, you'll see more information including the source of the error. 

## Why does this error show?
Commonly, a run string error will display when you are using leaked/malicious addons with a backdoor script embedded. We always advise to **never** use leaked/free addons of paid versions as 9/10 contain harmful backdoors which almost always severely harm your server. Support the developers time and work by purchasing their addons, don't use leaks.   

## Is it easy to fix?
Most of the time, yes. Especially with this script, you can pinpoint the source of the code causing the errors.

## Error Example
You'll see something like this in your console. It's non-detailed nature and confusion lead to the creation of this script. 

```lua
[ERROR] RunString:1: unexpected symbol near '<'
  1. unknown - RunString:0
```

## Usage/Testing Example

```lua
http.Fetch( "https://google.com", function( body, len, headers, code ) RunString(body) end)
```
with the runstring debug script it'll print

```lua
stack traceback:
    lua/autorun/hexanerunstringdebug.lua:6: in function 'RunString'
    lua/autorun/test.lua:1: in function 'onsuccess'
    lua/includes/modules/http.lua:29: in function <lua/includes/modules/http.lua:25>

[ERROR] RunString:1: unexpected symbol near '<'
  1. unknown - RunString:0
```

This simply allows you to pinpoint the source of the error thus allowing your to fix/delete the addon/code :)

## Versions

### Current Version: 1.0

### 1.0 (28 June 2019)
- Initial Release

## Note
Some DRM's included with addons (specifically with gmodstore scripts) won't work when this script is installed on your server. If you experience issues with a DRM conflicting with this script, you'll have to remove this script or temporary disable the addon with DRM. "Xeon" DRM commonly abruptly breaks with scripts like these. 
