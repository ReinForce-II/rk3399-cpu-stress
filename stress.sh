#!/bin/bash
gcc stress.c -o stress_a53 -Ofast -mcpu=cortex-a53 -mtune=cortex-a53 -ffast-math -funroll-all-loops
gcc stress.c -o stress_a72 -Ofast -mcpu=cortex-a72 -mtune=cortex-a72 -ffast-math -funroll-all-loops
taskset -c 0 ./stress_a53 2>&1 &
taskset -c 1 ./stress_a53 2>&1 &
taskset -c 2 ./stress_a53 2>&1 &
taskset -c 3 ./stress_a53 2>&1 &
taskset -c 4 ./stress_a72 2>&1 &
taskset -c 5 ./stress_a72 2>&1 &
