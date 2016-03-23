//
//  ViewController.m
//  QLPreviewVC
//
//  Created by Shashikant on 2/24/16.
//  Copyright © 2016 Shashikant. All rights reserved.
//

#import "ViewController.h"
#import <QuickLook/QuickLook.h>

@interface ViewController ()<QLPreviewControllerDataSource, QLPreviewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //currentPreviewIndex = 1;
    filenamesArray=[[NSArray alloc] initWithObjects:@"S5.png",@"S2.docx",@"S3.doc",@"S4.rtf",@"S1.ppt",@"S6.csv",@"S7.pdf", nil];
}
- (IBAction)showPreviewVC:(id)sender {
    QLPreviewController *previewVC = [[QLPreviewController alloc] init];
    previewVC.delegate = self;
    previewVC.dataSource = self;
    previewVC.currentPreviewItemIndex = 0;
    //[self presentViewController:previewVC animated:YES completion:nil];
    [self.navigationController pushViewController:previewVC animated:YES];
}

#pragma mark QLPreviewControllerDataSource
-(NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{
//    return [filenamesArray count];
    return 1;
}
-(id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{
    NSString *path=[[NSBundle mainBundle] pathForResource:[filenamesArray objectAtIndex:index] ofType:nil];
    return [NSURL fileURLWithPath:path];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
