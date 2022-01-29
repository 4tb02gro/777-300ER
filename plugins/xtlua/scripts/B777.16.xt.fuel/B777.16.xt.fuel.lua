--[[
*****************************************************************************************
* Script Name: fuel
* Author Name: nathroxer001
* Script Description: Cockpit instrument code
*****************************************************************************************
--]]

--replace create_command
function deferred_command(name,desc,realFunc)
    return replace_command(name,realFunc)
 end
 
 --replace create_dataref
 function deferred_dataref(name,nilType,callFunction)
    if callFunction~=nil then
       print("WARN:" .. name .. " is trying to wrap a function to a dataref -> use xlua")
    end
    return find_dataref(name)
 end
 
 
 --*************************************************************************************--
 --**                             XTLUA GLOBAL VARIABLES                              **--
 --*************************************************************************************--
 
 --[[
 SIM_PERIOD - this contains the duration of the current frame in seconds (so it is alway a
 fraction).  Use this to normalize rates,  e.g. to add 3 units of fuel per second in a
 per-frame callback you’d do fuel = fuel + 3 * SIM_PERIOD.
 
 IN_REPLAY - evaluates to 0 if replay is off, 1 if replay mode is on
 --]]
 
 --*************************************************************************************--
 --**                                CREATE VARIABLES                                 **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                              FIND X-PLANE DATAREFS                              **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                             CUSTOM DATAREF HANDLERS                             **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                              CREATE CUSTOM DATAREFS                             **--
 --*************************************************************************************--
 
 B777DR_fuel_flow                = deferred_dataref("Strato/777/cockpit/fuel/pumps", "array[4]")
 
 --*************************************************************************************--
 --**                             X-PLANE COMMAND HANDLERS                            **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                                 X-PLANE COMMANDS                                **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                             CUSTOM COMMAND HANDLERS                             **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                             CREATE CUSTOM COMMANDS                               **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                                      CODE                                       **--
 --*************************************************************************************--
 
 
 
 --*************************************************************************************--
 --**                                  EVENT CALLBACKS                                **--
 --*************************************************************************************--
 
 --function aircraft_load()
 
 --function aircraft_unload()
 
 --function flight_start()
 
 --function flight_crash()
 
 --function before_physics()
 
 --function after_physics()

 --function after_replay()
 
function fuel_flow(phase, duration)
   B777DR_fuel_flow = 0 
end