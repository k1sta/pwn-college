start
continue
b *main+757
commands
	silent
	set $random_value = *(unsigned long long*)($rsp+0x28)		
	printf "%llx\n", $random_value	
	continue
end
continue
