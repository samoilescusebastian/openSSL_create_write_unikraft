cmd_/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o := ""gcc  -nostdlib -U __linux__ -U __FreeBSD__ -U __sun__ -fno-omit-frame-pointer -fno-stack-protector -Wall -Wextra -D __Unikraft__ -DUK_CODENAME="Tethys" -DUK_VERSION=0.5 -DUK_FULLVERSION=0.5.0~612e932  -fno-tree-sra -fno-split-stack -nostdinc -O2 -fno-PIC    -I/home/sebastian/.unikraft/apps/app-write/build/include -I/home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include -I/home/sebastian/.unikraft/unikraft/include  -I/home/sebastian/.unikraft/unikraft/lib/ukboot/include -I/home/sebastian/.unikraft/unikraft/lib/ukswrand/include -I/home/sebastian/.unikraft/unikraft/lib/posix-user/include -I/home/sebastian/.unikraft/unikraft/lib/posix-user/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/ukdebug/include -I/home/sebastian/.unikraft/unikraft/lib/ukargparse/include -I/home/sebastian/.unikraft/unikraft/lib/uktimeconv/include -I/home/sebastian/.unikraft/unikraft/lib/ukalloc/include -I/home/sebastian/.unikraft/unikraft/lib/ukallocbbuddy/include -I/home/sebastian/.unikraft/unikraft/lib/uksched/include -I/home/sebastian/.unikraft/unikraft/lib/ukschedcoop/include -I/home/sebastian/.unikraft/apps/app-write/build/libsyscall_shim/include -I/home/sebastian/.unikraft/unikraft/lib/syscall_shim/include -I/home/sebastian/.unikraft/unikraft/lib/vfscore/include -I/home/sebastian/.unikraft/unikraft/lib/devfs/include -I/home/sebastian/.unikraft/unikraft/lib/uklock/include -I/home/sebastian/.unikraft/unikraft/lib/ukmpi/include -I/home/sebastian/.unikraft/unikraft/lib/ukbus/include -I/home/sebastian/.unikraft/unikraft/lib/uksglist/include -I/home/sebastian/.unikraft/unikraft/lib/uknetdev/include -I/home/sebastian/.unikraft/unikraft/lib/uk9p/include -I/home/sebastian/.unikraft/unikraft/lib/posix-libdl/include -I/home/sebastian/.unikraft/unikraft/lib/uklibparam/include -I/home/sebastian/.unikraft/unikraft/lib/uktime/include -I/home/sebastian/.unikraft/unikraft/lib/uktime/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/musl-imported/include -I/home/sebastian/.unikraft/unikraft/lib/posix-process/musl-imported/arch/generic -I/home/sebastian/.unikraft/unikraft/lib/uksp/include -I/home/sebastian/.unikraft/unikraft/lib/uksignal/include -I/home/sebastian/.unikraft/libs/lib-pthread-embedded/include -I/home/sebastian/.unikraft/apps/app-write/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d -I/home/sebastian/.unikraft/apps/app-write/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/platform/helper -I/home/sebastian/.unikraft/libs/lib-newlib/include -I/home/sebastian/.unikraft/libs/lib-newlib/musl-imported/include -I/home/sebastian/.unikraft/libs/lib-newlib/musl-imported/arch/generic -I/home/sebastian/.unikraft/libs/lib-newlib/musl-imported/arch/x86_64 -I/home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include -I/home/sebastian/.unikraft/libs/lib-lwip/include -I/home/sebastian/.unikraft/libs/lib-lwip/musl-imported/include -I/home/sebastian/.unikraft/apps/app-write/build/liblwip/origin/lwip-2.1.2/src/include -I/home/sebastian/.unikraft/libs/lib-openssl/include -I/home/sebastian/.unikraft/apps/app-write/build/libssl/origin/openssl-1.1.1c/include      -D__X86_64__ -m64 -mno-red-zone -fno-asynchronous-unwind-tables  -fno-reorder-blocks -mtune=generic  -DCC_VERSION=9.3  -DMISSING_SYSCALL_NAMES -DMALLOC_PROVIDED -D_POSIX_REALTIME_SIGNALS -D_LDBL_EQ_DBL -D_HAVE_LONG_DOUBLE -Wno-char-subscripts -D__DYNAMIC_REENT__ -DCONFIG_UK_NETDEV_SCRATCH_SIZE=64       -g3 -D__LIBNAME__=libukswrand -D__BASENAME__=mwc.c -c /home/sebastian/.unikraft/unikraft/lib/ukswrand/mwc.c -o /home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o -Wp,-MD,/home/sebastian/.unikraft/apps/app-write/build/libukswrand/.mwc.o.d

