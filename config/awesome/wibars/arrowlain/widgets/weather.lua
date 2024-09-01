--[[

     weather widget for arrow lain wibar

--]]

local wibox   = require("wibox")
local lainmod = require("lainmod")
local base16  = require("base16")
local secrets = require("wibars.arrowlain.secrets")

local markup = lainmod.util.markup

local function factory(args)
	local font                = args.font or "xos4 Terminus 9"
	local cs                  = args.cs or base16.solarized_dark
	local fg                  = args.fg or cs.palette.barfg
	local notification_preset = args.notification_preset or {}
	local spacer              = args.spacer or " "
	local compact             = args.compact
	if compact then spacer = "" end

	local icon_weather  = cs.paths.lainicons .. "dish.png"
	local at = "@"
	local compact_icons = {
		["01"] = "☀️",
		["02"] = "🌤",
		["03"] = "🌥",
		["04"] = "☁",
		["09"] = "🌧",
		["10"] = "🌦",
		["11"] = "🌩",
		["13"] = "🌨",
		["50"] = "🌫",
	}

	if not myweather_widget then
	  -- make global for all screens
		myweather_widget = {}
		if compact then
			spacer = ""
			at = ""
			myweather_widget.icon = nil
		else
			myweather_widget.icon = wibox.widget.imagebox(icon_weather)
		end
		myweather_widget.weather = lainmod.widget.weather( {
			APPID               = secrets.openweather_api_key,
			-- Novosibirsk 1496747
			-- Bratsk 2051523
			city_id             = 5325738,
			followtag           = true,
			notification_preset = notification_preset,
			weather_na_markup   = markup.fontfg(font, fg, spacer .. "N/A"),
			settings = function(widget, weather_now)
				local descr
				if compact then
					descr = compact_icons[weather_now["weather"][1]["icon"]:sub(1, 2)]
				else
					descr = weather_now["weather"][1]["description"]:lower()
				end
				local units = math.floor(weather_now["main"]["temp"] + 0.5)
				widget:set_markup(markup.fontfg(font, fg, spacer .. descr .. spacer .. at .. spacer .. units .."°C"))
			end
		} )
		if not compact then
			myweather_widget.icon:connect_signal("mouse::enter", function() myweather_widget.weather.show(0) end)
			myweather_widget.icon:connect_signal("mouse::leave", function() myweather_widget.weather.hide() end)
		end
	end

	local widget = wibox.widget {
		myweather_widget.icon,
		myweather_widget.weather.widget,
		layout = wibox.layout.align.horizontal
	}

	return widget
end

return factory
