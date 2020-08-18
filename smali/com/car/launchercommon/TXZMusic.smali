.class Lcom/car/launchercommon/TXZMusic;
.super Lcom/car/launchercommon/MusicTool;
.source "TXZMusic.java"

# interfaces
.implements Lcom/txznet/sdk/TXZStatusManager$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/TXZMusic$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_READY:I = 0x2

.field private static final MSG_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LC.TXZMusic"


# instance fields
.field private mCallback:Lcom/car/launchercommon/MusicTool$Callback;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/car/launchercommon/TXZMusic$MyHandler;

.field private mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/car/launchercommon/MusicTool;-><init>()V

    new-instance v0, Lcom/car/launchercommon/TXZMusic$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/TXZMusic$MyHandler;-><init>(Lcom/car/launchercommon/TXZMusic;Lcom/car/launchercommon/TXZMusic$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mHandler:Lcom/car/launchercommon/TXZMusic$MyHandler;

    iput-object p1, p0, Lcom/car/launchercommon/TXZMusic;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LC.TXZMusic"

    const-string v1, "isInitedSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/launchercommon/TXZMusic;->init()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LC.TXZMusic"

    const-string v1, "TXZConfigManager initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/car/launchercommon/TXZMusic$1;

    invoke-direct {v2, p0}, Lcom/car/launchercommon/TXZMusic$1;-><init>(Lcom/car/launchercommon/TXZMusic;)V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/car/launchercommon/TXZMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/TXZMusic;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/launchercommon/TXZMusic;)Lcom/car/launchercommon/MusicTool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    return-object v0
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-static {}, Lcom/txznet/sdk/TXZStatusManager;->getInstance()Lcom/txznet/sdk/TXZStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txznet/sdk/TXZStatusManager;->addStatusListener(Lcom/txznet/sdk/TXZStatusManager$StatusListener;)V

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mHandler:Lcom/car/launchercommon/TXZMusic$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TXZMusic$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stateChanged()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mHandler:Lcom/car/launchercommon/TXZMusic$MyHandler;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TXZMusic$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mHandler:Lcom/car/launchercommon/TXZMusic$MyHandler;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TXZMusic$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public getArtistName()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZMusicManager;->getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getArtist()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "LC.TXZMusic"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZMusicManager;->getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZMusicManager;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isReady()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZMusicManager;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBeepEnd()V
    .locals 0

    return-void
.end method

.method public onBeginAsr()V
    .locals 0

    return-void
.end method

.method public onBeginCall()V
    .locals 0

    return-void
.end method

.method public onBeginTts()V
    .locals 0

    return-void
.end method

.method public onEndAsr()V
    .locals 0

    return-void
.end method

.method public onEndCall()V
    .locals 0

    return-void
.end method

.method public onEndTts()V
    .locals 0

    return-void
.end method

.method public onMusicPause()V
    .locals 2

    const-string v0, "LC.TXZMusic"

    const-string v1, "onMusicPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/launchercommon/TXZMusic;->stateChanged()V

    return-void
.end method

.method public onMusicPlay()V
    .locals 2

    const-string v0, "LC.TXZMusic"

    const-string v1, "onMusicPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/launchercommon/TXZMusic;->stateChanged()V

    return-void
.end method

.method public prev()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZMusicManager;->prev()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/launchercommon/TXZMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/TXZMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    goto :goto_0
.end method

.method public togglePause()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager;->isInitedSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZMusicManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZMusicManager;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/launchercommon/TXZMusic;->mTxzMusic:Lcom/txznet/sdk/TXZMusicManager;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZMusicManager;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LC.TXZMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
