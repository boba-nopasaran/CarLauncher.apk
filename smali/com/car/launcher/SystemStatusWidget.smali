.class public Lcom/car/launcher/SystemStatusWidget;
.super Landroid/widget/FrameLayout;
.source "SystemStatusWidget.java"

# interfaces
.implements Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;
.implements Lcom/car/launchercommon/CustomUI$CustomizableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launcher/SystemStatusWidget$Callback;
    }
.end annotation


# static fields
.field public static final REMOVE_BATTERY:Z

.field private static final TAG:Ljava/lang/String; = "LC.SystemStatusWidget"


# instance fields
.field private mApp:Lcom/car/launcher/LauncherApplication;

.field private mBluetoothImageView:Landroid/widget/ImageView;

.field private mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

.field private mFmImageView:Landroid/widget/ImageView;

.field private mGpsDisabledImageView:Landroid/widget/ImageView;

.field private mMuteImageView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mWifiImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.settings.remove"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/car/launcher/SystemStatusWidget;->REMOVE_BATTERY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launcher/SystemStatusWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    iput-object p1, p0, Lcom/car/launcher/SystemStatusWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/car/launcher/LauncherApplication;

    check-cast v0, Lcom/car/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mApp:Lcom/car/launcher/LauncherApplication;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mFmImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mWifiImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mMuteImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mGpsDisabledImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v0, Lcom/car/launcher/SystemStatusWidget;->REMOVE_BATTERY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public btStateChanged(ZLjava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const-string v0, "LC.SystemStatusWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBtState:isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    invoke-interface {v0, p1, p2}, Lcom/car/launcher/SystemStatusWidget$Callback;->onBTStateChanged(ZLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mBluetoothImageView:Landroid/widget/ImageView;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mApp:Lcom/car/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/car/launcher/LauncherApplication;->updateSysState()V

    return-void
.end method

.method public fmStateChanged(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mFmImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    invoke-interface {v0, p1, p2}, Lcom/car/launcher/SystemStatusWidget$Callback;->onFMStateChanged(ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mFmImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public gpsStatChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mGpsDisabledImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mGpsDisabledImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public musicMuteStatChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mMuteImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mMuteImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "LC.SystemStatusWidget"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mApp:Lcom/car/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/car/launcher/LauncherApplication;->registerSysStateChangedListener(Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mApp:Lcom/car/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/car/launcher/LauncherApplication;->unregisterSysStateChangedListener(Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public satellitesChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    invoke-interface {v0, p1}, Lcom/car/launcher/SystemStatusWidget$Callback;->onSatellitesChanged(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/car/launcher/SystemStatusWidget$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/SystemStatusWidget;->mCallback:Lcom/car/launcher/SystemStatusWidget$Callback;

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mRootView:Landroid/view/View;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public wifiStateChanged(ZLjava/lang/String;I)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mWifiImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mWifiImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launcher/SystemStatusWidget;->mWifiImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
