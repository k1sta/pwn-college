start
continue
catch syscall read
commands
	silent	
	if ($rdi == 0)
		call write(0, "ABCDEFGH", 8)
	end
	continue
end	 
b *main+686
commands
	silent
	set $rdx = 0x0
	set $rax = 0x0
	continue
end
continue
