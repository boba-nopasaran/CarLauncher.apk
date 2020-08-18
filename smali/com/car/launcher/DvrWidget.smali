.class public Lcom/car/launcher/DvrWidget;
.super Landroid/widget/LinearLayout;
.source "DvrWidget.java"

# interfaces
.implements Lcom/car/launchercommon/CustomUI$CustomizableView;


# static fields
.field private static final ACTION_RECORDING_START:Ljava/lang/String; = "com.car.videorecorder.recording_start"

.field private static final ACTION_RECORDING_STOP:Ljava/lang/String; = "com.car.videorecorder.recording_stop"

.field private static final ACTION_RECORDING_TIME_CHANGED:Ljava/lang/String; = "com.car.videorecorder.recording_time_changed"

.field private static final CAMERA_ALL:I = 0x2

.field private static final CAMERA_BACK:I = 0x1

.field private static final CAMERA_FRONT:I = 0x0

.field private static final RECORDING_CAMERA:Ljava/lang/String; = "recording_camera"

.field private static final RECORDING_TIME:Ljava/lang/String; = "recording_time"

.field private static final TAG:Ljava/lang/String; = "LC.DvrWidget"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mRecordingTime:Landroid/widget/TextView;

.field private mRedCircle:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launcher/DvrWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/car/launcher/DvrWidget$1;

    invoke-direct {v1, p0}, Lcom/car/launcher/DvrWidget$1;-><init>(Lcom/car/launcher/DvrWidget;)V

    iput-object v1, p0, Lcom/car/launcher/DvrWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launcher/DvrWidget;->mRootView:Landroid/view/View;

    iput-object p1, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/launcher/DvrWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/launcher/DvrWidget;->mRecordingTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/launcher/DvrWidget;->mRootView:Landroid/view/View;

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launcher/DvrWidget;->mRedCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/car/launcher/DvrWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/car/launcher/DvrWidget;->mRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launcher/DvrWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/DvrWidget;->onStartRecording()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/launcher/DvrWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launcher/DvrWidget;->onStopRecording()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/launcher/DvrWidget;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/launcher/DvrWidget;->updateRecordTime(II)V

    return-void
.end method

.method private onStartRecording()V
    .locals 2

    const-string v0, "LC.DvrWidget"

    const-string v1, "onStartRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStopRecording()V
    .locals 2

    const-string v0, "LC.DvrWidget"

    const-string v1, "onStopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launcher/DvrWidget;->mRedCircle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launcher/DvrWidget;->mRecordingTime:Landroid/widget/TextView;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateRecordTime(II)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-ne p1, v4, :cond_0

    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/car/launchercommon/Util;->secondsToTime(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mRedCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/launcher/DvrWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/car/launcher/DvrWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/launcher/DvrWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/DvrWidget;->mRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
