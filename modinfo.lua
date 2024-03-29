name = "Buddelkiste Prefab"
description = "Console: TheWorld.Clean()"
author = "MissN"
version = "1.16"
version_compatible = "1.0.8"
priority = -9000.548701789473201784320170431

api_version = 4

dst_compatible = true

all_clients_require_mod = false
client_only_mod = false



icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
"astro",
"serverclean",
}


configuration_options =
{
--	{
--		name = "$1_Amount",
--		label = "Max amount of $1",
--		options = {
--			{description = "1", data = "1"},
--			{description = "10", data = "10"},
--		},
--			default = "$2",
--	},

	{
		name = "Clean_Period",
		label = "Cleaning period",
		options = {
			{description = "10 sec",   data = "10"},
			{description = "10 min",   data = "600"},
			{description = "100 min",  data = "6000"},
			{description = "200 min",  data = "12000"},
			{description = "500 min",  data = "30000"},
			{description = "1000 min", data = "60000"},
		},
			default = "600",
	},

	{
		name = "rabbits_eat_things",
		label = "Rabbits can eat custom items",
		options = {
			{description = "yes",data = "yes"},
			{description = "no",   data = "no"},
		},
			default = "no",
	},

	{
		name = "birds_eat_things",
		label = "Birds can eat custom items",
		options = {
			{description = "yes",data = "yes"},
			{description = "no",   data = "no"},
		},
			default = "no",
	},

	{
		name = "lavae_Amount",
		label = "Max amount of lavaes",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "rabbit_Amount",
		label = "Max amount of rabbits",
		options = {
				{description = "0", data = "0"},
				{description = "10", data = "10"},
				{description = "20", data = "20"},
				{description = "30", data = "30"},
				{description = "40", data = "40"},
				{description = "50", data = "50"},
				{description = "60", data = "60"},
				{description = "70", data = "70"},
				{description = "80", data = "80"},
				{description = "90", data = "90"},
				{description = "100", data = "100"},
		},
				default = "20",
	},
	{
		name = "bee_Amount",
		label = "Max amount of bees",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "killerbee_Amount",
		label = "Max amount of killerbees",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "slurper_Amount",
		label = "Max amount of slurpers",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "flower_Amount",
		label = "Max amount of flowers",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "100",
	},
	{
		name = "babybeefalo_Amount",
		label = "Max amount of babybeefalos",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "5",
	},
	{
		name = "beefalo_Amount",
		label = "Max amount of beefalos",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "30",
	},
	{
		name = "beefaloherd_Amount",
		label = "Max amount of beefaloherds",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "2",
	},
	{
		name = "spiderden_Amount",
		label = "Max amount of spiderdens",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "5",
	},
	{
		name = "spider_Amount",
		label = "Max amount of spiders",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "spider_warrior_Amount",
		label = "Max amount of spider warriors",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "spoiled_food_Amount",
		label = "Max amount of spoiled_foods",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "0",
	},
	{
		name = "carrot_planted_Amount",
		label = "Max amount of carrot_planted",
		options = {
			{description = "0", data = "0"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
			{description = "30", data = "30"},
			{description = "40", data = "40"},
			{description = "50", data = "50"},
			{description = "60", data = "60"},
			{description = "70", data = "70"},
			{description = "80", data = "80"},
			{description = "90", data = "90"},
			{description = "100", data = "100"},
		},
			default = "30",
	},
	{
		name = "krampus_Amount",
		label = "Max amount of krampus",
		options = {
			{description = "0", data = "0"},
			{description = "1", data = "1"},
			{description = "10", data = "10"},
			{description = "20", data = "20"},
		},
			default = "1",
	},
	{
		name = "skeleton_player_Amount",
		label = "Max amount of skeleton_player",
		options = {
			{description = "0", data = "0"},
			{description = "1", data = "1"},
			{description = "10", data = "10"},
			{description = "50", data = "50"},
			{description = "100", data = "100"},
		},
			default = "100",
	},

	{
		name = "Cleaning_text",
		label = "Cleaning text",
		options = {
			{description = "Cleaning server...",   data = "Cleaning server..."},
		},
			default = "Cleaning server...",
	},

	{
		name = "Cleaning_warning_text",
		label = "Cleaning warning text",
		options = {
			{description = "",   data = ""},
		},
			default = "",
	},

	{
		name = "Cleaning_delay",
		label = "Cleaning delay",
		options = {
			{description = "0",   data = "0"},
			{description = "3",   data = "3"},
			{description = "10",   data = "10"},
			{description = "20",   data = "20"},
		},
			default = "0",
	},

	{
		name = "Custom_prefabs",
		label = "Custom prefabs",
		options = {
			{description = "",   data = ""},
			{description = "",   data = ""},
		},
			default = "",
	},

	{
		name = "Custom_edible_prefabs",
		label = "Custom edible prefabs",
		options = {
			{description = "default",   data = ""},
			{description = "example",   data = "torch,mosquitosack,pinecone,trinket_1,trinket_2,trinket_3,trinket_4,trinket_5,trinket_6,trinket_7,trinket_8,trinket_9,trinket_10,trinket_11,trinket_12,trinket_13,trinket_14,trinket_15,stinger,haundstooth,feather_crow,feather_robin_winter,beefalowool,silk,foliage,boneshard,berries,berries_cooked"},
		},
			default = "",
	}

}