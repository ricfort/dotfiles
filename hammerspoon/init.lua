ctrlCmdShortcuts = {
	{ "1", "Firefox" },
	{ "2", "Wezterm" },
	{ "4", "Slack" },
	{ "5", "Spotify" },
	{ "3", "IntelliJ IDEA" },
	{ "7", "Messages" },
	{ "8", "Telegram" },
	{ "9", "Safari" },
}

for i, shortcut in ipairs(ctrlCmdShortcuts) do
	hs.hotkey.bind({ "cmd", "alt", "ctrl", "shift" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[2])
	end)
end
