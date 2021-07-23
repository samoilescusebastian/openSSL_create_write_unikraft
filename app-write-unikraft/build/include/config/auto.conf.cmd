deps_config := \
	/home/sebastian/.unikraft/apps/app-write-unikraft/Config.uk \
	/home/sebastian/.unikraft/libs/lib-pthread-embedded/Config.uk \
	/home/sebastian/.unikraft/libs/lib-openssl/Config.uk \
	/home/sebastian/.unikraft/libs/lib-lwip/Config.uk \
	/home/sebastian/.unikraft/libs/lib-newlib/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//vfscore/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uktimeconv/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uktime/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukswrand/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uksp/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uksignal/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uksglist/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukschedcoop/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uksched/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukring/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uknetdev/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukmpi/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukmmap/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uklock/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uklibparam/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukdebug/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukbus/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukboot/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukblkdev/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukargparse/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukallocregion/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukallocpool/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukallocbbuddy/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ukalloc/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//uk9p/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//syscall_shim/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//ramfs/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//posix-user/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//posix-sysinfo/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//posix-process/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//posix-libdl/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//nolibc/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//isrlib/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//fdt/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//devfs/Config.uk \
	/home/sebastian/.unikraft/unikraft/lib//9pfs/Config.uk \
	/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/libs.uk \
	/home/sebastian/.unikraft/unikraft/plat/Config.uk \
	/home/sebastian/.unikraft/unikraft/plat//xen/Config.uk \
	/home/sebastian/.unikraft/unikraft/plat//linuxu/Config.uk \
	/home/sebastian/.unikraft/unikraft/plat//kvm/Config.uk \
	/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/plat.uk \
	/home/sebastian/.unikraft/unikraft/arch/arm/arm64/Config.uk \
	/home/sebastian/.unikraft/unikraft/arch/arm/arm/Config.uk \
	/home/sebastian/.unikraft/unikraft/arch/x86/x86_64/Config.uk \
	/home/sebastian/.unikraft/unikraft/arch/Config.uk \
	/home/sebastian/.unikraft/unikraft/Config.uk

/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: \
	$(deps_config)

ifneq "$(UK_FULLVERSION)" "0.5.0~612e932"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(UK_CODENAME)" "Tethys"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(UK_ARCH)" "x86_64"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(UK_BASE)" "/home/sebastian/.unikraft/unikraft"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(UK_APP)" "/home/sebastian/.unikraft/apps/app-write-unikraft"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(UK_NAME)" "app-write-unikraft"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(CC)" "gcc"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(KCONFIG_PLAT_DIR)" "/home/sebastian/.unikraft/unikraft/plat//kvm /home/sebastian/.unikraft/unikraft/plat//linuxu /home/sebastian/.unikraft/unikraft/plat//xen  /home/sebastian/.unikraft/unikraft/plat/"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(KCONFIG_PLAT_IN)" "/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/plat.uk"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(KCONFIG_LIB_DIR)" "/home/sebastian/.unikraft/unikraft/lib//9pfs /home/sebastian/.unikraft/unikraft/lib//devfs /home/sebastian/.unikraft/unikraft/lib//fdt /home/sebastian/.unikraft/unikraft/lib//isrlib /home/sebastian/.unikraft/unikraft/lib//nolibc /home/sebastian/.unikraft/unikraft/lib//posix-libdl /home/sebastian/.unikraft/unikraft/lib//posix-process /home/sebastian/.unikraft/unikraft/lib//posix-sysinfo /home/sebastian/.unikraft/unikraft/lib//posix-user /home/sebastian/.unikraft/unikraft/lib//ramfs /home/sebastian/.unikraft/unikraft/lib//syscall_shim /home/sebastian/.unikraft/unikraft/lib//uk9p /home/sebastian/.unikraft/unikraft/lib//ukalloc /home/sebastian/.unikraft/unikraft/lib//ukallocbbuddy /home/sebastian/.unikraft/unikraft/lib//ukallocpool /home/sebastian/.unikraft/unikraft/lib//ukallocregion /home/sebastian/.unikraft/unikraft/lib//ukargparse /home/sebastian/.unikraft/unikraft/lib//ukblkdev /home/sebastian/.unikraft/unikraft/lib//ukboot /home/sebastian/.unikraft/unikraft/lib//ukbus /home/sebastian/.unikraft/unikraft/lib//ukdebug /home/sebastian/.unikraft/unikraft/lib//uklibparam /home/sebastian/.unikraft/unikraft/lib//uklock /home/sebastian/.unikraft/unikraft/lib//ukmmap /home/sebastian/.unikraft/unikraft/lib//ukmpi /home/sebastian/.unikraft/unikraft/lib//uknetdev /home/sebastian/.unikraft/unikraft/lib//ukring /home/sebastian/.unikraft/unikraft/lib//uksched /home/sebastian/.unikraft/unikraft/lib//ukschedcoop /home/sebastian/.unikraft/unikraft/lib//uksglist /home/sebastian/.unikraft/unikraft/lib//uksignal /home/sebastian/.unikraft/unikraft/lib//uksp /home/sebastian/.unikraft/unikraft/lib//ukswrand /home/sebastian/.unikraft/unikraft/lib//uktime /home/sebastian/.unikraft/unikraft/lib//uktimeconv /home/sebastian/.unikraft/unikraft/lib//vfscore /home/sebastian/.unikraft/unikraft/lib /home/sebastian/.unikraft/libs/lib-pthread-embedded /home/sebastian/.unikraft/libs/lib-newlib /home/sebastian/.unikraft/libs/lib-lwip /home/sebastian/.unikraft/libs/lib-openssl"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(KCONFIG_LIB_IN)" "/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/libs.uk"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif
ifneq "$(KCONFIG_APP_DIR)" "/home/sebastian/.unikraft/apps/app-write-unikraft"
/home/sebastian/.unikraft/apps/app-write-unikraft/build/kconfig/auto.conf: FORCE
endif

$(deps_config): ;
