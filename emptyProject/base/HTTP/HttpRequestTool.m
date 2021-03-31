//
//  HttpRequestTool.m
//  emptyProject
//
//  Created by MAC on 2021/3/31.
//

#import "HttpRequestTool.h"
#import <AFNetworking.h>
#import <EasyShowView.h>

@implementation HttpRequestTool

+(void)postParagram:(NSDictionary *)dic withPath:(NSString *)path block:(void (^)(NSDictionary *tdic))block{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer =[AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager POST:[NSString stringWithFormat:@"%@%@",HTTP_headPath,path] parameters:dic headers:@{} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSData *data = [NSJSONSerialization dataWithJSONObject:responseObject options:(NSJSONWritingPrettyPrinted) error:nil];
        
        NSDictionary *tdic =[NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingAllowFragments) error:nil];
        block(tdic);
        
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [EasyTextView showErrorText:@"网络错误"];
        }];
    
}


@end
