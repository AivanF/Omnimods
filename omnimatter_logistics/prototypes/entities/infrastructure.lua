require("prototypes.entities.entity-parts-tables")
local infra = {}
----------------------------------------
-- roboport
----------------------------------------
infra[#infra+1]={
  type = "item",
  name = "omni-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/omni-roboport.png",
  icon_size = 32,
  flags = {},
  subgroup = "omni-infrastructure",
  order = "b[omni-roboport]",
  place_result = "omni-roboport",
  stack_size = 50
}
infra[#infra+1]={
  type = "recipe",
  name = "omni-roboport",
  enabled = false,
  icon_size = 32,
  energy_required = 5,
  ingredients ={
    {"steel-plate", 20},
    {"stone-brick", 10},
    {"iron-gear-wheel", 20},
    {"electronic-circuit", 20}
  },
  results=
  {
    {type="item", name="omni-roboport", amount=1},
  },
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/omni-roboport.png",
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-roboport"},
  max_health = 500,
  icon_size = 32,
  corpse = "big-remnants",
  collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
  selection_box = {{-2, -2}, {2, 2}},
  resistances ={
    {
      type = "fire",
      percent = 60
    },
    {
      type = "impact",
      percent = 30
    }
  },
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "2MW",
    buffer_capacity = "20MJ"
  },
  recharge_minimum = "1MJ",
  energy_usage = "500kW",
  -- per one charge slot
  charging_energy = "1.5MW",
  logistics_radius = 5,
  construction_radius = 15,
  charge_approach_distance = 5,
  robot_slots_count = 7,
  material_slots_count = 7,
  stationing_offset = {0, 0},
  charging_offsets = roboport_parts.charging_offsets,
  base = roboport_parts.base,
  base_patch = roboport_parts.base_patch,
  base_animation = roboport_parts.base_animation,
  door_animation_up = roboport_parts.door_animation_up,
  door_animation_down = roboport_parts.door_animation_down,
  recharging_animation = roboport_parts.recharging_animation,
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = roboport_parts.working_sound, --i know, sound not image...
  recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
  request_to_open_door_timeout = 15,
  spawn_and_station_height = -0.1,

  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,

  open_door_trigger_effect = roboport_parts.open_door_trigger_effect,
  close_door_trigger_effect = roboport_parts.close_door_trigger_effect,
  circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
  circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}
----------------------------------------
-- zone expander
----------------------------------------
infra[#infra+1]={
  type = "item",
  name = "omni-zone-expander",
  icon_size = 32,
  icon = "__omnimatter_logistics__/graphics/icons/omni-zone-expander.png",
  flags = {},
  subgroup = "omni-infrastructure",
  order = "b[omni-zone-expander]",
  place_result = "omni-zone-expander",
  stack_size = 50
}
infra[#infra+1]={
  type = "recipe",
  name = "omni-zone-expander",
  enabled = false,
	icon_size = 32,
  energy_required = 5,
  ingredients ={
    {"iron-plate", 5},
    {"electronic-circuit", 2},
    {"steel-plate", 5},
  },
  results=
  {
    {type="item", name="omni-zone-expander", amount=1},
  },
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-zone-expander",
  icon = "__omnimatter_logistics__/graphics/icons/omni-zone-expander.png",
	icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-zone-expander"},
  fast_replaceable_group = "roboport",
  max_health = 500,
  corpse = "small-remnants",
  --collision_mask = {"ghost-layer"},
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "500kW",
    buffer_capacity = "1MW"
  },
  charging_energy = "0kW",
	recharge_minimum = "0MJ",
	energy_usage = "100kW",
  logistics_radius = 10,
  construction_radius = 0,
	charge_approach_distance = 0,
  robot_slots_count = 0,
  material_slots_count = 0,
  base = zone_expander_parts.base,
  base_animation = zone_expander_parts.base_animation,
	base_patch = zone_expander_parts.base_patch,
	door_animation = zone_expander_parts.door_animation,
  door_animation_up = zone_expander_parts.door_animation_up,
  door_animation_down = zone_expander_parts.door_animation_down,
  recharging_animation = zone_expander_parts.recharging_animation,
  recharging_light = {intensity = 0, size = 0},
  request_to_open_door_timeout = 0,
  spawn_and_station_height = 0,
  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,
  circuit_wire_connection_point = circuit_connector_definitions["log-zone-expander-sml"].points,
  circuit_connector_sprites = circuit_connector_definitions["log-zone-expander-sml"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}
