print ("TASLink Bizhawk Gamepad Latch Dumper loaded")
dumpfile = nil;

pollcount = 0;

start_dump = function(filename)
	file, err = io.open(filename .. ".latch.r08", "wb");
	if not file then
		error("Error opening output file: " .. err);
	end
	print(string.format('Dumping to %s.latch.r08', filename));
	
	dumpfile = file;
	
	pollcount = 0;
end

stop_dump = function()
	if (dumpfile) then
        dumpfile:close();
        dumpfile = nil;
        print("Dumping halted")
    else
        print("Cannot stop: Dumping not started")
    end
end

get_button = function(choice)
	local conn_tbl =
	{
		[15] = 'B',
		[14] = 'Y',
		[13] = 'Select',
		[12] = 'Start',
		[11] = 'Up',
		[10] = 'Down',
		[9] = 'Left',
		[8] = 'Right',
		[7] = 'A',
		[6] = 'X',
		[5] = 'L',
		[4] = 'R'
	}
	
	local func = conn_tbl[choice]
	if(func) then
		return func
	end
end
on_latch = function()
	if dumpfile then
		pollcount = pollcount + 1
		
		local frame = emu.framecount ()
		for i = 1, 2, 1 do
			out = 0x00
			for j = 4, 15, 1 do
				if movie.getinput(frame)[string.format("P%s %s", i, get_button(j))] then
					out = bit.bor(out, bit.lshift(1, j))
				end
			end
			dumpfile:write(string.char(bit.band(bit.ror(out, 8), 0xff), bit.band(out, 0xff)));
--			print(string.char(bit.band(bit.ror(out, 8), 0xff), bit.band(out, 0xff)))
		end
		
	end
end

event.oninputpoll(on_latch);
