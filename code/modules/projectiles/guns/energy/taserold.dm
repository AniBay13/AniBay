//Need remove on map, then remove this file
/obj/item/weapon/gun/energy/taser/dual
	var/tasermode = 1 //1 = stun, 0 = pain

	attack_self(mob/living/user as mob)
		switch(tasermode)
			if(0)
				tasermode = 1
				user << "\red [src.name] is now set to stun."
				projectile_type = "/obj/item/projectile/energy/tasershot"
			if(1)
				tasermode = 0
				user << "\red [src.name] is now set to pain."
				projectile_type = "/obj/item/projectile/beam/stun"

/obj/item/weapon/gun/energy/taser/old
	desc = "Old version of NT taser. Have less charges."
	charge_cost = 150