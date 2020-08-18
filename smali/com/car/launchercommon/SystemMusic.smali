.class Lcom/car/launchercommon/SystemMusic;
.super Lcom/car/launchercommon/MusicTool;
.source "SystemMusic.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final TAG:Ljava/lang/String; = "LC.SystemMusic"

.field private static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/car/launchercommon/MusicTool$Callback;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/music/IMediaPlaybackService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/car/launchercommon/MusicTool;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    new-instance v3, Lcom/car/launchercommon/SystemMusic$1;

    invoke-direct {v3, p0}, Lcom/car/launchercommon/SystemMusic$1;-><init>(Lcom/car/launchercommon/SystemMusic;)V

    iput-object v3, p0, Lcom/car/launchercommon/SystemMusic;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/launchercommon/SystemMusic;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/car/launchercommon/SystemMusic;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LC.SystemMusic"

    const-string v4, "bind IMediaPlaybackService failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.music.queuechanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/launchercommon/SystemMusic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/car/launchercommon/SystemMusic;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/launchercommon/SystemMusic;)Lcom/car/launchercommon/MusicTool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    return-object v0
.end method


# virtual methods
.method public getArtistName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;
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

.method public getTrackName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;
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

.method public isPlaying()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "LC.SystemMusic"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    invoke-interface {v0}, Lcom/car/launchercommon/MusicTool$Callback;->onReady()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "LC.SystemMusic"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    return-void
.end method

.method public prev()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->prev()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/launchercommon/SystemMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/SystemMusic;->mCallback:Lcom/car/launchercommon/MusicTool$Callback;

    goto :goto_0
.end method

.method public togglePause()V
    .locals 5

    iget-object v2, p0, Lcom/car/launchercommon/SystemMusic;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/SystemMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LC.SystemMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send TOGGLEPAUSE_ACTION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