----------------------------------------
-- relay station
----------------------------------------
infra[#infra+1]={
  type = "item",
  name = "omni-relay-station",
  icon = "__omnimatter_logistics__/graphics/icons/relay-station-ico.png",
  icon_size=32,
  flags = {},
  subgroup = "omni-infrastructure",
  order = "b[omni-relay-station]",
  place_result = "omni-relay-station",
  stack_size = 50
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-relay-station",
  icon = "__omnimatter_logistics__/graphics/icons/relay-station-ico.png",
  icon_size=32,
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-relay-station"},
  fast_replaceable_group = "roboport",
  max_health = 500,
  corpse = "small-remnants",
--collision_mask = {"ghost-layer"},
  collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "0.25MW",
    buffer_capacity = "6MJ"
  },
  charging_energy = "50kW",
  recharge_minimum = "5MJ",
  energy_usage = "50kW",
  logistics_radius = 4.5,
  construction_radius = 0,
  charge_approach_distance = 10,
  robot_slots_count = 0,
  material_slots_count = 0,
  stationing_offset = {0, 0},
  charging_offsets = {{0, 0}},
  base = relay_station_parts.base,
  base_animation = relay_station_parts.base_animation,
  base_patch = relay_station_parts.base_patch,
  door_animation = relay_station_parts.door_animation,
  door_animation_up = relay_station_parts.door_animation_up,
  door_animation_down = relay_station_parts.door_animation_down,
  recharging_animation = relay_station_parts.recharging_animation,
  recharging_light = {intensity = 0, size = 0},
  request_to_open_door_timeout = 0,
  spawn_and_station_height = 0,
  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,
  circuit_wire_connection_point = circuit_connector_definitions["relay-station-sml"].points,
  circuit_connector_sprites = circuit_connector_definitions["relay-station-sml"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}
infra[#infra+1]={
  type = "item",
  name = "omni-relay-station-2",
  icon = "__omnimatter_logistics__/graphics/icons/relay-station-2-ico.png",
  icon_size=32,
  flags = {},
  subgroup = "omni-infrastructure",
  order = "b[omni-relay-station-2]",
  place_result = "omni-relay-station-2",
  stack_size = 50
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-relay-station-2",
  icon = "__omnimatter_logistics__/graphics/icons/relay-station-2-ico.png",
  icon_size=32,
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-relay-station-2"},
  fast_replaceable_group = "roboport",
  max_health = 500,
  corpse = "small-remnants",
--collision_mask = {"ghost-layer"},
  collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
  selection_box = {{-1, -1}, {1, 1}},
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "0.5MW",
    buffer_capacity = "12MJ"
  },
  charging_energy = "100kW",
  recharge_minimum = "10MJ",
  energy_usage = "100kW",
  logistics_radius = 10,
  construction_radius = 0,
  charge_approach_distance = 10,
  robot_slots_count = 0,
  material_slots_count = 0,
  stationing_offset = {2, -3.5},
  charging_offsets = {{0, -3.5}},
  base = relay_station_parts.base,
  base_animation = relay_station_parts.base_animation,
  base_patch = relay_station_parts.base_patch,
  door_animation = relay_station_parts.door_animation,
  door_animation_up = relay_station_parts.door_animation_up,
  door_animation_down = relay_station_parts.door_animation_down,
  recharging_animation = relay_station_parts.recharging_animation,
  recharging_light = {intensity = 0, size = 0},
  request_to_open_door_timeout = 0,
  spawn_and_station_height = 0,
  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,
  circuit_wire_connection_point = circuit_connector_definitions["relay-station-lrg"].points,
  circuit_connector_sprites = circuit_connector_definitions["relay-station-lrg"].sprites,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}
