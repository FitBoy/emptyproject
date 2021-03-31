//
//  ImageLabelView.h
//  test
//
//  Created by MAC on 2021/3/26.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, ImageLocationType) {
    ImageLocationTypeTop,
    ImageLocationTypeBottom,
    ImageLocationTypeLeft,
    ImageLocationTypeRight
};

@interface ImageLabelView : UIView
@property (nonatomic,strong) UILabel *L_name;
@property (nonatomic,strong) UIImageView *IV_image;

/***
 {
 margin_image:10,
 size:20,
 name_height:30,
 margin_space:10
 }
 
 */

-(void)setDataJson:(NSDictionary *)dic WithType:(ImageLocationType)type;




@end

NS_ASSUME_NONNULL_END
