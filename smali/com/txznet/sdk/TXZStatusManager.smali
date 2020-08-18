.class public Lcom/txznet/sdk/TXZStatusManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;,
        Lcom/txznet/sdk/TXZStatusManager$StatusListener;
    }
.end annotation


# static fields
.field private static Ty:Lcom/txznet/sdk/TXZStatusManager;


# instance fields
.field T:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

.field T2:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

.field T3:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

.field TN:Ljava/lang/Integer;

.field Te:Ljava/lang/Runnable;

.field Tw:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZStatusManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZStatusManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZStatusManager;->Ty:Lcom/txznet/sdk/TXZStatusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T3:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T2:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->TN:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->Te:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->Tw:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZStatusManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZStatusManager;->Ty:Lcom/txznet/sdk/TXZStatusManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZStatusManager;->setAudioLogicWhenAsr(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T3:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T3:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZStatusManager;->setAudioLogicWhenAsr(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T2:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->T2:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZStatusManager;->setAudioLogicWhenAsr(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->TN:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->TN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZStatusManager;->setAudioFocusStreamType(I)V

    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->Te:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/txznet/sdk/TXZStatusManager;->Tw:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZStatusManager;->setAudioFocusLogic(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/txznet/sdk/TXZStatusManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZStatusManager$1;-><init>(Lcom/txznet/sdk/TXZStatusManager;)V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T(Lcom/txznet/comm/T3/T/TJ$T;)V

    return-void
.end method

.method public addStatusListener(Lcom/txznet/sdk/TXZStatusManager$StatusListener;)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/TJ;->T(Lcom/txznet/comm/T3/T/TJ$T3;)V

    return-void
.end method

.method public isAsrBusy()Z
    .locals 1

    invoke-static {}, Lcom/txznet/comm/T3/T/TJ;->T()Z

    move-result v0

    return v0
.end method

.method public isCallBusy()Z
    .locals 1

    invoke-static {}, Lcom/txznet/comm/T3/T/TJ;->T2()Z

    move-result v0

    return v0
.end method

.method public isMusicPlaying()Z
    .locals 1

    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZMusicManager;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isRecordUIShowed()Z
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "txz.record.ui.status.isShowing"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public isTtsBusy()Z
    .locals 1

    invoke-static {}, Lcom/txznet/comm/T3/T/TJ;->T3()Z

    move-result v0

    return v0
.end method

.method public removeStatusListener(Lcom/txznet/sdk/TXZStatusManager$StatusListener;)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/TJ;->T3(Lcom/txznet/comm/T3/T/TJ$T3;)V

    return-void
.end method

.method public setAudioFocusLogic(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/txznet/sdk/TXZStatusManager;->Te:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/txznet/sdk/TXZStatusManager;->Tw:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->Te:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->Tw:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.setAudioFocusLogic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const-string v0, "status.focus."

    new-instance v1, Lcom/txznet/sdk/TXZStatusManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZStatusManager$2;-><init>(Lcom/txznet/sdk/TXZStatusManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.clearAudioFocusLogic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setAudioFocusStreamType(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZStatusManager;->TN:Ljava/lang/Integer;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.setAudioFocusStreamType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAudioLogicWhenAsr(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V
    .locals 5

    iput-object p1, p0, Lcom/txznet/sdk/TXZStatusManager;->T:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.audioLogic.asr"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAudioLogicWhenCall(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V
    .locals 5

    iput-object p1, p0, Lcom/txznet/sdk/TXZStatusManager;->T2:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.audioLogic.call"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAudioLogicWhenTts(Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;)V
    .locals 5

    iput-object p1, p0, Lcom/txznet/sdk/TXZStatusManager;->T3:Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.audioLogic.tts"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZStatusManager$AudioLogicType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
