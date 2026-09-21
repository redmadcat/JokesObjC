//
//  ViewController.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import "ViewController.h"
#import "UIColor+JKColor.h"
#import "UIFont+Roboto.h"
#import "UILabel+Factory.h"
#import "UIStackView+Factory.h"
#import "UIView+Extension.h"

@interface ViewController ()

@end

@implementation ViewController {
    UILabel *jokeIdTitleLabel;
    UILabel *jokeIdValueLabel;
    UILabel *jokeTypeTitleLabel;
    UILabel *jokeTypeValueLabel;
    UILabel *jokeSetupTitleLabel;
    UILabel *jokeSetupValueLabel;
    UIButton *jokeRefreshButton;
    UIButton *jokePunchlineButton;
    UIActivityIndicatorView *activityIndicator;
}

- (void)loadView {
    self.view = [UIView new];
    self.view.backgroundColor = [UIColor jkBackground];
    
    jokeIdTitleLabel =
        [UILabel createWith:@"JokeIdTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    jokeIdValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentRight
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    jokeTypeTitleLabel =
        [UILabel createWith:@"JokeTypeTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    jokeTypeValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentRight
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    jokeSetupTitleLabel =
        [UILabel createWith:@"JokeSetupTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    jokeSetupValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    [jokeSetupTitleLabel addBorderTo:Bottom borderWidth:2 borderColor:[UIColor jkBlackColor]];
    [jokeSetupValueLabel addBorderTo:Bottom borderWidth:2 borderColor:[UIColor jkBlackColor]];
    jokeSetupValueLabel.backgroundColor = [UIColor redColor];

    UIStackView *jokeTitleStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeTypeStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeSetupStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisVertical
                   distribution:UIStackViewDistributionFillProportionally
                      alignment:UIStackViewAlignmentCenter
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeActionStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:0.0
                   corderRadius:0.0];
    
    [jokeTitleStackView addArrangedSubview:jokeIdTitleLabel];
    [jokeTitleStackView addArrangedSubview:jokeIdValueLabel];
    [jokeTypeStackView addArrangedSubview:jokeTypeTitleLabel];
    [jokeTypeStackView addArrangedSubview:jokeTypeValueLabel];
    
    [jokeSetupStackView addArrangedSubview:jokeSetupTitleLabel];
    [jokeSetupStackView addArrangedSubview:jokeSetupValueLabel];
    [jokeSetupStackView addArrangedSubview:[UIView new]];
    
    UIStackView *rootStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisVertical
                   distribution:UIStackViewDistributionFill
                      alignment:UIStackViewAlignmentFill
                     andSpacing:24.0];
    
    [rootStackView addArrangedSubview:jokeTitleStackView];
    [rootStackView addArrangedSubview:jokeTypeStackView];
    [rootStackView addArrangedSubview:jokeSetupStackView];
    [rootStackView addArrangedSubview:[UIView new]];
    [rootStackView addArrangedSubview:jokeActionStackView];
    
    [self.view addSubview:rootStackView];
    UILayoutGuide *guide = self.view.safeAreaLayoutGuide;
    
    //    [NSLayoutConstraint activateConstraints:@[
    //
    //    ]];
        
    [rootStackView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor constant:24].active = YES;
    [rootStackView.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor constant:-24].active = YES;
    [rootStackView.topAnchor constraintEqualToAnchor:guide.topAnchor constant:48].active = YES;
    [rootStackView.bottomAnchor constraintEqualToAnchor:guide.bottomAnchor constant:-48].active = YES;
    
    [jokeIdTitleLabel.leadingAnchor constraintEqualToAnchor:rootStackView.leadingAnchor constant:16].active = YES;
    [jokeIdValueLabel.trailingAnchor constraintEqualToAnchor:rootStackView.trailingAnchor constant:-16].active = YES;
    [jokeTypeTitleLabel.leadingAnchor constraintEqualToAnchor:rootStackView.leadingAnchor constant:16].active = YES;
    [jokeTypeValueLabel.trailingAnchor constraintEqualToAnchor:rootStackView.trailingAnchor constant:-16].active = YES;
    
    [jokeSetupTitleLabel.leadingAnchor constraintEqualToAnchor:jokeSetupStackView.leadingAnchor constant:16].active = YES;
    [jokeSetupTitleLabel.trailingAnchor constraintEqualToAnchor:jokeSetupStackView.trailingAnchor constant:-16].active = YES;
    
    [jokeSetupValueLabel.leadingAnchor constraintEqualToAnchor:jokeSetupStackView.leadingAnchor constant:16].active = YES;
    [jokeSetupValueLabel.trailingAnchor constraintEqualToAnchor:jokeSetupStackView.trailingAnchor constant:-16].active = YES;
    [jokeSetupValueLabel.bottomAnchor constraintEqualToAnchor:jokeSetupStackView.bottomAnchor constant:-24].active = YES;
    [jokeSetupValueLabel.topAnchor constraintEqualToAnchor:jokeSetupTitleLabel.bottomAnchor].active = YES;
        
    [jokeSetupTitleLabel.heightAnchor constraintEqualToConstant:61].active = YES;
    [jokeSetupValueLabel.heightAnchor constraintEqualToConstant:159].active = YES;
    
    [jokeTitleStackView.heightAnchor constraintEqualToConstant:64].active = YES;
    [jokeTypeStackView.heightAnchor constraintEqualToConstant:64].active = YES;
    [jokeSetupStackView.heightAnchor constraintEqualToConstant:244].active = YES;
    [jokeActionStackView.heightAnchor constraintEqualToConstant:64].active = YES;
    

}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