source_/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o := /home/sebastian/.unikraft/unikraft/lib/ukswrand/mwc.c

deps_/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o := \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/string.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/_ansi.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/newlib.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/config.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/ieeefp.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/features.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/_newlib_version.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/_ansi.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/stddef.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/__stddef_max_align_t.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/sys/_types.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/uk/_types.h \
  /home/sebastian/.unikraft/unikraft/lib/uktime/include/uk/time_types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdint.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_intsup.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/cdefs.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/string.h \
  /home/sebastian/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/endian.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_endian.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/select.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_sigset.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_timeval.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/sys/timespec.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/uk/_timespec.h \
  /home/sebastian/.unikraft/libs/lib-pthread-embedded/include/sys/_pthreadtypes.h \
  /home/sebastian/.unikraft/libs/lib-pthread-embedded/include/pthread.h \
  /home/sebastian/.unikraft/apps/app-write/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h \
  /home/sebastian/.unikraft/libs/lib-pthread-embedded/include/pte_types.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/timeb.h \
  /home/sebastian/.unikraft/libs/lib-newlib/include/limits.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/limits.h \
  /home/sebastian/.unikraft/unikraft/include/uk/config.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/limits.h \
    $(wildcard include/config/stack/size/page/order.h) \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/intsizes.h \
  /home/sebastian/.unikraft/libs/lib-pthread-embedded/include/sched.h \
  /home/sebastian/.unikraft/apps/app-write/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h \
  /home/sebastian/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h \
    $(wildcard include/config/libnolibc.h) \
  /home/sebastian/.unikraft/libs/lib-newlib/include/time.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/setjmp.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/types.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/types.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/types.h \
  /home/sebastian/.unikraft/unikraft/include/uk/plat/lcpu.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/time.h \
  /home/sebastian/.unikraft/unikraft/include/uk/plat/time.h \
    $(wildcard include/config/hz.h) \
  /home/sebastian/.unikraft/unikraft/lib/ukdebug/include/uk/assert.h \
    $(wildcard include/config/libukdebug/enable/assert.h) \
  /home/sebastian/.unikraft/unikraft/include/uk/plat/bootstrap.h \
  /home/sebastian/.unikraft/unikraft/include/uk/essentials.h \
    $(wildcard include/config/libnewlibc.h) \
    $(wildcard include/config/have/sched.h) \
  /home/sebastian/.unikraft/libs/lib-newlib/include/sys/param.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/param.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/syslimits.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/param.h \
  /home/sebastian/.unikraft/apps/app-write/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/inttypes.h \
  /home/sebastian/.unikraft/unikraft/include/uk/arch/lcpu.h \
  /home/sebastian/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h \
  /home/sebastian/.unikraft/unikraft/lib/ukdebug/include/uk/print.h \
    $(wildcard include/config/libukdebug/printd.h) \
    $(wildcard include/config/libukdebug/printk/crit.h) \
    $(wildcard include/config/libukdebug/printk/err.h) \
    $(wildcard include/config/libukdebug/printk/warn.h) \
    $(wildcard include/config/libukdebug/printk/info.h) \
    $(wildcard include/config/libukdebug/printk.h) \
  /home/sebastian/.unikraft/libs/lib-newlib/include/stdarg.h \

/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o: $(deps_/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o)

$(deps_/home/sebastian/.unikraft/apps/app-write/build/libukswrand/mwc.o):
