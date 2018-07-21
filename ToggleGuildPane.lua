BINDING_NAME_TOGGLEGUILDPANE = "Toggle Guild Pane"
function ToggleGuildPane()
	if (IsKioskModeEnabled()) then
		return;
	end

	local factionGroup = UnitFactionGroup("player");
	if (factionGroup == "Neutral") then
		return;
	end

	if ( IsTrialAccount() or (IsVeteranTrialAccount() and not IsInGuild()) ) then
		UIErrorsFrame:AddMessage(ERR_RESTRICTED_ACCOUNT_TRIAL, 1.0, 0.1, 0.1, 1.0);
		return;
	end
	if ( IsInGuild() ) then
		GuildFrame_LoadUI();
		if ( GuildFrame_Toggle ) then
			GuildFrame_Toggle();
		end
	else
		ToggleGuildFinder();
	end
end