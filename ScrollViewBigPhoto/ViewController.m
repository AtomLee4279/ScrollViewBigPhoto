//
//  ViewController.m
//  ScrollViewBigPhoto
//
//  Created by 李一贤 on 2018/4/1.
//  Copyright © 2018年 李一贤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //1.设置滚动范围
    self.scrollView.contentSize = CGSizeMake(1064, 824);
    //2.设置初始显示时的显示偏移量
    self.scrollView.contentOffset = CGPointMake(320, 512 );
    //3.设置上左下右的边缘额外滚动区域(默认滚动到边沿时，scrollView中内容会有一个默认的“弹簧复位”效果；设置此值后，将在设定范围内停留在边沿外某一滚动位置)
    self.scrollView.contentInset = UIEdgeInsetsMake(50,50,50,50);
    //4.设置ScrollView代理
    self.scrollView.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//调用开始拖拽的方法
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"开始拖拽");
}

//调用正在拖拽的方法
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"正在拖拽");
}
//调用结束拖拽的方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"结束拖拽");
}

@end
