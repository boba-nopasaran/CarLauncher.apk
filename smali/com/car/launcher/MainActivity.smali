.class public Lcom/car/launcher/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/car/launcher/SystemStatusWidget$Callback;
.implements Lcom/car/launchercommon/BaseApplication$AppListChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launcher/MainActivity$MyAdapter;,
        Lcom/car/launcher/MainActivity$SimType;
    }
.end annotation


# static fields
.field private static final BackgroundFile:Ljava/lang/String; = "/system/custom/launcher/compass/compass_bg.png"

.field private static final PKG:Ljava/lang/String; = "com.car.launcher"

.field private static final TAG:Ljava/lang/String; = "LC.MainActivity"


# instance fields
.field private TEXT_PADDING_TOP:I

.field private ivMiniSettings:Landroid/widget/ImageView;

.field mBtTextView:Lcom/car/launchercommon/ImageViewIcon;

.field mFmTextView:Lcom/car/launchercommon/ImageViewIcon;

.field mForceRefresh:Z

.field mGpsWidget:Lcom/car/launcher/GpsWidget;

.field mHandler:Landroid/os/Handler;

.field private mPages:[Landroid/view/View;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimType:Lcom/car/launcher/MainActivity$SimType;

.field mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field mWeatherCity:Landroid/widget/TextView;

.field mWeatherIcon:Landroid/widget/ImageView;

.field mWeatherTemp:Landroid/widget/TextView;

.field mWeatherType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x5f

    iput v0, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launcher/MainActivity;->mForceRefresh:Z

    sget-object v0, Lcom/car/launcher/MainActivity$SimType;->UNKNOWN:Lcom/car/launcher/MainActivity$SimType;

    iput-object v0, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    new-instance v0, Lcom/car/launcher/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/car/launcher/MainActivity$1;-><init>(Lcom/car/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/car/launcher/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/launcher/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/car/launcher/MainActivity$2;-><init>(Lcom/car/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/car/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launcher/MainActivity;)Lcom/car/launcher/MainActivity$SimType;
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    return-object v0
.end method

.method private adjustForLeftBarAndRightBar()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v1, "persist.rightbar.width"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

    invoke-virtual {v1, v2}, Lcom/car/launcher/SystemStatusWidget;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    invoke-virtual {v1, v2}, Lcom/car/launcher/GpsWidget;->setGpsNumberVisibility(I)V

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v1, v1, v3

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/ImageViewIcon;

    invoke-virtual {v0, v3}, Lcom/car/launchercommon/ImageViewIcon;->setVisibility(I)V

    const-string v1, "home_larger_settings"

    const v2, 0x7f02001e

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$27;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$27;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

#by boba 18.08.2020
#android settings
new-instance v1, Lcom/car/launcher/MainActivity$cl_android_set;
invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$cl_android_set;-><init>(Lcom/car/launcher/MainActivity;)V
invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->UNKNOWN:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v1, v1, v3

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/ImageViewIcon;

#by boba 18.08.2020
#style
#    const v1, 0x7f06001e
const v1, 0x7f06bb01

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

#    const-string v1, "home_file_manager"

#    const v2, 0x7f02001b
const-string v1, "home_car_player"
const v2, 0x7f02bb01

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$28;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$28;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private setPageBackground(I)V
    .locals 0

    return-void
.end method

.method private updateSimCarProviderUI()V
    .locals 3

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/ImageViewIcon;

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->ECAR:Lcom/car/launcher/MainActivity$SimType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_1

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_ecar_sos"

    const v2, 0x7f02001a

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Lcom/car/launcher/MainActivity$22;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$22;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_1
    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_chelian"

    const v2, 0x7f020014

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->TIAN_AN:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_3

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_tianan"

    const v2, 0x7f020023

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$23;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$23;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->FU_LAI:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_4

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_fulai"

    const v2, 0x7f02001d

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$24;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$24;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    sget-object v2, Lcom/car/launcher/MainActivity$SimType;->PLAY_STORE:Lcom/car/launcher/MainActivity$SimType;

    if-ne v1, v2, :cond_5

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_play_store"

    const v2, 0x7f020021

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$25;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$25;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    const-string v1, "home_settings"

    const v2, 0x7f020022

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Lcom/car/launcher/MainActivity$26;

    invoke-direct {v1, p0}, Lcom/car/launcher/MainActivity$26;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public appListUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

#by boba 2.10.2020
#playstore
#    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->cardTest()V

    invoke-direct {p0}, Lcom/car/launcher/MainActivity;->updateSimCarProviderUI()V

    invoke-direct {p0}, Lcom/car/launcher/MainActivity;->adjustForLeftBarAndRightBar()V

    const-string v0, "LC.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appListUpdated, mSimType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cardTest()V
    .locals 9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.coagent.ecar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.coagent.ecar"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.coagent.ecar"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_3

    :cond_1
    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->ECAR:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v6, "com.share.android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "com.share.android"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "com.share.android"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_6

    :cond_4
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v6, "LC.MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u8f66\u8054\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->CHE_LIAN:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->TIAN_AN:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    goto :goto_0

    :cond_6
    const-string v6, "com.ecar.assistantnew"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "com.ecar.assistantnew"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "com.ecar.assistantnew"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_8

    :cond_7
    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->ECAR2:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    goto :goto_0

    :cond_8
    const-string v6, "com.yuntu.desk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "com.yuntu.desk"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "com.yuntu.desk"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    :cond_9
    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->FU_LAI:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    goto/16 :goto_0

    :cond_a
    const-string v6, "com.google.android.gms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.google.android.gms"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "com.google.android.gms"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_0

    :cond_b
    sget-object v6, Lcom/car/launcher/MainActivity$SimType;->PLAY_STORE:Lcom/car/launcher/MainActivity$SimType;

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mSimType:Lcom/car/launcher/MainActivity$SimType;

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public hasBt()Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.car.btphone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.car.btspeaker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method initWeatherUI()V
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v3, v3, v5

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/car/launcher/MainActivity;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v3, v3, v5

    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/car/launcher/MainActivity;->mWeatherType:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v3, v3, v5

    const v4, 0x7f09003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/car/launcher/MainActivity;->mWeatherTemp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v3, v3, v5

    const v4, 0x7f09003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/car/launcher/MainActivity;->mWeatherCity:Landroid/widget/TextView;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.car.weather.forcast"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/car/launcher/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.weather.refresh"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/car/launcher/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    aget-object v3, v3, v5

    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/custom/launcher/compass/compass_bg.png"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/system/custom/launcher/compass/compass_bg.png"

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v3, Lcom/car/launcher/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/car/launcher/MainActivity$3;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAppsClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "com.car.launcher"

    invoke-static {p0, v0}, Lcom/car/launcher/StartsUtil;->startApps(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onBTStateChanged(ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->hasBt()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mBtTextView:Lcom/car/launchercommon/ImageViewIcon;

    invoke-virtual {v0, p2}, Lcom/car/launchercommon/ImageViewIcon;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mBtTextView:Lcom/car/launchercommon/ImageViewIcon;

    const/4 v1, -0x1

    iget v2, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v0, v1, v2}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mBtTextView:Lcom/car/launchercommon/ImageViewIcon;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/car/launcher/MainActivity;->setContentView(I)V

#by boba 2.10.2020
#playstore
#    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->cardTest()V

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v9, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/View;

    iput-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    const v11, 0x7f030009

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    aput-object v11, v9, v10

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f09002f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->ivMiniSettings:Landroid/widget/ImageView;

    new-instance v10, Lcom/car/launcher/MainActivity$4;

    invoke-direct {v10, p0}, Lcom/car/launcher/MainActivity$4;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f090017

    invoke-virtual {p0, v9}, Lcom/car/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager;

    iput-object v9, p0, Lcom/car/launcher/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v10, Lcom/car/launcher/MainActivity$MyAdapter;

    invoke-direct {v10, p0}, Lcom/car/launcher/MainActivity$MyAdapter;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f09003a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const-string v9, "ro.market.area"

    const-string v10, "china"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "oversea"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "persist.rightbar.width"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_1

    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/car/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090031

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/car/launcher/GpsWidget;

    iput-object v9, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    const-string v10, "home_nav"

    const v11, 0x7f020020

    invoke-static {v9, v10, v11}, Lcom/car/launchercommon/CustomUI;->appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    new-instance v10, Lcom/car/launcher/MainActivity$5;

    invoke-direct {v10, p0}, Lcom/car/launcher/MainActivity$5;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Lcom/car/launcher/GpsWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    new-instance v10, Lcom/car/launcher/MainActivity$6;

    invoke-direct {v10, p0}, Lcom/car/launcher/MainActivity$6;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Lcom/car/launcher/GpsWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090034

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/launchercommon/ImageViewIcon;

#by boba 18.08.2020
#style
#    const/high16 v9, -0x1000000

#    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setTextColor(I)V

    invoke-virtual {v6, v2}, Lcom/car/launchercommon/ImageViewIcon;->setTextSize(F)V

    const/4 v9, -0x1

    iget v10, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v6, v9, v10}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    const-string v9, "home_fm"

    const v10, 0x7f02001c

    invoke-static {v6, v9, v10}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v9, Lcom/car/launcher/MainActivity$7;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$7;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mFmTextView:Lcom/car/launchercommon/ImageViewIcon;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090036

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/launchercommon/ImageViewIcon;

#by boba 18.08.2020
#style
#    const/4 v9, -0x1

#    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setTextColor(I)V

    invoke-virtual {v6, v2}, Lcom/car/launchercommon/ImageViewIcon;->setTextSize(F)V

    const/4 v9, -0x1

    iget v10, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v6, v9, v10}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    invoke-direct {p0}, Lcom/car/launcher/MainActivity;->updateSimCarProviderUI()V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090033

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/launchercommon/ImageViewIcon;

#by boba 18.08.2020
#style
#    const/4 v9, -0x1

#    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setTextColor(I)V

    invoke-virtual {v6, v2}, Lcom/car/launchercommon/ImageViewIcon;->setTextSize(F)V

    const/4 v9, -0x1

    iget v10, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v6, v9, v10}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    const-string v9, "home_bt"

    const v10, 0x7f020012

    invoke-static {v6, v9, v10}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v9, Lcom/car/launcher/MainActivity$8;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$8;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Lcom/car/launcher/MainActivity;->mBtTextView:Lcom/car/launchercommon/ImageViewIcon;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090037

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/launchercommon/ImageViewIcon;

    invoke-virtual {v6, v2}, Lcom/car/launchercommon/ImageViewIcon;->setTextSize(F)V

    const/4 v9, -0x1

    iget v10, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v6, v9, v10}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    const-string v9, "home_apps"

    const v10, 0x7f020011

    invoke-static {v6, v9, v10}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v9, Lcom/car/launcher/MainActivity$9;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$9;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v6, v9}, Lcom/car/launchercommon/ImageViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f09002e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/car/launcher/SystemStatusWidget;

    iput-object v9, p0, Lcom/car/launcher/MainActivity;->mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

    const-string v10, "status_widget"

    const v11, 0x7f020053

    invoke-static {v9, v10, v11}, Lcom/car/launchercommon/CustomUI;->appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mSysStatusWidget:Lcom/car/launcher/SystemStatusWidget;

    invoke-virtual {v9, p0}, Lcom/car/launcher/SystemStatusWidget;->setCallback(Lcom/car/launcher/SystemStatusWidget$Callback;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090032

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/car/launchercommon/CustomUI$CustomizableView;

    const-string v10, "home_dvr"

    const v11, 0x7f020016

    invoke-static {v9, v10, v11}, Lcom/car/launchercommon/CustomUI;->appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V

    new-instance v9, Lcom/car/launcher/MainActivity$10;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$10;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090035

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/car/launchercommon/CustomUI$CustomizableView;

    const-string v10, "home_music_bk"

    const v11, 0x7f02001f

    invoke-static {v9, v10, v11}, Lcom/car/launchercommon/CustomUI;->appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V

    new-instance v9, Lcom/car/launcher/MainActivity$11;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$11;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f09003f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v9, "volume_up"

    invoke-static {v0, v9}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/ImageButton;Ljava/lang/String;)V

    new-instance v9, Lcom/car/launcher/MainActivity$12;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$12;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    new-instance v9, Lcom/car/launcher/MainActivity$13;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$13;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090040

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v9, "volume_down"

    invoke-static {v0, v9}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/ImageButton;Ljava/lang/String;)V

    new-instance v9, Lcom/car/launcher/MainActivity$14;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$14;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    new-instance v9, Lcom/car/launcher/MainActivity$15;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$15;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090041

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;
	
