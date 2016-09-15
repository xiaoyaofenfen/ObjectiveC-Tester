//
//  FunctionLib.c
//  ObjectiveC Tester
//
//  Created by liangfen on 16/9/15.
//  Copyright © 2016年 Imagination Studio. All rights reserved.
//

#include "FunctionLib.h"

float calculateAvg(float *data, unsigned int count)
{
    if(data)
    {
        float total = 0.0;

        for (unsigned int index = 0; index < count; index++) {
            total += data[index];
        }

        return total / (float)count;
    }

    return 0;
}

