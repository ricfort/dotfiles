ctrlCmdShortcuts = {
	{ "2", "Firefox" },
	{ "3", "Wezterm" },
	{ "4", "Slack" },
	{ "5", "Spotify" },
	{ "6", "IntelliJ IDEA" },
	{ "7", "Messages" },
	{ "8", "Telegram" },
	{ "9", "Safari" },
}

for i, shortcut in ipairs(ctrlCmdShortcuts) do
	hs.hotkey.bind({ "ctrl" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[2])
	end)
end
