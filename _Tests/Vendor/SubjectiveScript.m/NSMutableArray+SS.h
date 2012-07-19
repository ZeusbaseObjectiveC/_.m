//
//  NSMutableArray+SS.h
//  SubjectiveScript.m
//
//  Created by Kevin Malakoff on 7/17/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import <Foundation/Foundation.h>
#import "SSTypes.h"

@interface NSMutableArray (SS)

+ (NSMutableArray*)new_;
+ (NSMutableArray* (^)(const BA values, I count))ba;
+ (NSMutableArray* (^)(const IA values, I count))ia;
+ (NSMutableArray* (^)(const FA values, I count))fa;
+ (NSMutableArray* (^)(const OA values, I count))oa;

- (NSMutableArray* (^)(id value))push;

@end

#define _BA(...) A.ba((BA){__VA_ARGS__}, sizeof((BA){__VA_ARGS__})/sizeof(B))
#define _IA(...) A.ia((IA){__VA_ARGS__}, sizeof((IA){__VA_ARGS__})/sizeof(I))
#define _FA(...) A.fa((FA){__VA_ARGS__}, sizeof((FA){__VA_ARGS__})/sizeof(F))
#define _OA(...) A.oa((OA){__VA_ARGS__}, sizeof((OA){__VA_ARGS__})/sizeof(id))