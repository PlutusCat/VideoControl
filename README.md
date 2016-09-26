#停止更新，停止更新，停止更新 重要的事说好几遍。
####做视频播放器推荐 bilibili 开源的 [ijkplayer](https://github.com/Bilibili/ijkplayer)  直播，点播，本地全拿下。
####编译教程请查看 [iOS中集成ijkplayer视频直播框架](http://www.jianshu.com/p/1f06b27b3ac0) ([来源：简书，作者：jianshu_wl](http://www.jianshu.com/users/8736b87fd878/latest_articles))。
####完整开源项目学习 [Bilibili_Wuxianda](https://github.com/MichaelHuyp/Bilibili_Wuxianda) ([作者:胡云鹏](https://github.com/MichaelHuyp))

# KrVideoPlayerPlus
根据36Kr开源的[KRVideoPlayer](https://github.com/36Kr-Mobile/KRVideoPlayer) 进行修改和补充实现一个轻量级的视频播放器，满足大部分视频播放需求


![展示图片](https://github.com/835239104/KrVideoPlayerPlus/blob/master/KrVideo.gif?raw=true)
#必要框架
<p>MediaPlayer.framework</p>
<p>AVFoundation.framework</p>

#咋使

在需要使用的控制器内引入  <pre><code>#import "KrVideoPlayerController.h"</code></pre>

```objectivec
@interface ViewController ()
@property (nonatomic, strong) KrVideoPlayerController  *videoController;
@end

@implementation ViewController

 (void)viewDidLoad {
   [super viewDidLoad];
// Do any additional setup after loading the view, typically from a nib.
   [self playVideo];
}
 (void)playVideo{
  NSURL *url = [NSURL URLWithString:@"http://krtv.qiniudn.com/150522nextapp"];
  [self addVideoPlayerWithURL:url];
}

 (void)addVideoPlayerWithURL:(NSURL *)url{
  if (!self.videoController) {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    self.videoController = [[KrVideoPlayerController alloc] initWithFrame:CGRectMake(0, 64, width, width*(9.0/16.0))];
    __weak typeof(self)weakSelf = self;
    [self.videoController setDimissCompleteBlock:^{
      weakSelf.videoController = nil;
    }];
    [self.videoController setWillBackOrientationPortrait:^{
      [weakSelf toolbarHidden:NO];
    }];
    [self.videoController setWillChangeToFullscreenMode:^{
      [weakSelf toolbarHidden:YES];
    }];
    [self.view addSubview:self.videoController.view];
  }
    self.videoController.contentURL = url;
}
```

#小知识
*隐藏navigation tabbar 电池栏
*在 Plist 中添加 UIViewControllerBasedStatusBarAppearance    NO
``` objectivec
 (void)toolbarHidden:(BOOL)Bool{
    self.navigationController.navigationBar.hidden = Bool;
    self.tabBarController.tabBar.hidden = Bool;
    [[UIApplication sharedApplication] setStatusBarHidden:Bool withAnimation:UIStatusBarAnimationFade];
}
```

