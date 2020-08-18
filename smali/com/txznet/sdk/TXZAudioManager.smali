.class public Lcom/txznet/sdk/TXZAudioManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZAudioManager$AudioTool;,
        Lcom/txznet/sdk/TXZAudioManager$IAudioTool;,
        Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;
    }
.end annotation


# static fields
.field private static T2:Lcom/txznet/sdk/TXZAudioManager;


# instance fields
.field T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

.field T3:Z

.field private TG:Ljava/lang/Boolean;

.field private TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field private Te:Z

.field private Tn:Ljava/lang/String;

.field private Tw:Ljava/lang/String;

.field private Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZAudioManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZAudioManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager;->T2:Lcom/txznet/sdk/TXZAudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZAudioManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZAudioManager;->T2:Lcom/txznet/sdk/TXZAudioManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 3

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Te:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->setDefaultAudioTool(Lcom/txznet/sdk/TXZAudioManager$AudioTool;)V

    :cond_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    iget-object v1, p0, Lcom/txznet/sdk/TXZAudioManager;->Ty:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager;->Tn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/txznet/sdk/TXZAudioManager;->setXMLYAppkey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->showXmlySearchResult(Z)V

    :cond_3
    return-void
.end method

.method public exit()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.exit"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public isPlaying()Z
    .locals 4

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.audio.isPlaying"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public next()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.next"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.pause"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public play()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.play"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public playKeywords(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.playFm"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public prev()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.prev"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T3:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZAudioManager$1;-><init>(Lcom/txznet/sdk/TXZAudioManager;)V

    invoke-virtual {p1, v0}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->setAudioStatusListener(Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;)V

    const-string v0, "tool.audio."

    new-instance v1, Lcom/txznet/sdk/TXZAudioManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZAudioManager$2;-><init>(Lcom/txznet/sdk/TXZAudioManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.setInnerTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setDefaultAudioTool(Lcom/txznet/sdk/TXZAudioManager$AudioTool;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Te:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.setInnerTool"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setXMLYAppkey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/sdk/TXZAudioManager;->Ty:Ljava/lang/String;

    iput-object p3, p0, Lcom/txznet/sdk/TXZAudioManager;->Tn:Ljava/lang/String;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "appSecret"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "appKey"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.audio.setkey.xmly"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public showXmlySearchResult(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.showSelect.xmly"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
