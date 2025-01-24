int __libc_start_main(
		int *(main) (void),
		void *(init) (void),
		void *(fini) (void),
		void *(rtld_fini) (void),
		void (* stack_end)
)
{
	win();
	exit(main());
}