#by boba 18.08.2020
#style
goto :goto_100

    const-string v9, "com.car.cloud"

    invoke-static {p0, v9}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "com.car.cloud"

    invoke-static {p0, v9}, Lcom/car/launchercommon/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "carassist"

    invoke-static {v0, v9}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/ImageButton;Ljava/lang/String;)V

    new-instance v9, Lcom/car/launcher/MainActivity$16;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$16;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090042

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v9, "brightness_up"

    invoke-static {v0, v9}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/ImageButton;Ljava/lang/String;)V

    new-instance v9, Lcom/car/launcher/MainActivity$18;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$18;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    new-instance v9, Lcom/car/launcher/MainActivity$19;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$19;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const v10, 0x7f090043

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v9, "brightness_down"

    invoke-static {v0, v9}, Lcom/car/launchercommon/CustomUI;->appply(Landroid/widget/ImageButton;Ljava/lang/String;)V

    new-instance v9, Lcom/car/launcher/MainActivity$20;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$20;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    new-instance v9, Lcom/car/launcher/MainActivity$21;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$21;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {p0, v9}, Lcom/car/launchercommon/Util;->enableVolumeAndBrightnessIndicator(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/car/launchercommon/BaseApplication;->registerAppListChangedListener(Lcom/car/launchercommon/BaseApplication$AppListChangedListener;)V

    invoke-direct {p0}, Lcom/car/launcher/MainActivity;->adjustForLeftBarAndRightBar()V

    return-void

    :cond_1
    iget-object v9, p0, Lcom/car/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x64

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
#by boba 18.08.2020
#style	
:goto_100
    const v9, 0x7f020010

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v9, Lcom/car/launcher/MainActivity$17;

    invoke-direct {v9, p0}, Lcom/car/launcher/MainActivity$17;-><init>(Lcom/car/launcher/MainActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onFMStateChanged(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mFmTextView:Lcom/car/launchercommon/ImageViewIcon;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0MHz"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mFmTextView:Lcom/car/launchercommon/ImageViewIcon;

    const/4 v1, -0x1

    iget v2, p0, Lcom/car/launcher/MainActivity;->TEXT_PADDING_TOP:I

    invoke-virtual {v0, v1, v2}, Lcom/car/launchercommon/ImageViewIcon;->setXY(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mFmTextView:Lcom/car/launchercommon/ImageViewIcon;

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/ImageViewIcon;->setText(I)V

    goto :goto_0
.end method

.method public onNavClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "com.car.launcher"

    invoke-static {p0, v0}, Lcom/car/launcher/StartsUtil;->startNavi(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mPages:[Landroid/view/View;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/car/launcher/MainActivity;->setPageBackground(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSatellitesChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/MainActivity;->mGpsWidget:Lcom/car/launcher/GpsWidget;

    invoke-virtual {v0, p1}, Lcom/car/launcher/GpsWidget;->setGpsNumber(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onVoiceClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/car/launchercommon/Util;->startVoiceActivity()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method
