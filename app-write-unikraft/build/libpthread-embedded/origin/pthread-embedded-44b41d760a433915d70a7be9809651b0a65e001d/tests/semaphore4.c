/*
 * File: semaphore4.c
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
 * Test Synopsis: Verify sem_getvalue returns the correct number of waiters
 * after threads are cancelled.
 * -
 *
 * Test Method (Validation or Falsification):
 * - Validation
 *
 * Requirements Tested:
 * -
 *
 * Features Tested:
 * -
 *
 * Cases Tested:
 * -
 *
 * Description:
 * -
 *
 * Environment:
 * -
 *
 * Input:
 * - None.
 *
 * Output:
 * - File name, Line number, and failed expression on failure.
 * - No output on success.
 *
 * Assumptions:
 * -
 *
 * Pass Criteria:
 * - Process returns zero exit status.
 *
 * Fail Criteria:
 * - Process returns non-zero exit status.
 */

#include "test.h"
#include <stdio.h>
#include <stdlib.h>

#define MAX_COUNT OS_MAX_SIMUL_THREADS

static sem_t s;

static void *
thr (void * arg)
{

  if ((int) arg == 5)
    {
      // We expect this thread to be cancelled,
      // so sem_wait should return EINTR.
      assert(sem_wait(&s) == -1);
      assert(errno == EINTR);
    }
  else
    {
      // Should exit normally
      assert(sem_wait(&s) == 0);
    }

  return NULL;
}

int pthread_test_semaphore4(void)
{
  int value = 0;
  int i;
  pthread_t t[MAX_COUNT+1];

  assert(sem_init(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);
  assert(sem_getvalue(&s, &value) == 0);
  assert(value == 0);

  for (i = 1; i <= MAX_COUNT; i++)
    {
      assert(pthread_create(&t[i], NULL, thr, (void *)i) == 0);
      do
        {
          sched_yield();
          assert(sem_getvalue(&s, &value) == 0);
        }
      while (value != -i);

      assert(-value == i);
    }

  assert(sem_getvalue(&s, &value) == 0);
  assert(-value == MAX_COUNT);

  assert(pthread_cancel(t[5]) == 0);
  {
    long result;
    assert(pthread_join(t[5], (void **) &result) == 0);
  }
  assert(sem_getvalue(&s, &value) == 0);

  assert(-value == (MAX_COUNT - 1));

  for (i = MAX_COUNT - 2; i >= 0; i--)
    {
      assert(sem_post(&s) == 0);
      assert(sem_getvalue(&s, &value) == 0);
      assert(-value == i);
    }


  for (i = 1; i <= MAX_COUNT; i++)
    {
      if (i != 5)
        assert(pthread_join(t[i], NULL) == 0);
    }

  assert(sem_destroy(&s) == 0);

  return 0;
}

