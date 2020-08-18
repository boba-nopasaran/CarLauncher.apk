.class Lcom/txznet/sdk/music/TXZMusicTool$1$3;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/music/TXZMusicTool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/music/TXZMusicTool$1;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/music/TXZMusicTool$1$3;->T:Lcom/txznet/sdk/music/TXZMusicTool$1;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/txznet/comm/T3/T2$T2;->TN()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v0, v0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onProgressChange()V

    :cond_0
    return-void
.end method
