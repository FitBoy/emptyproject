//
//  ViewController_mainTab.m
//  emptyProject
//
//  Created by MAC on 2021/3/29.
//

#import "ViewController_mainTab.h"
#import "ViewController_home.h"//首页
#import "ViewController_my.h"//我的
#import "ViewController_left.h"//
#import "ViewController_center.h"//
#import "ViewController_right.h"//


@interface ViewController_mainTab ()

@end

@implementation ViewController_mainTab

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    

}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    if (@available(iOS 13.0, *)) {
            // iOS13 及以上
            self.tabBar.tintColor = [UIColor grayColor];
            self.tabBar.unselectedItemTintColor = [UIColor colorWithRed:1.0 green:0 blue:0 alpha:1];
     }
    else {
           // iOS13 以下
           UITabBarItem *item = [UITabBarItem appearance];
           [item setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
           [item setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor colorWithRed:1.0 green:0 blue:0 alpha:1]} forState:UIControlStateSelected];
     }
}

- (instancetype)init {
   if (!(self = [super init])) {
       return nil;
   }
   /**
    * 以下两行代码目的在于手动设置让TabBarItem只显示图标，不显示文字，并让图标垂直居中。
    * 等效于在 `-tabBarItemsAttributesForController` 方法中不传 `CYLTabBarItemTitle` 字段。
    * 更推荐后一种做法。
    */
   UIEdgeInsets imageInsets = UIEdgeInsetsZero;//UIEdgeInsetsMake(4.5, 0, -4.5, 0);
   UIOffset titlePositionAdjustment = UIOffsetMake(0, -3.5);
   CYLTabBarController *tabBarController = [CYLTabBarController tabBarControllerWithViewControllers:self.viewControllers
                                                                              tabBarItemsAttributes:self.tabBarItemsAttributesForController
                                                                                        imageInsets:imageInsets
                                                                            titlePositionAdjustment:titlePositionAdjustment
                                                                                            context:nil
                                            ];
  // [self customizeTabBarAppearance:tabBarController];
   self.navigationController.navigationBar.hidden = YES;
   return (self = (ViewController_mainTab *)tabBarController);
}


- (NSArray *)viewControllers {
   ViewController_home *hvc = [[ViewController_home alloc] init];
   UIViewController *nav_home = [[CYLBaseNavigationController alloc]
                                                  initWithRootViewController:hvc];
   [nav_home cyl_setHideNavigationBarSeparator:YES];
    
   ViewController_left *vc_left = [[ViewController_left alloc] init];
   UIViewController *nav_left = [[CYLBaseNavigationController alloc]
                                                   initWithRootViewController:vc_left];
   [nav_left cyl_setHideNavigationBarSeparator:YES];
    
    ViewController_center *vc_center = [[ViewController_center alloc] init];
    UIViewController *nav_center = [[CYLBaseNavigationController alloc]
                                                    initWithRootViewController:vc_center];
    
    [nav_center cyl_setHideNavigationBarSeparator:YES];
    ViewController_left *vc_right = [[ViewController_left alloc] init];
    UIViewController *nav_right = [[CYLBaseNavigationController alloc]
                                                    initWithRootViewController:vc_right];
    [nav_right cyl_setHideNavigationBarSeparator:YES];
    
    ViewController_left *vc_my = [[ViewController_left alloc] init];
    UIViewController *nav_my = [[CYLBaseNavigationController alloc]
                                                    initWithRootViewController:vc_my];
    [nav_left cyl_setHideNavigationBarSeparator:YES];
    
    
   NSArray *viewControllers = @[
       nav_home,
       nav_left,
       nav_center,
       nav_right,
       nav_my
                                ];
   return viewControllers;
}


- (NSArray *)tabBarItemsAttributesForController {
   NSDictionary *homeTabBarItemsAttributes = @{
                                                CYLTabBarItemTitle : @"首页",
                                                CYLTabBarItemImage: @"home_",
                                                CYLTabBarItemSelectedImage: @"home_1",
                                                };
   NSDictionary *leftTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"分类",
                                                 CYLTabBarItemImage : @"left_",
                                                 CYLTabBarItemSelectedImage : @"left_1",
                                                 };
    NSDictionary *centerTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"店铺",
                                                  CYLTabBarItemImage : @"center_",
                                                  CYLTabBarItemSelectedImage : @"center_1",
                                                  };
    NSDictionary *rightTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"收藏",
                                                  CYLTabBarItemImage : @"right_",
                                                  CYLTabBarItemSelectedImage : @"right_1",
                                                  };
    NSDictionary *myTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"我的",
                                                  CYLTabBarItemImage : @"my_",
                                                  CYLTabBarItemSelectedImage : @"my_1",
                                                  };
   

   NSArray *tabBarItemsAttributes = @[
                                      homeTabBarItemsAttributes,
                                      leftTabBarItemsAttributes,
                                      centerTabBarItemsAttributes,
                                      rightTabBarItemsAttributes,
                                      myTabBarItemsAttributes
                                      ];
   return tabBarItemsAttributes;
}



@end
