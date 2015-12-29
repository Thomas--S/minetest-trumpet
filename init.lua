minetest.register_craftitem("trumpet:trumpet", {
	description = "Trumpet",
	inventory_image = "trumpet_trumpet.png",
	on_use = function(itemstack, user)
		minetest.sound_play("trumpet_trumpet", {
			pos = user:getpos(),
			max_hear_distance = 75,
			gain = 4,
		})
	end,
	groups = {instrument=1}
})

minetest.register_craft({
	output = "trumpet:trumpet",
	recipe = {
		{"", "", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"", "default:gold_ingot", "default:gold_ingot"}
	}
})
