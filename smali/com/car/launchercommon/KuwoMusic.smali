.class Lcom/car/launchercommon/KuwoMusic;
.super Lcom/car/launchercommon/MusicTool;
.source "KuwoMusic.java"


# static fields
.field private static final MEDIA_BUTTON:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

.field private static final PALY_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

.field private static final PLAYER_STATUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

.field private static final STARTAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.STARTAPP"

.field private static final TAG:Ljava/lang/String; = "LC.KuwoMusic"


# instance fields
.field private mArtistName:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/car/launchercommon/MusicTool$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

.field private mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

.field private mTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/launchercommon/MusicTool;-><init>()V

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    iput-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    iput-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mTrackName:Ljava/lang/String;

    iput-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mArtistName:Ljava/lang/String;

    new-instance v0, Lcom/car/launchercommon/KuwoMusic$2;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/KuwoMusic$2;-><init>(Lcom/car/launchercommon/KuwoMusic;)V

    iput-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/launchercommon/KuwoMusic;->initKwApi()V

    return-void
.end method

.method static synthetic access$002(Lcom/car/launchercommon/KuwoMusic;Lcn/kuwo/autosdk/api/PlayerStatus;)Lcn/kuwo/autosdk/api/PlayerStatus;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/car/launchercommon/KuwoMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/launchercommon/KuwoMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/car/launchercommon/KuwoMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/car/launchercommon/KuwoMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/car/launchercommon/KuwoMusic;)Lcom/car/launchercommon/MusicTool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    return-object v0
.end method

.method private startApp()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "auto_play"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public initKwApi()V
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    const-string v1, "auto"

    invoke-static {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI;->createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/car/launchercommon/KuwoMusic$1;

    invoke-direct {v2, p0}, Lcom/car/launchercommon/KuwoMusic$1;-><init>(Lcom/car/launchercommon/KuwoMusic;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/car/launchercommon/KuwoMusic;->startApp()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public prev()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/car/launchercommon/KuwoMusic;->startApp()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_PRE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/KuwoMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    goto :goto_0
.end method

.method public togglePause()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/launchercommon/KuwoMusic;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mCurrentStatus:Lcn/kuwo/autosdk/api/PlayerStatus;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayerStatus;->PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "MEDIA_PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/KuwoMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/car/launchercommon/KuwoMusic;->startApp()V

    goto :goto_0
.end method
