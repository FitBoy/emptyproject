//
//  HttpRequestTool.h
//  emptyProject
//
//  Created by MAC on 2021/3/31.
//

#define  HTTP_headPath @"http://111111"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HttpRequestTool : NSObject
/// post请求  封装好的地址
+(void)postParagram:(NSDictionary *)dic withPath:(NSString *)path block:(void (^)(NSDictionary *tdic))block;


@end

NS_ASSUME_NONNULL_END
