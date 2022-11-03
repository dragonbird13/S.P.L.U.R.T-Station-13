/obj/effect/mob_spawn/human/ash_walker
	var/gender_bias

/obj/effect/mob_spawn/human/ash_walker/equip(mob/living/carbon/human/H)
	if(!isnull(gender_bias) && prob(90))
		H.gender = gender_bias
	return ..()

/obj/effect/mob_spawn/human/ash_walker/western
	job_description = "Western Ashwalker"
	short_desc = "You are a Farlander. Your tribe worships the home tendril."
	flavour_text = "Your original home and tribe razed by Calamity, whoever remained set off to find a new place to live - \
	these ashen grounds making for a good staying place, filled with flora and huntmeat alike. You're not alone here however, these grounds' natives \
	restless about your tribe's arrival. Though surely they can be reasoned with.. right?\n\n\
	Ensure the safety of your tribe. The elders didn't sacrifice themselves for it to perish here."
	mob_species = /datum/species/lizard/ashwalker/western
	gender_bias = FEMALE

/obj/effect/mob_spawn/human/ash_walker/eastern
	job_description = "Eastern Ashwalker"
	flavour_text = "You've shelter in the Necropolis, it's sacred walls housing your nest, bringing in new kin for your tribe and breathing new life \
	into your fallen bretheren. Recently however, a foreign tribe came to these grounds, their foul hands threatening your hunt - furthermore, the sky's angels \
	descend onto these lands, demise of this world as their goal.\n\n\
	Ensure the safety of your nest, let no abomination even graze your home."
	mob_species = /datum/species/lizard/ashwalker/eastern
	gender_bias = MALE

//Portable dangerous-environment sleepers: Spawns in exposed to ash storms shelter.
//Characters in this role could have been conscious for a long time, surviving on the planet. They may also know Draconic language by contacting with ashwalkers.
/obj/effect/mob_spawn/human/wandering_hermit
	name = "portable dangerous-environment sleeper"
	desc = "The glass is slightly cracked, but there is still air inside. You can see somebody inside. They seems to be sleeping deeply."
	job_description = "Wandering Hermit"
	icon = 'icons/obj/lavaland/spawners.dmi'
	icon_state = "cryostasis_sleeper"
	roundstart = FALSE
	death = FALSE
	random = TRUE
	mob_species = /datum/species/human
	mob_name = "a wandering hermit"
	short_desc = "You are a hermit abandoned by fate."
	flavour_text = "You've survived weeks in this hellish place. Maybe you want to live here with ash tribe or return to civilisation. \
	Only you know how you got to this planetoid, whether this place in which you woke up was one of your shelters, or you just stumbled upon it."
	canloadappearance = TRUE

/obj/effect/mob_spawn/human/wandering_hermit/Destroy()
	var/obj/structure/fluff/empty_sleeper/S = new(drop_location())
	S.setDir(dir)
	return ..()

/obj/effect/mob_spawn/human/wandering_hermit/special(mob/living/carbon/human/new_spawn)
	ADD_TRAIT(new_spawn,TRAIT_EXEMPT_HEALTH_EVENTS,GHOSTROLE_TRAIT)
	new_spawn.language_holder.understood_languages += /datum/language/draconic
	new_spawn.language_holder.spoken_languages += /datum/language/draconic


//Neutral slavers for hardcore doms players and their bitches
/obj/effect/mob_spawn/human/lone_slaver
	name = "Space Slaver"
	roundstart = FALSE
	death = FALSE
	job_description = "NMC Agent"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	short_desc = "You are a slaver of corporation which operating in 'the entertainment' industry."
	flavour_text = "You have been sent to conduct various psychological experiments at a Night Moon Corporation outpost hidden from prying eyes.\
	You did a great job in a NMC, or you just happened to be lucky, now you can consider that this is your vacation.\
	Regardless of the task from the corporation, you can do whatever you want with your slaves. But you are still subordinate to your boss.\n\n"
	important_info = "IMPORTANT!!! Any act with slaves is permitted, including forced intercourse, as long as they do not cross the line of hard-gross kinks \
	as SCAT, GORE, BLOOD, DEATH, VORE. You need check OOC or ask in LOOC your slave. Your role involves close interactions with the slave. So whenever \
	you leave the station, you must take your assigned slave with you and give him tasks. Whether it's mining in Lavaland or being your personal stress reliever. \
	Fantasize and remember, you can do anything with it, except for the kinks listed above. \n\n\n"
	outfit = /datum/outfit/lone_slaver
	assignedrole = "Slaver Syndicate"
	canloadappearance = TRUE

