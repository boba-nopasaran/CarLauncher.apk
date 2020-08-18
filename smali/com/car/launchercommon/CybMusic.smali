.class Lcom/car/launchercommon/CybMusic;
.super Lcom/car/launchercommon/MusicTool;
.source "CybMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.CybMusic"


# instance fields
.field private mArtistName:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/car/launchercommon/MusicTool$Callback;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

.field mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

.field mState:I

.field private mTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/launchercommon/MusicTool;-><init>()V

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mTrackName:Ljava/lang/String;

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mArtistName:Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    new-instance v1, Lcom/car/launchercommon/CybMusic$1;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/CybMusic$1;-><init>(Lcom/car/launchercommon/CybMusic;)V

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    new-instance v1, Lcom/car/launchercommon/CybMusic$2;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/CybMusic$2;-><init>(Lcom/car/launchercommon/CybMusic;)V

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_service_bind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/launchercommon/CybMusic;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    const-string v2, "hongfans"

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/car/launchercommon/CybMusic;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    invoke-virtual {v1, v2}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/CybMusic;)Lcom/car/launchercommon/MusicTool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/launchercommon/CybMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/car/launchercommon/CybMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/car/launchercommon/CybMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/car/launchercommon/CybMusic;)Lcom/hongfans/carmedia/OnPlayChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    return-object v0
.end method


# virtual methods
.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .locals 2

    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public prev()V
    .locals 2

    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPrevious(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/CybMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    goto :goto_0
.end method

.method public togglePause()V
    .locals 2

    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/car/launchercommon/CybMusic;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->startAPP(Landroid/content/Context;)V

    goto :goto_0
.end method
