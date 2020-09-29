//
//  RXModel.h
//  RXModel <https://github.com/ibireme/RXModel>
//
//  Created by ibireme on 15/5/10.
//  Copyright (c) 2015 ibireme.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import <Foundation/Foundation.h>

#if __has_include(<RXModel/RXModel.h>)
FOUNDATION_EXPORT double RXModelVersionNumber;
FOUNDATION_EXPORT const unsigned char RXModelVersionString[];
#import <RXModel/NSObject+RXModel.h>
#import <RXModel/RXClassInfo.h>
#else
#import "NSObject+RXModel.h"
#import "RXClassInfo.h"
#endif