/obj/effect/mob_spawn/human/lone_slaver/special(mob/living/new_spawn)
	new_spawn.grant_language(/datum/language/codespeak, TRUE, TRUE, LANGUAGE_MIND)

/datum/outfit/lone_slaver
	name = "Space Slaver"
	name = "NMC Agent"
	r_hand = /obj/item/gun/ballistic/automatic/sniper_rifle
	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate/alt
	back = /obj/item/storage/backpack
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	id = /obj/item/card/id/syndicate/lone_slaver
	implants = list(/obj/item/implant/weapons_auth)

/datum/outfit/lone_slaver/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE, client/preference_source)
	H.faction |= ROLE_SYNDICATE

/obj/effect/mob_spawn/human/lone_slaver/master
	name = "Space Slaver's Master"
	job_description = "NMC Warden"
	short_desc = "You are a slave's warden of corporation which operating in 'the entertainment' industry."
	flavour_text = "You have been assigned to control one of your corporation's secret facilities. Keep an eye on the slaves, give tasks to subordinates, and don't forget to read all the notes in your room. You're in charge here and it's up \
	to you to decide which goals of your corporation to prioritize for your guys. Rape and train your slaves, or send them to mine their ore as punishment. \
	NMC also clarified that this is your paid vacation, so it's up to you what to do. \n\n"
	important_info = "IMPORTANT!!! Any act with slaves is permitted, including forced intercourse, as long as they do not cross the line of hard-gross kinks \
	as SCAT, GORE, BLOOD, DEATH, VORE. You need check OOC or ask in LOOC your slave. Your role involves close interactions with the slave. So whenever \
	you leave the station, you must take your assigned slave with you and give him tasks. Whether it's mining in Lavaland or being your personal stress reliever. \
	Fantasize and remember, you can do anything with it, except for the kinks listed above. \n\n\n"
	outfit = /datum/outfit/lavaland_syndicate/comms
	canloadappearance = TRUE

/datum/outfit/lone_slaver/master
	name = "NMC Warden"
	r_hand = /obj/item/melee/transforming/energy/sword/saber
	suit = /obj/item/clothing/suit/armor/vest
	id = /obj/item/card/id/syndicate/lone_slaver/master

/obj/effect/mob_spawn/human/ghostrole_slave
	name = "Space Slave"
	roundstart = FALSE
	death = FALSE
	job_description = "Slave"
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	short_desc = "You are a slaver of corporation which operating in 'the entertainment' industry."
	flavour_text = "You have been sent to conduct various psychological experiments at a Night Moon Corporation outpost hidden from prying eyes. \
	You did a great job in a NMC, or you just happened to be lucky, now you can consider that this is your vacation. \
	Regardless of the task from the corporation, you can do whatever you want with your slaves.\n\n But you are still subordinate to your boss."
	important_info = "IMPORTANT!!! Any act with slaves is permitted, including forced intercourse, as long as they do not cross the line of hard-gross kinks \
	as SCAT, GORE, BLOOD, DEATH, VORE. You need check OOC or ask in LOOC your slave. Your role involves close interactions with the slave. So whenever \
	you leave the station, you must take your assigned slave with you and give him tasks. Whether it's mining in Lavaland or being your personal stress reliever. \
	Fantasize and remember, you can do anything with it, except for the kinks listed above. \n\n\n"
	outfit = /datum/outfit/lone_slaver
	assignedrole = "Slaver Syndicate"
	canloadappearance = TRUE

/obj/effect/mob_spawn/human/ghostrole_slave/Destroy()
	return ..()
