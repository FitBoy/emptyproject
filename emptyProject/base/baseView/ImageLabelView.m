//
//  ImageLabelView.m
//  test
//
//  Created by MAC on 2021/3/26.
//

#import "ImageLabelView.h"
#import "ThirdPartyHeader.h"
@implementation ImageLabelView

/***
 {
 margin_image:10,
 size:20,
 name_height:30,
 margin_space:10
 }
 
 */
-(void)setDataJson:(NSDictionary *)dic WithType:(ImageLocationType)type{
    self.L_name.textAlignment = NSTextAlignmentCenter;
    self.L_name.userInteractionEnabled = YES;
    self.L_name.font = font_default;
    self.IV_image.userInteractionEnabled = YES;
    
    float size = [self getValueWithkey:@"size" dic:dic];
    float name_height = [self getValueWithkey:@"name_height" dic:dic];
    float image_margin = [self getValueWithkey:@"margin_image" dic:dic];
    float space_margin = [self getValueWithkey:@"margin_space" dic:dic];
    
    if (type == ImageLocationTypeTop) {
       
        [self.IV_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(size, size));
            make.centerX.mas_equalTo(self);
            make.bottom.mas_equalTo(self.L_name.mas_top).mas_offset(-space_margin);
        }];
        
        [self.L_name mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.mas_equalTo(name_height);
            make.left.right.mas_equalTo(self);
            make.centerY.mas_equalTo(self).mas_offset((size+space_margin)/2.0);
        }];
        
    }else if(type == ImageLocationTypeBottom) {
        [self.IV_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(size, size));
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(self.L_name.mas_bottom).mas_offset(space_margin);
        }];
        
        [self.L_name mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.mas_equalTo(name_height);
            make.left.right.mas_equalTo(self);
            make.centerY.mas_equalTo(self).mas_offset(self).mas_offset(-(size+space_margin)/2.0);
        }];
    }else if(type == ImageLocationTypeLeft) {
        [self.IV_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(size, size));
            make.centerY.mas_equalTo(self);
            make.left.mas_equalTo(self).mas_offset(image_margin);
        }];
        
        [self.L_name mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.mas_equalTo(name_height);
            make.right.mas_equalTo(self);
            make.centerY.mas_equalTo(self);
            make.left.mas_equalTo(self.IV_image.mas_right).mas_offset(space_margin);
        }];
    }else if(type == ImageLocationTypeRight) {
        [self.IV_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(size, size));
            make.centerY.mas_equalTo(self);
            make.right.mas_equalTo(self).mas_offset(-image_margin);
        }];
        
        [self.L_name mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.mas_equalTo(name_height);
            make.left.mas_equalTo(self);
            make.centerY.mas_equalTo(self);
            make.right.mas_equalTo(self.IV_image.mas_left).mas_offset(-space_margin);
        }];
    }else{
        
        
    }
    
    
    
}

-(float)getValueWithkey:(NSString *)key dic:(NSDictionary *)dic{
    
    NSString *tstr = dic[key];
    if ([key isEqualToString:@"margin_image"]) {
        if (tstr==nil) {
            return margin_image;
        }else{
            return [key floatValue];
        }
    }else if([key isEqualToString:@"size"]){
        
        if (tstr==nil) {
            return size_default;
        }else{
            return [key floatValue];
        }
    }else if([key isEqualToString:@"name_height"]){
        
        if (tstr==nil) {
            return height_default;
        }else{
            return [key floatValue];
        }
    }else if([key isEqualToString:@"margin_space"]){
        
        if (tstr==nil) {
            return margin_space;
        }else{
            return [key floatValue];
        }
    }else{
        
        return 10;
    }
    
    
}


-(UIImageView *)IV_image{
    
    if (!_IV_image) {
        _IV_image = [[UIImageView alloc]init];
        [self addSubview:_IV_image];
    }
    return _IV_image;
}

-(UILabel *)L_name{
    
    if (!_L_name) {
        _L_name = [[UILabel alloc]init];
        [self addSubview:_L_name];
        _L_name.userInteractionEnabled = YES;
        
    }
    return _L_name;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
