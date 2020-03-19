-- Gmod RunString Debug
-- https://github.com/HexaneNetworks/gmod-runstring-debug
-- v1.0
-- June 2019

hexanerunstringdebug = hexanerunstringdebug or {}
hexanerunstringdebug["RunString"] = hexanerunstringdebug["RunString"] or RunString

_G["RunString"] = function(...)
    print( debug.traceback() )
    return hexanerunstringdebug["RunString"](...)
end
