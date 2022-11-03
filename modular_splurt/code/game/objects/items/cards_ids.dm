/obj/item/card/id/syndicate/slaver
	name = "\improper Slaver Trader ID"
	desc = "A cheap ID used by slave traders."
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_SLAVER)

/obj/item/card/id/syndicate/slaver/leader
	name = "\improper Slaver Master ID"
	desc = "A cheap ID used by slave traders. This guy seems to run the show."

<<<<<<< HEAD
/obj/item/card/id/syndicate/lone_slaver
	name = "\improper NightMoonCorp Agent ID"
	desc = "A NMC ID card for ordinary employees."
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_GHOSTROLE_SLAVER)

/obj/item/card/id/syndicate/lone_slaver/master
	name = "\improper NightMoonCorp Warden ID"
	desc = "A NMC ID card for those who boast a big dick."
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_EXTERNAL_AIRLOCKS, ACCESS_GHOSTROLE_SLAVER, ACCESS_GHOSTROLE_SLAVER_BOSS)
=======
/obj/item/card/id/vampire
	name = "Vampire ID"
	desc = "An ID made to easily recognize vampires without needing to do tests"
	icon_state = "vampire"

/obj/item/card/id/away/hotel/splurt
	name = "Staff ID"
	assignment = "Hotel Staff"
	desc = "A staff ID used to access the hotel's doors."
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINT, ACCESS_AWAY_ENGINE)

/obj/item/card/id/away/hotel/splurt/security
	name = "Officer ID"
	assignment = "Hotel Security"
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINT, ACCESS_AWAY_SEC, ACCESS_AWAY_ENGINE)

/obj/item/card/id/away/hotel/manager
	name = "Manager ID"
	assignment = "Hotel Manager"
	access = list(ACCESS_AWAY_GENERAL, ACCESS_AWAY_MAINT, ACCESS_AWAY_ENGINE, ACCESS_AWAY_SEC, ACCESS_AWAY_GENERIC1)
>>>>>>> a7bcdb2f7b7f446acb85675477349b9848b4157f
