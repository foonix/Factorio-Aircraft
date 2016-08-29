data:extend(
{
 {
    type = "item",
    name = "gunship",
    icon = "__Aircraft__/graphics/icon.png",
    flags = { "goes-to-quickbar" },
    subgroup = "ammo",
    place_result= "gunship",
    stack_size= 1,
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "item",
    name = "cargo-plane",
    icon = "__Aircraft__/graphics/flyer_3-icon.png",
    flags = { "goes-to-quickbar" },
    subgroup = "ammo",
    place_result= "cargo-plane",
    stack_size= 1,
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "item",
    name = "jet",
    icon = "__Aircraft__/graphics/flyer-icon.png",
    flags = { "goes-to-quickbar" },
    subgroup = "ammo",
    place_result= "jet",
    stack_size= 1,
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "item",
    name = "flying-fortress",
    icon = "__Aircraft__/graphics/flyer_2-icon.png",
    flags = { "goes-to-quickbar" },
    subgroup = "ammo",
    place_result= "flying-fortress",
    stack_size= 1,
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "gun",
    name = "aircraft-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-c[aircraft-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 0.5,
      movement_slow_down_factor = 0.5,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.65,
      range = 30,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "gun",
    name = "aircraft-rocket-launcher",
    icon = "__base__/graphics/icons/explosive-rocket.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "e[aircraft-rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.9,
      cooldown = 8,
      projectile_creation_distance = 0.6,
      range = 35,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7
        }
      }
    },
    stack_size = 5
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "gun",
    name = "cargo-plane-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-c[cargo-plane-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 3.5,
      movement_slow_down_factor = 0.8,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.65,
      range = 15,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "gun",
    name = "aircraft-cannon",
    icon = "__base__/graphics/icons/explosive-cannon-shell.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 20.0,
      movement_slow_down_factor = 0.2,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 {
    type = "ammo",
    name = "high-explosive-cannon-shell",
    icon = "__base__/graphics/icons/explosive-cannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "high-explosive-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 50,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]",
    stack_size = 100
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "gun",
    name = "flying-fortress-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-c[aircraft-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 0.01,
      movement_slow_down_factor = 0.2,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.8,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.65,
      range = 40,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "gun",
    name = "flying-fortress-rocket-launcher",
    icon = "__base__/graphics/icons/explosive-rocket.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "e[flying-fortress-rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.9,
      cooldown = 6,
      projectile_creation_distance = 0.6,
      range = 50,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.75
        }
      }
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "gun",
    name = "napalm-launcher",
    icon = "__base__/graphics/icons/flame-thrower.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "e[napalm-launcher]",
    attack_parameters =
    {
      type = "stream",
      ammo_category = "flame-thrower",
      cooldown = 0.5,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      gun_barrel_length = 0.8,
      gun_center_shift = { 0, -1 },
      range = 25,
      min_range = 0.1,
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7
          }
        }
      }
    },
    stack_size = 1
  },
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  {
    type = "item",
    name = "cheat-machine",
    icon = "__Aircraft__/graphics/flyer_2-icon.png",
    flags = { "goes-to-quickbar", "hidden"},
    subgroup = "ammo",
    place_result= "cheat-machine",
    stack_size= 1,
  },
  {
	type = "item",
	name = "aircraft-energy-shield-equipment",
	icon = "__Aircraft__/graphics/aircraft-energy-shield-equipment-icon.png",
	placed_as_equipment_result = "aircraft-energy-shield-equipment",
	flags = { "goes-to-main-inventory"},
	subgroup = "equipment",
	order = "b[shield]-c[aircraft-energy-shield-equipment]",
	stack_size = 10,
	default_request_amount = 10,
  },
  {
    type = "item",
    name = "aircraft-engine-upgrade",
    icon = "__Aircraft__/graphics/aircraft-engine-upgrade-icon.png",
    placed_as_equipment_result = "aircraft-engine-upgrade",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "e[engine]-a[aircraft-engine-upgrade]",
    stack_size = 10,
	default_request_amount = 10,
  },
}
)