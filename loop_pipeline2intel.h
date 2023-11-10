#include "HLS/hls.h"
/*
 * Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
 * Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _LOOP_PIPELINE_H_
#define _LOOP_PIPELINE_H_

#include <fstream>
#include <iostream>
using namespace std;

#ifdef __INTELFPGA_COMPILER__ 
#include "HLS/ac_int.h" 
#else 
#include "ref/ac_int.h" 
#endif
#define N 20
#define NUM_TRANS 20

typedef ac_int<5,true> din_t;
typedef ac_int<20,true> dout_t;

dout_t loop_pipeline(din_t A[N]);

#endif