----------------------------------------
-- specialised roboports 
  --may want to kill off the regular one if we use these
----------------------------------------
infra[#infra+1]={
  type = "item",
  name = "omni-construction-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/construction-roboport-ico.png",
  icon_size=32,
  flags = {},
  subgroup = "omni-infrastructure",
  order = "a[omni-construction-roboport]",
  place_result = "omni-construction-roboport",
  stack_size = 50
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-construction-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/construction-roboport-ico.png",
  icon_size=32,
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-construction-roboport"},
  max_health = 800,
  corpse = "big-remnants",
  collision_box = {{-1.9, -2.5}, {1.9, 1.9}},
  selection_box = {{-2, -2.5}, {2, 2}},
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "2MW",
    buffer_capacity = "48MJ"
  },
  recharge_minimum = "20MJ",
  energy_usage = "200kW",
  -- per one charge slot
  charging_energy = "200kW",
  logistics_radius = 3.5,
  construction_radius = 30,
  charge_approach_distance = 10,
  robot_slots_count = 4,
  material_slots_count = 4,
  stationing_offset = {0, -0.25},
  charging_offsets = construction_port_parts.charging_offsets,
  base = construction_port_parts.base,
  base_patch = construction_port_parts.base_patch,
  base_animation = construction_port_parts.base_animation,
  door_animation_up = construction_port_parts.door_animation_up,
  door_animation_down = construction_port_parts.door_animation_down,
  recharging_animation = construction_port_parts.recharging_animation,
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = construction_port_parts.working_sound,
  recharging_light = {intensity = 0.4, size = 10},
  request_to_open_door_timeout = 15,
  spawn_and_station_height = -0.1,
  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,
  open_door_trigger_effect = construction_port_parts.open_door_trigger_effect,
  close_door_trigger_effect = construction_port_parts.close_door_trigger_effect,
  circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
  circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}
infra[#infra+1]={
  type = "item",
  name = "omni-logistic-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/omni-logistic-roboport.png",
  icon_size = 32,
  flags = {},
  subgroup = "omni-infrastructure",
  order = "a[cargo-roboport]",
  place_result = "omni-logistic-roboport",
  stack_size = 20
}
infra[#infra+1]={
  type = "roboport",
  name = "omni-logistic-roboport",
  icon = "__omnimatter_logistics__/graphics/icons/omni-logistic-roboport.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "omni-logistic-roboport"},
  max_health = 1000,
  corpse = "big-remnants",
  collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
  selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
  dying_explosion = "medium-explosion",
  energy_source ={
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "2MW",
    buffer_capacity = "48MJ"
  },
  recharge_minimum = "20MJ",
  energy_usage = "300kW",
  -- per one charge slot
  charging_energy = "300kW",
  logistics_radius = 6.5,
  construction_radius = 0,
  charge_approach_distance = 10,
  robot_slots_count = 7,
  material_slots_count = 7,
  stationing_offset = {-0, 0},
  charging_offsets = logistic_port_parts.charging_offsets,
  base = logistic_port_parts.base,
  base_patch = logistic_port_parts.base_patch,
  base_animation = logistic_port_parts.base_animation,
  door_animation_up = logistic_port_parts.door_animation_up,
  door_animation_down = logistic_port_parts.door_animation_down,
  recharging_animation = logistic_port_parts.recharging_animation,
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound = logistic_port_parts.working_sound,
  recharging_light = {intensity = 0.4, size = 10},
  request_to_open_door_timeout = 15,
  spawn_and_station_height = -0.1,
  draw_logistic_radius_visualization = true,
  draw_construction_radius_visualization = true,
  open_door_trigger_effect = logistic_port_parts.open_door_trigger_effect,
  close_door_trigger_effect = logistic_port_parts.close_door_trigger_effect,
  circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
  circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
  default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
  default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
  default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
}

data:extend(infra)