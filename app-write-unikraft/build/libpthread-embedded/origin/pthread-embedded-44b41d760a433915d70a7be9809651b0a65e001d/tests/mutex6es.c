/*
 * mutex6es.c
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
 * Tests PTHREAD_MUTEX_ERRORCHECK static mutex type.
 * Thread locks mutex twice (recursive lock).
 * This should fail with an EDEADLK error.
 * The second unlock attempt should fail with an EPERM error.
 *
 * Depends on API functions:
 *      pthread_create()
 *      pthread_join()
 *      pthread_mutexattr_init()
 *      pthread_mutexattr_destroy()
 *      pthread_mutexattr_settype()
 *      pthread_mutexattr_gettype()
 *      pthread_mutex_init()
 *      pthread_mutex_destroy()
 *	pthread_mutex_lock()
 *	pthread_mutex_unlock()
 */

#include <stdio.h>
#include <stdlib.h>

#include "test.h"

static int lockCount = 0;

static pthread_mutex_t mutex = PTHREAD_ERRORCHECK_MUTEX_INITIALIZER;

static void * locker(void * arg)
{
  assert(pthread_mutex_lock(&mutex) == 0);
  lockCount++;
  assert(pthread_mutex_lock(&mutex) == EDEADLK);
  lockCount++;
  assert(pthread_mutex_unlock(&mutex) == 0);
  assert(pthread_mutex_unlock(&mutex) == EPERM);

  return (void *) 555;
}

int
pthread_test_mutex6es()
{
  pthread_t t;
  long result = 0;

  lockCount = 0;

  mutex = PTHREAD_ERRORCHECK_MUTEX_INITIALIZER;

  assert(mutex == PTHREAD_ERRORCHECK_MUTEX_INITIALIZER);

  assert(pthread_create(&t, NULL, locker, NULL) == 0);

  assert(pthread_join(t, (void **) &result) == 0);
  assert(result == 555);

  assert(lockCount == 2);

  assert(pthread_mutex_destroy(&mutex) == 0);

  return 0;
}

