.class public Lcom/car/launchercommon/MobileNetworkView;
.super Landroid/widget/LinearLayout;
.source "MobileNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final IMS_REGISTERED:I = 0x0

.field private static final IMS_UNREGISTERED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LC.MobileNetworkView"

.field private static mToSpeech:Z


# instance fields
.field private final SIGNAL_LEVEL:[I

.field private mAirPlane:Landroid/widget/ImageView;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHotSpot:Landroid/widget/ImageView;

.field private mListener:Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

.field private mNetReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mSignal:Landroid/widget/ImageView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mType:Landroid/widget/ImageView;

.field private mVolte:Landroid/widget/ImageView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/launchercommon/MobileNetworkView;->mToSpeech:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launchercommon/MobileNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/launchercommon/MobileNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_0_fully:I

    aput v2, v1, v4

    sget v2, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_1_fully:I

    aput v2, v1, v5

    const/4 v2, 0x2

    sget v3, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_2_fully:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_3_fully:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_4_fully:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->SIGNAL_LEVEL:[I

    new-instance v1, Lcom/car/launchercommon/MobileNetworkView$1;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/MobileNetworkView$1;-><init>(Lcom/car/launchercommon/MobileNetworkView;)V

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/launchercommon/MobileNetworkView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/car/launchercommon/R$layout;->mobile_network_view:I

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    sget v2, Lcom/car/launchercommon/R$id;->airplane_on:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    sget v2, Lcom/car/launchercommon/R$id;->hotspot_on:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    sget v2, Lcom/car/launchercommon/R$id;->mobile_signal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    sget v2, Lcom/car/launchercommon/R$id;->mobile_type:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mRootView:Landroid/view/View;

    sget v2, Lcom/car/launchercommon/R$id;->volte_state:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mVolte:Landroid/widget/ImageView;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/car/launchercommon/Util;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/car/launchercommon/MobileNetworkView;->setVisibility(I)V

    :cond_1
    new-instance v1, Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;-><init>(Lcom/car/launchercommon/MobileNetworkView;)V

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mListener:Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/MobileNetworkView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launchercommon/MobileNetworkView;)[I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->SIGNAL_LEVEL:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/launchercommon/MobileNetworkView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/launchercommon/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateMobileNetworkState()V

    return-void
.end method

.method static synthetic access$400(Lcom/car/launchercommon/MobileNetworkView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->isHotspotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/car/launchercommon/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateHotspotIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/car/launchercommon/MobileNetworkView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/car/launchercommon/MobileNetworkView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateAirplaneIcon()V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/car/launchercommon/MobileNetworkView;->mToSpeech:Z

    return p0
.end method

.method static synthetic access$900(Lcom/car/launchercommon/MobileNetworkView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mVolte:Landroid/widget/ImageView;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isHotspotEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAirplaneIcon()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mAirPlane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHotspotIcon()V
    .locals 2

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->isHotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mHotSpot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobileNetworkState()V
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "LC.MobileNetworkView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile network is connected, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    sget v5, Lcom/car/launchercommon/R$drawable;->stat_sys_data_fully_connected_4g:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v4, Lcom/car/launchercommon/MobileNetworkView;->mToSpeech:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/MobileNetworkView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/car/launchercommon/R$string;->mobile_network_ok:I

    invoke-static {v4, v5}, Lcom/car/launchercommon/BaseApplication;->speechTips(Landroid/content/Context;I)V

    sput-boolean v0, Lcom/car/launchercommon/MobileNetworkView;->mToSpeech:Z

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mListener:Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

    iget v1, v4, Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;->lastLevel:I

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/car/launchercommon/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->SIGNAL_LEVEL:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/car/launchercommon/MobileNetworkView;->SIGNAL_LEVEL:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    sget v5, Lcom/car/launchercommon/R$drawable;->stat_sys_data_fully_connected_3g:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    sget v5, Lcom/car/launchercommon/R$drawable;->stat_sys_data_fully_connected_e:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-string v4, "LC.MobileNetworkView"

    const-string v5, "mobile network is disconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mType:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/car/launchercommon/MobileNetworkView;->mSignal:Landroid/widget/ImageView;

    sget v5, Lcom/car/launchercommon/R$drawable;->stat_sys_signal_null:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateAirplaneIcon()V

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateHotspotIcon()V

    invoke-direct {p0}, Lcom/car/launchercommon/MobileNetworkView;->updateMobileNetworkState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/launchercommon/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/car/launchercommon/MobileNetworkView;->mListener:Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/launchercommon/MobileNetworkView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/car/launchercommon/MobileNetworkView;->mListener:Lcom/car/launchercommon/MobileNetworkView$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
