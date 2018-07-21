BINDING_NAME_TOGGLEGUILDPANE = "Toggle Guild Pane"
function ToggleGuildPane()
	if( GuildFrame and GuildFrame:IsShown() ) then
		HideUIPanel(GuildFrame);
	else
		if ( IsInGuild() ) then
			GuildFrame_LoadUI();
			if ( GuildFrame ) then
				GuildFrameTab2:Click();
				ShowUIPanel(GuildFrame);
			end
		end
	end
end