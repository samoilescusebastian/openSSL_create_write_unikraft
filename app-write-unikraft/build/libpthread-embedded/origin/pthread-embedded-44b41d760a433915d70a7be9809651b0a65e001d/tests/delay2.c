/*
 * delay1.c
 *
 *
 * --------------------------------------------------------------------------
 *
 *      Pthreads-embedded (PTE) - POSIX Threads Library for embedded systems
 *      Copyright(C) 2008 Jason Schmidlapp
 *
 *      Contact Email: jschmidlapp@users.sourceforge.net
 *
 *
 *      Based upon Pthreads-win32 - POSIX Threads Library for Win32
 *      Copyright(C) 1998 John E. Bossom
 *      Copyright(C) 1999,2005 Pthreads-win32 contributors
 *
 *      Contact Email: rpj@callisto.canberra.edu.au
 *
 *      The original list of contributors to the Pthreads-win32 project
 *      is contained in the file CONTRIBUTORS.ptw32 included with the
 *      source code distribution. The list can also be seen at the
 *      following World Wide Web location:
 *      http://sources.redhat.com/pthreads-win32/contributors.html
 *
 *      This library is free software; you can redistribute it and/or
 *      modify it under the terms of the GNU Lesser General Public
 *      License as published by the Free Software Foundation; either
 *      version 2 of the License, or (at your option) any later version.
 *
 *      This library is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *      Lesser General Public License for more details.
 *
 *      You should have received a copy of the GNU Lesser General Public
 *      License along with this library in the file COPYING.LIB;
 *      if not, write to the Free Software Foundation, Inc.,
 *      59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 *
 * --------------------------------------------------------------------------
 *
 * Depends on API functions:
 *    pthread_delay_np
 */

#include "test.h"

pthread_mutex_t mx = PTHREAD_MUTEX_INITIALIZER;

static void *
func(void * arg)
{
  struct timespec interval =
    {
      5, 500000000L
    };

  assert(pthread_mutex_lock(&mx) == 0);

  pthread_cleanup_push(pthread_mutex_unlock, &mx);
  assert(pthread_delay_np(&interval) == 0);
  pthread_cleanup_pop(1);

  return (void *) 1;
}

int pthread_test_delay2()
{
  pthread_t t;
  long result = 0;

  mx = PTHREAD_MUTEX_INITIALIZER;

  assert(pthread_mutex_lock(&mx) == 0);

  assert(pthread_create(&t, NULL, func, NULL) == 0);
  assert(pthread_cancel(t) == 0);

  assert(pthread_mutex_unlock(&mx) == 0);

  assert(pthread_join(t, (void **) &result) == 0);
  assert(result == (int) PTHREAD_CANCELED);

  assert(pthread_mutex_destroy(&mx) == 0);

  return 0;
}

