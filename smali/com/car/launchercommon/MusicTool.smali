.class public abstract Lcom/car/launchercommon/MusicTool;
.super Ljava/lang/Object;
.source "MusicTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/MusicTool$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract next()V
.end method

.method public abstract prev()V
.end method

.method public abstract setCallback(Lcom/car/launchercommon/MusicTool$Callback;)V
.end method

.method public abstract togglePause()V
.end method
