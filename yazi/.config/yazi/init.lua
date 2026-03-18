Header:children_add(function()
	if ya.target_family() ~= "unix" then
		return ""
	end
	return ui.Span(' ' .. ya.host_name() .. ' '):fg("white"):bg("black")
end, 500, Header.RIGHT)
