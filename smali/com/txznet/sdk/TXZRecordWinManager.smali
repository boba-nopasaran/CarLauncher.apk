.class public Lcom/txznet/sdk/TXZRecordWinManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;
    }
.end annotation


# static fields
.field private static T2:Lcom/txznet/sdk/TXZRecordWinManager;


# instance fields
.field T:Ljava/lang/Boolean;

.field T3:Ljava/lang/Boolean;

.field private TN:Ljava/lang/Boolean;

.field private Te:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZRecordWinManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZRecordWinManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZRecordWinManager;->T2:Lcom/txznet/sdk/TXZRecordWinManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZRecordWinManager;)Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->Te:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZRecordWinManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZRecordWinManager;->T2:Lcom/txznet/sdk/TXZRecordWinManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZRecordWinManager;->enableFullScreen(Z)V

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T3:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZRecordWinManager;->setWinRecordCloseWhenProcCmd(Z)V

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->TN:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->Te:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZRecordWinManager;->setRecordWin2(Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V

    :cond_2
    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.winRecord.fullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public isOpened()Z
    .locals 4

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.record.win.isOpened"

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

.method public setRecordWin2(Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->TN:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/txznet/sdk/TXZRecordWinManager;->Te:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->Te:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.recordwin2.clear"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/TN;->T()Lcom/txznet/comm/ui/TN;

    move-result-object v0

    new-instance v1, Lcom/txznet/sdk/TXZRecordWinManager$1;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZRecordWinManager$1;-><init>(Lcom/txznet/sdk/TXZRecordWinManager;Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/TN;->T3(Lcom/txznet/comm/ui/TN$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.recordwin2.set"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const-string v0, "win.record2."

    new-instance v1, Lcom/txznet/sdk/TXZRecordWinManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZRecordWinManager$2;-><init>(Lcom/txznet/sdk/TXZRecordWinManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.recordwin2.set"

    const-string v3, "false"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setWinRecordCloseWhenProcCmd(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T3:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.winRecord.close"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/txznet/sdk/TXZRecordWinManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
