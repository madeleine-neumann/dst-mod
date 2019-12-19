PrefabFiles = {
}
local assets=
{
}

local scheduler = GLOBAL.scheduler

function string.astro_split(str, pat)
   local t = {}  -- NOTE: use {n = 0} in Lua-5.0
   local fpat = "(.-)" .. pat
   local last_end = 1
   local s, e, cap = str:find(fpat, 1)
   while s do
      if s ~= 1 or cap ~= "" then
     table.insert(t,cap)
      end
      last_end = e+1
      s, e, cap = str:find(fpat, last_end)
   end
   if last_end <= #str then
      cap = str:sub(last_end)
      table.insert(t, cap)
   end
   return t
end

function c_announce(msg)
    local TheNet = GLOBAL.TheNet
    TheNet:Announce(msg, nil, nil, nil)
end

function IsInInventory(b)
    local owner = nil

    if b.components.inventoryitem ~= nil and b.components.inventoryitem.owner~= nil then
        return true
    end
    return false
end


function CleanPrefab(prefab, count)
	local b = {}
    for k,v in pairs(GLOBAL.Ents) do
        if v.prefab == prefab then
            if not IsInInventory(v) then
        	   table.insert(b, v)
            end
        end
    end

	print ("there are "..#b.." "..prefab.."s")
	local N = #b


    for k,v in pairs(b) do
        if N <= count then break end
    	v:Remove()
    	N = N-1
    end

end




function Clean()
    c_announce(GetModConfigData("Cleaning_warning_text"));
    GLOBAL.TheWorld:DoTaskInTime(GetModConfigData("Cleaning_delay"), DoClean)
end

function DoClean()

    c_announce(GetModConfigData("Cleaning_text"))
    local prefabs = {"lavae","bee","killerbee","slurper","flower","babybeefalo","beefalo","beefaloherd",
     "spiderden", "spider","spider_warrior","spoiled_food","carrot_planted","krampus", "skeleton_player", "hound", "rabbit"}

    local cust_prefabs_str = GetModConfigData("Custom_prefabs")

    if cust_prefabs_str=="" then
        for i, prefab in ipairs(prefabs) do
            local n = GLOBAL.tonumber(GetModConfigData(prefab.."_Amount"))
            print("CLEAN: ",prefab, n)
            CleanPrefab(prefab, n)
        end

    else

        print ("cust_prefabs_str" , cust_prefabs_str)
        local cplst = cust_prefabs_str:astro_split(",")

        for i, str in ipairs(cplst) do
            local s = str:astro_split(":")
            local prefab, maxn = s[1], GLOBAL.tonumber(s[2])

            print("CLEAN: ",prefab, maxn)
            CleanPrefab(prefab, maxn)
        end
    end


    local Period = GLOBAL.tonumber(GetModConfigData("Clean_Period"))
    GLOBAL.TheWorld:DoTaskInTime(Period, Clean)
    print("NEXT CLEAN IN",Period)
end

function Init(inst)
    GLOBAL.TheWorld.Clean = Clean

    local Period = GLOBAL.tonumber(GetModConfigData("Clean_Period"))
    inst:DoTaskInTime(Period, Clean)
end


AddPrefabPostInit("forest", Init);
AddPrefabPostInit("cave", Init);


-------------------------- Bait items ----------------------------
local function bait_prefab_gems(inst, tag)
        inst:AddTag("edible_GEMS")
        if not inst.components.bait then
                inst:AddComponent("bait")
        end
        if not inst.components.edible then
                inst:AddComponent("edible")
                inst.components.edible.foodtype = GLOBAL.FOODTYPE.GREEN
        end
end

local function bait_prefab_big(inst, tag)
        inst:AddTag("edible_BIG")
        if not inst.components.bait then
                inst:AddComponent("bait")
        end
        if not inst.components.edible then
                inst:AddComponent("edible")
                inst.components.edible.foodtype = GLOBAL.FOODTYPE.GREEN
        end
end


local prefabs = {"trinket_1", "trinket_2", "trinket_3", "trinket_4", "trinket_5", "trinket_6", "trinket_7", "trinket_8", "trinket_9", "trinket_10", "trinket_11", "trinket_12", "trinket_13", "trinket_14", "trinket_15", "trinket_16", "trinket_17", "trinket_18", "trinket_19", "trinket_20", "trinket_21", "trinket_22", "trinket_23", "trinket_24", "trinket_25", "trinket_26", "trinket_27", "trinket_28", "trinket_29", "trinket_30", "trinket_31", "trinket_32", "trinket_33", "trinket_34", "trinket_35", "trinket_36", "trinket_37", "trinket_38", "trinket_39", "trinket_40", "trinket_41", "trinket_42", "trinket_43", "trinket_44", "trinket_45", "winter_food1", "winter_food2", "winter_food3", "winter_food4", "winter_food5", "winter_food6", "winter_food7", "winter_food8", "winter_food9"}

local prefabs_big = {"torch"}


function set_eaters()

    for i, prefab in ipairs(prefabs) do
        AddPrefabPostInit(prefab, bait_prefab_gems)
    end

    for i, prefab in ipairs(prefabs_big) do
        AddPrefabPostInit(prefab, bait_prefab_big)
    end


    AddPrefabPostInit("robin",function(inst)
        if inst.components.eater == nil then return end
            if inst.components.eater.preferseating then
                    table.insert(inst.components.eater.preferseating,"GEMS")
                    table.insert(inst.components.eater.caneat,"GEMS")
            else
                    table.insert(inst.components.eater.foodprefs,"GEMS")
            end
    end)

    AddPrefabPostInit("robin_winter",function(inst)
        if inst.components.eater == nil then return end
            if inst.components.eater.preferseating then
                    table.insert(inst.components.eater.preferseating,"GEMS")
                    table.insert(inst.components.eater.caneat,"GEMS")
            else
                    table.insert(inst.components.eater.foodprefs,"GEMS")
            end
    end)

    AddPrefabPostInit("rabbit",function(inst)
        if inst.components.eater == nil then return end
            if inst.components.eater.preferseating then
                    table.insert(inst.components.eater.preferseating,"GEMS")
                    table.insert(inst.components.eater.caneat,"GEMS")

                    table.insert(inst.components.eater.preferseating,"BIG")
                    table.insert(inst.components.eater.caneat,"BIG")

            else
                    table.insert(inst.components.eater.foodprefs,"GEMS")
                    table.insert(inst.components.eater.foodprefs,"BIG")
            end
    end)
end


if GetModConfigData("eat_things") == "yes" then
    set_eaters()
end;


AddComponentPostInit("herd", function(inst)
    local old_OnRemoveEntity = inst.OnRemoveEntity
    function inst:OnRemoveEntity()
        for k, v in pairs(self.members) do
            inst:RemoveMember(k)
        end
        if old_OnRemoveEntity ~= nil then
            old_OnRemoveEntity(inst)
        end
    end
end)