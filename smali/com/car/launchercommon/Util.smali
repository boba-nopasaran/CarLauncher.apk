.class public final Lcom/car/launchercommon/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final BRIGHTNESS_STEP_COUNT:I = 0xa

.field private static BRIGHTNESS_STEP_LENGTH:I = 0x0

.field private static final CONFIG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LC.Util"

.field private static mBrightnessIcon:Landroid/graphics/drawable/Drawable;

.field private static mToast:Landroid/widget/Toast;

.field private static mToastView:Landroid/widget/TextView;

.field private static mVolumnIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/launchercommon/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    const/16 v0, 0x19

    sput v0, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backlightDown(Landroid/content/Context;Z)V
    .locals 6

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0xa

    sput v5, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    invoke-static {}, Lcom/car/launchercommon/Util;->getBrightness()I

    move-result v0

    if-gt v0, v2, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->setBrightness(Landroid/content/Context;I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v4, "\u5c4f\u5e55\u8c03\u5230\u6700\u6697"

    move v0, v2

    :goto_1
    if-gt v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v4, "\u5c4f\u5e55\u8c03\u6697"

    sget v5, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    sub-int/2addr v0, v5

    goto :goto_1
.end method

.method public static backlightUp(Landroid/content/Context;Z)V
    .locals 6

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0xa

    sput v5, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    invoke-static {}, Lcom/car/launchercommon/Util;->getBrightness()I

    move-result v0

    if-lt v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->setBrightness(Landroid/content/Context;I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v4, "\u5c4f\u5e55\u8c03\u5230\u6700\u4eae"

    move v0, v1

    :goto_1
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v4, "\u5c4f\u5e55\u8c03\u4eae"

    sget v5, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    add-int/2addr v0, v5

    goto :goto_1
.end method

.method public static declared-synchronized cleanProperty()V
    .locals 5

    const-class v2, Lcom/car/launchercommon/Util;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v1, "LC.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Property has been cleaned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static enableVolumeAndBrightnessIndicator(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/car/launchercommon/R$layout;->toast_note:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/car/launchercommon/Util;->mToastView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/car/launchercommon/R$drawable;->icon_toast_brightness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/car/launchercommon/R$drawable;->icon_toast_volume:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/car/launchercommon/Util;->mVolumnIcon:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/car/launchercommon/Util;->mVolumnIcon:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    sget-object v1, Lcom/car/launchercommon/Util;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public static formatUnit(I)Ljava/lang/String;
    .locals 4

    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gaodeNaviToDest(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2738

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IS_START_NAVI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DEST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static gaodeNaviToHome(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->gaodeNaviToDest(Landroid/content/Context;I)V

    return-void
.end method

.method public static gaodeNaviToOffice(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->gaodeNaviToDest(Landroid/content/Context;I)V

    return-void
.end method

.method private static getActiveStreamType(Landroid/content/Context;I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x1388

    const/4 v2, 0x2

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/car/launchercommon/Util;->isInCommunication(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v0, "LC.Util"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const-string v1, "LC.Util"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "LC.Util"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_6

    invoke-static {v4}, Lcom/car/launchercommon/Util;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/car/launchercommon/Util;->isInRing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LC.Util"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "LC.Util"

    const-string v3, "getActiveStreamType: using STREAM_RING as default"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/car/launchercommon/Util;->isInRing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v7, 0x0

    invoke-direct {v0, v7, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, -0x25

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v7, 0x14

    new-array v7, v7, [F

    aput v11, v7, v12

    aput v10, v7, v13

    const/4 v8, 0x2

    aput v10, v7, v8

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    int-to-float v9, v2

    aput v9, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aput v11, v7, v8

    const/4 v8, 0x7

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v10, v7, v8

    const/16 v8, 0x9

    int-to-float v9, v2

    aput v9, v7, v8

    const/16 v8, 0xa

    aput v10, v7, v8

    const/16 v8, 0xb

    aput v10, v7, v8

    const/16 v8, 0xc

    aput v11, v7, v8

    const/16 v8, 0xd

    aput v10, v7, v8

    const/16 v8, 0xe

    int-to-float v9, v2

    aput v9, v7, v8

    const/16 v8, 0xf

    aput v10, v7, v8

    const/16 v8, 0x10

    aput v10, v7, v8

    const/16 v8, 0x11

    aput v10, v7, v8

    const/16 v8, 0x12

    aput v11, v7, v8

    const/16 v8, 0x13

    aput v10, v7, v8

    invoke-virtual {v3, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, p0, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v7, v13, [I

    const v8, 0x10100a7

    aput v8, v7, v12

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v7, v12, [I

    invoke-virtual {v6, v7, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static getBackgroudDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static getBrightness()I
    .locals 2

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getCarService()Lcom/car/common/CarServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/common/CarServiceImpl;->getBrightness()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/car/launchercommon/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public static getLocalBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPropertyKeyLong(Ljava/lang/String;J)J
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/car/launchercommon/Util;->getPropertyKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    :cond_0
    :goto_0
    return-wide p1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getPropertyKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v5, Lcom/car/launchercommon/Util;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v4, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v3, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object p1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    monitor-exit v5

    return-object p1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    const-string v4, "LC.Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_4
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static getStateListDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/car/launchercommon/Util;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    invoke-virtual {p0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v5, "LC.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_2
    move-object v5, v1

    goto :goto_0
.end method

.method private static isAfMusicActiveRecently(I)Z
    .locals 2

    const/4 v1, 0x3

    invoke-static {v1, p0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "LC.Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApkInstalled = true, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v5, "LC.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v3, "LC.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isInCommunication(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isInRing(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isStorageMounted(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static secondsToTime(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    if-ge p0, v4, :cond_0

    const-string v4, "00:00:00"

    :goto_0
    return-object v4

    :cond_0
    const v4, 0x57e40

    if-lt p0, v4, :cond_1

    const-string v4, "99:59:59"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, p0, 0xe10

    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v1, v4, 0x3c

    rem-int/lit16 v4, p0, 0xe10

    rem-int/lit8 v3, v4, 0x3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/car/launchercommon/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/car/launchercommon/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/car/launchercommon/Util;->formatUnit(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static setBrightness(Landroid/content/Context;I)V
    .locals 4

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getCarService()Lcom/car/common/CarServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/car/common/CarServiceImpl;->setBrightness(I)V

    :cond_0
    sget-object v1, Lcom/car/launchercommon/Util;->mBrightnessIcon:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/car/launchercommon/Util;->BRIGHTNESS_STEP_LENGTH:I

    div-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/launchercommon/Util;->showTouchMsg(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public static setFullscreen(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/car/launchercommon/Util;->setFullscreen(Landroid/view/Window;)V

    return-void
.end method

.method public static setFullscreen(Landroid/view/Window;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static declared-synchronized setPropertyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-class v8, Lcom/car/launchercommon/Util;

    monitor-enter v8

    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v7, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v7, Lcom/car/launchercommon/Util;->CONFIG_FILE:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    move-object v4, v5

    move-object v2, v3

    :cond_3
    :goto_1
    monitor-exit v8

    return-void

    :catch_0
    move-exception v7

    move-object v4, v5

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_6
    const-string v7, "LC.Util"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_3
    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_6
    :goto_6
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_3
    move-exception v7

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    :catch_6
    move-exception v9

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v2, v3

    goto :goto_4

    :catchall_3
    move-exception v7

    move-object v4, v5

    move-object v2, v3

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_2
.end method

.method private static showTouchMsg(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/car/launchercommon/Util;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/car/launchercommon/Util;->mToastView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/car/launchercommon/Util;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "LC.Util"

    const-string v2, " startActivitySafety intent null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x30000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/car/launchercommon/R$string;->no_content_text:I

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "LC.Util"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget v1, Lcom/car/launchercommon/R$string;->no_content_text:I

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "LC.Util"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startBtPhoneActivity()V
    .locals 3

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.intent.action.start.btphone"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startMusicActivity()V
    .locals 4

    const/high16 v3, 0x10000000

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget v1, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    const-string v2, "com.txznet.music"

    invoke-static {v1, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.txznet.music"

    const-string v3, "com.txznet.music.ui.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    const-string v2, "cn.kuwo.kwmusiccar"

    invoke-static {v1, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "auto_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    const-string v2, "com.hongfans.rearview"

    invoke-static {v1, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hongfans.rearview"

    const-string v3, "com.hongfans.rearview.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.music"

    const-string v3, "com.android.music.MusicBrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static startVoiceActivity()V
    .locals 3

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getInstance()Lcom/car/launchercommon/BaseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.voiceassitant.start"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static volumeDown(Landroid/content/Context;Z)V
    .locals 8

    const/high16 v5, -0x80000000

    invoke-static {p0, v5}, Lcom/car/launchercommon/Util;->getActiveStreamType(Landroid/content/Context;I)I

    move-result v4

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-nez v1, :cond_0

    const-string v5, "\u97f3\u91cf\u5df2\u7ecf\u6700\u5c0f"

    :goto_0
    sget-object v5, Lcom/car/launchercommon/Util;->mVolumnIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/car/launchercommon/Util;->showTouchMsg(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "\u97f3\u91cf\u8c03\u5230\u6700\u5c0f"

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v0, v4, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_2
    const-string v3, "\u97f3\u91cf\u8c03\u5c0f"

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static volumeUp(Landroid/content/Context;Z)V
    .locals 8

    const/4 v6, 0x4

    const/high16 v5, -0x80000000

    invoke-static {p0, v5}, Lcom/car/launchercommon/Util;->getActiveStreamType(Landroid/content/Context;I)I

    move-result v4

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    sget-object v5, Lcom/car/launchercommon/Util;->mVolumnIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/car/launchercommon/Util;->showTouchMsg(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "\u97f3\u91cf\u8c03\u5230\u6700\u5927"

    move v1, v2

    :goto_1
    if-lt v1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_2
    const-string v3, "\u97f3\u91cf\u589e\u52a0"

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    int-to-float v2, v3

    div-float v10, v0, v2

    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    cmpl-float v0, v10, v9

    if-lez v0, :cond_0

    move v8, v10

    :goto_0
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    :cond_0
    move v8, v9

    goto :goto_0
.end method
