/area/ruin/space/radiostation
	name = "Nanotrasen Radio Station"
	icon_state = "DJ"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/solars
	name = "NT Radio Solars"
	icon_state = "yellow"

/area/ruin/space/radiostation/engineering
	name = "NT Radio Engineering"
	icon_state = "engine"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/engines
	name = "NT Radio Engines"
	icon_state = "engine"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/janitor
	name = "NT Radio Custodial Closet"
	icon_state = "janitor"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/break_room
	name = "NT Radio Break Room"
	icon_state = "cafeteria"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/control_room
	name = "NT Radio Control Room"
	icon_state = "DJ"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/radiostation/cabin
	name = "NT Radio Cabin"
	icon_state = "dorms"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/syndielistenspace
	name = "Syndicate Listening Post"
	icon_state = "yellow"
	has_gravity = STANDARD_GRAVITY

/datum/map_template/ruin/space/syndielistenspace
	prefix = "modular_splurt/_maps/RandomRuins/SpaceRuins/"
	id = "syndielistenspace"
	suffix = "syndielistenspace.dmm"
	name = "Syndicate Listening Outpost"
	description = "A syndicate listening outpost cleverly disguised as an asteroid"

/area/ruin/space/loneSlaversDen/hallway
	name = "NightMoon Corp Den Hallway"
	icon_state = "red"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/loneSlaversDen/medical
	name = "NightMoon Corp Den Medical"
	icon_state = "blue"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/loneSlaversDen/engineering
	name = "NightMoon Corp Den Engineering"
	icon_state = "yellow"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/loneSlaversDen/slavecells
	name = "NightMoon Corp Den Slaves"
	icon_state = "dark"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/loneSlaversDen/slavecells/cell_1
	name = "NightMoon Corp Den Cell 1"
	icon_state = "dark"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/loneSlaversDen/slavecells/cell_2
	name = "NightMoon Corp Den Cell 2"
	icon_state = "dark"
	has_gravity = STANDARD_GRAVITY

// For NightMoonCorp lone slavers and it's slaves check the ghost_role_spawners.dmm
/datum/map_template/ruin/space/loneSlaversDen
	prefix = "modular_splurt/_maps/RandomRuins/SpaceRuins/"
	id = "loneSlaversDen_by_d13"
	suffix = "loneSlaversv2_by_d13.dmm"
	name = "NightMoonCorp slavers outpost "
	description = "A slavers outpost hidden in an asteroid"

// Maybe we need to replace everything below? There is a not right place for it.
/obj/effect/mob_spawn/human/space/syndicate/special(mob/living/new_spawn)
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/obj/effect/mob_spawn/human/space/syndicate/comms
	name = "Syndicate Comms Agent"
	roundstart = FALSE
	death = FALSE
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	outfit = /datum/outfit/syndicate_comms_space
	assignedrole = "Space Syndicate Comms Agent"
	job_description = "Space Syndicate Comms Agent"
	short_desc = "You are a syndicate comms agent, employed to listen in on Nanotrasen Comms Chatter."
	flavour_text = "Use the communication equipment to provide support to any field agents, and sow disinformation to throw Nanotrasen off your trail. Do not let the base fall into enemy hands!"
	important_info = "DO NOT abandon the base."
	canloadappearance = TRUE

/datum/outfit/syndicate_comms_space
	name = "Space Syndicate Comms Agent"
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/armor/vest
	mask = /obj/item/clothing/mask/chameleon
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate/alt
	back = /obj/item/storage/backpack
	l_pocket = /obj/item/melee/transforming/energy/sword/saber
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	id = /obj/item/card/id/syndicate/anyone
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/syndicate_empty/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE, client/preference_source)
	H.faction |= ROLE_SYNDICATE

/area/ruin/space/ruinsolars
	name = "Solar Array"
	dynamic_lighting = DYNAMIC_LIGHTING_IFSTARLIGHT
	requires_power = FALSE
	has_gravity = FALSE
	area_flags = UNIQUE_AREA
	flags_1 = NONE
	sound_environment = SOUND_AREA_SPACE
