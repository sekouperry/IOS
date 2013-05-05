//
//  LoginViewController.m
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import "LoginViewController.h"

#import "PersonalPageViewController.h"
#import "MessageSender.h"
#import "MessageReceiver.h"
#import "UserInfoManager.h"
#import "UIViewController+Animation.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize uitextFieldUsername;
@synthesize uitextFieldPassword;

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self animationShow1];

}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self animationHidden1];

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginMessage:) name:UserLoginMessage object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerMessage:) name:RegisterMessage object:nil];
    
    NSArray *longinArr = [[NSUserDefaults standardUserDefaults] objectForKey:@"longin"];
    
    if(longinArr != nil){
        NSDictionary *dic = [longinArr lastObject];
        uitextFieldUsername.text = [dic objectForKey:@"userName"];
        uitextFieldPassword.text = [dic objectForKey:@"password"];
    }
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UserLoginMessage object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:RegisterMessage object:nil];
    [uitextFieldUsername release];
    [uitextFieldPassword release];
    [super dealloc];
}


-(IBAction)onButtonLogin:(id)sender{
    

    [[MessageSender sharedMsgSender] userLoginWithUserName:uitextFieldUsername.text password:uitextFieldPassword.text];
//    [self enterPersonalPage];

}
-(IBAction)onButtonRegister:(id)sender{
    [[MessageSender sharedMsgSender] registerSendMessageWithUserName:@"" password:@""];

}
-(IBAction)onButtonForgotPassword:(id)sender{

}

//进入个人页面
-(void)enterPersonalPage{
    PersonalPageViewController *vc = [[[PersonalPageViewController alloc] init] autorelease];
    [self.navigationController pushViewController:vc animated:NO];

}

//得到每个列表信息
-(void)getAllListInfo{
    [[MessageSender sharedMsgSender] roomListWithRoomId:0 count:20];
    [[MessageSender sharedMsgSender] shopListWithShopId:0 count:20];
    [[MessageSender sharedMsgSender] prizeListWithPrizeId:0 count:20];
    [[MessageSender sharedMsgSender] lotteryList];
}

#pragma mark -
#pragma mark 网络消息
-(void)loginMessage:(NSNotification *)sender{
    UserLoginRes *model = sender.object;
    UserInfoManager *userInfo = [UserInfoManager share];
    userInfo.experience = model.experience;
    userInfo.nextExperience = model.nextExperience;
    userInfo.coin = model.coin;
    userInfo.userId = model.userId;
    userInfo.rank = model.rank;
    userInfo.lottery = model.lottery;
    userInfo.vip = model.vip;
    userInfo.userName = model.userName;
    userInfo.photoUrl = model.photoUrl;
    
    userInfo.password = uitextFieldPassword.text;

    [self enterPersonalPage];

}

-(void)registerMessage:(NSNotification *)sender{
    UserRegisterRes *model = sender.object;
    UserInfoManager *userInfo = [UserInfoManager share];
    userInfo.experience = model.experience;
    userInfo.nextExperience = model.nextExperience;
    userInfo.coin = model.coin;
    userInfo.userId = model.userId;
    userInfo.rank = model.rank;
    userInfo.lottery = model.lottery;
    userInfo.vip = model.vip;
    userInfo.userName = model.userName;
    userInfo.photoUrl = model.photoUrl;
    userInfo.password = model.password;
    
    NSArray *longinArr = [[NSUserDefaults standardUserDefaults] objectForKey:@"longin"];
    NSMutableArray *newLonginArr = [[[NSMutableArray alloc] init] autorelease];
    if(longinArr != nil){
        [newLonginArr addObjectsFromArray:longinArr];
    
    }
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:userInfo.userName,@"userName",userInfo.password,@"password", nil];
    [newLonginArr addObject:dic];
    [[NSUserDefaults standardUserDefaults] setObject:newLonginArr forKey:@"longin"];
    
    
    [self enterPersonalPage];
}
#pragma mark -

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [uitextFieldUsername resignFirstResponder];
    [uitextFieldPassword resignFirstResponder];
}


@end
