cmd_/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o := ""gcc  -nostdlib -U __linux__ -U __FreeBSD__ -U __sun__ -fno-omit-frame-pointer -fno-stack-protector -Wall -Wextra -D __Unikraft__ -DUK_CODENAME="Tethys" -DUK_VERSION=0.5 -DUK_FULLVERSION=0.5.0~612e932  -fno-tree-sra -fno-split-stack -nostdinc -O2 -fno-PIC    -I/home/sebastian/.unikraft/apps/app-empty/build/include -I/home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include -I/home/sebastian/.unikraft/unikraft/include  -I/home/sebastian/.unikraft/unikraft/lib/ukboot/include -I/home/sebastian/.unikraft/unikraft/lib/posix-user/include -I/home/sebastian/.unikraft/unikraft/lib/posix-user/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/ukdebug/include -I/home/sebastian/.unikraft/unikraft/lib/ukargparse/include -I/home/sebastian/.unikraft/unikraft/lib/uktimeconv/include -I/home/sebastian/.unikraft/unikraft/lib/nolibc/include -I/home/sebastian/.unikraft/unikraft/lib/nolibc/arch/x86_64 -I/home/sebastian/.unikraft/unikraft/lib/nolibc/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/nolibc/musl-imported/arch/generic -I/home/sebastian/.unikraft/unikraft/lib/ukalloc/include -I/home/sebastian/.unikraft/unikraft/lib/ukallocbbuddy/include -I/home/sebastian/.unikraft/unikraft/lib/uksched/include -I/home/sebastian/.unikraft/unikraft/lib/ukschedcoop/include -I/home/sebastian/.unikraft/unikraft/lib/syscall_shim/include -I/home/sebastian/.unikraft/unikraft/lib/vfscore/include -I/home/sebastian/.unikraft/unikraft/lib/devfs/include -I/home/sebastian/.unikraft/unikraft/lib/uklock/include -I/home/sebastian/.unikraft/unikraft/lib/ukbus/include -I/home/sebastian/.unikraft/unikraft/lib/uksglist/include -I/home/sebastian/.unikraft/unikraft/lib/uk9p/include -I/home/sebastian/.unikraft/unikraft/lib/uklibparam/include -I/home/sebastian/.unikraft/unikraft/lib/uktime/include -I/home/sebastian/.unikraft/unikraft/lib/uktime/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/musl-imported/arch/generic -I/home/sebastian/.unikraft/unikraft/lib/uksp/include      -D__X86_64__ -m64 -mno-red-zone -fno-asynchronous-unwind-tables  -fno-reorder-blocks -mtune=generic  -DCC_VERSION=9.3  -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-sprintf -fno-builtin-snprintf -fno-builtin-vprintf -fno-builtin-vfprintf -fno-builtin-vsprintf -fno-builtin-vsnprintf -fno-builtin-scanf -fno-builtin-fscanf -fno-builtin-sscanf -fno-builtin-vscanf -fno-builtin-vfscanf -fno-builtin-vsscanf -DCONFIG_UK_NETDEV_SCRATCH_SIZE=0       -g3 -D__LIBNAME__=libnolibc -D__BASENAME__=malloc.c -c /home/sebastian/.unikraft/unikraft/lib/nolibc/malloc.c -o /home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o -Wp,-MD,/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/.malloc.o.d

source_/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o := /home/sebastian/.unikraft/unikraft/lib/nolibc/malloc.c

deps_/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o := \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/stddef.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/types.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/intsizes.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/types.h \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/nolibc-internal/shareddefs.h \
    $(wildcard include/config/have/time.h) \
  /home/sebastian/.unikraft/unikraft/include/uk/config.h \
  /home/sebastian/.unikraft/unikraft/lib/uktime/include/uk/time_types.h \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/stdint.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/limits.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/limits.h \
    $(wildcard include/config/stack/size/page/order.h) \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/sys/types.h \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/errno.h \
  /home/sebastian/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h \
    $(wildcard include/config/libukalloc/ifstats.h) \
    $(wildcard include/config/libukalloc/ifmalloc.h) \
  /home/sebastian/.unikraft/unikraft/lib/ukdebug/include/uk/assert.h \
    $(wildcard include/config/libukdebug/enable/assert.h) \
  /home/sebastian/.unikraft/unikraft/include/uk/plat/bootstrap.h \
  /home/sebastian/.unikraft/unikraft/include/uk/essentials.h \
    $(wildcard include/config/libnewlibc.h) \
    $(wildcard include/config/have/sched.h) \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/lcpu.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h \
  /home/sebastian/.unikraft/unikraft/lib/ukdebug/include/uk/print.h \
    $(wildcard include/config/libukdebug/printd.h) \
    $(wildcard include/config/libukdebug/printk/crit.h) \
    $(wildcard include/config/libukdebug/printk/err.h) \
    $(wildcard include/config/libukdebug/printk/warn.h) \
    $(wildcard include/config/libukdebug/printk/info.h) \
    $(wildcard include/config/libukdebug/printk.h) \
  /home/sebastian/.unikraft/unikraft/lib/nolibc/include/stdarg.h \

/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o: $(deps_/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o)

$(deps_/home/sebastian/.unikraft/apps/app-empty/build/libnolibc/malloc.o):
