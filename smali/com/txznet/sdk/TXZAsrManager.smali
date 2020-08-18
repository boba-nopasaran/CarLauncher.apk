.class public Lcom/txznet/sdk/TXZAsrManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZAsrManager$AsrTool;,
        Lcom/txznet/sdk/TXZAsrManager$AsrCallback;,
        Lcom/txznet/sdk/TXZAsrManager$AsrOption;,
        Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;,
        Lcom/txznet/sdk/TXZAsrManager$CommandListener;
    }
.end annotation


# static fields
.field private static Te:Lcom/txznet/sdk/TXZAsrManager;


# instance fields
.field T:Ljava/lang/Boolean;

.field T2:Z

.field T3:Ljava/lang/Boolean;

.field private T7:Ljava/lang/Integer;

.field private TB:Ljava/lang/Integer;

.field private TG:Z

.field private TJ:Ljava/lang/Float;

.field TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

.field private TO:Ljava/lang/Integer;

.field private TP:Ljava/lang/Integer;

.field private TR:Z

.field private TW:Ljava/lang/Float;

.field private Tn:Ljava/lang/Integer;

.field private Tr:[F

.field private Tw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/sdk/TXZAsrManager$CommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private Ty:Lcom/txznet/comm/T3/T/T$TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZAsrManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZAsrManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZAsrManager;->Te:Lcom/txznet/sdk/TXZAsrManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tw:Ljava/util/Set;

    new-instance v0, Lcom/txznet/sdk/TXZAsrManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZAsrManager$1;-><init>(Lcom/txznet/sdk/TXZAsrManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Ty:Lcom/txznet/comm/T3/T/T$TN;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->Tn:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TG:Z

    iput-boolean v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TR:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TB:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TP:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->Tr:[F

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->T7:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TO:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->T:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/txznet/sdk/TXZAsrManager;->T2:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZAsrManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tw:Ljava/util/Set;

    return-object v0
.end method

.method private T(FF)Z
    .locals 6

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, p1

    if-lez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "minVal"

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "maxVal"

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.fm.setdistance"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private T(FF[F)Z
    .locals 8

    const/4 v2, 0x1

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager;->T(FF)Z

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    cmpl-float v3, p2, p1

    if-lez v3, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    iput-object p3, p0, Lcom/txznet/sdk/TXZAsrManager;->Tr:[F

    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v3, "minVal"

    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v3, "maxVal"

    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v3, "hasJump"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const/4 v0, 0x0

    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v4, p3, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "com.txznet.txz"

    const-string v5, "txz.fm.setdistance"

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private T(II)Z
    .locals 6

    if-lez p1, :cond_0

    if-le p2, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TB:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TP:Ljava/lang/Integer;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "minVal"

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TB:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "maxVal"

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->TP:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.am.setdistance"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZAsrManager;)Lcom/txznet/comm/T3/T/T$TN;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Ty:Lcom/txznet/comm/T3/T/T$TN;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZAsrManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZAsrManager;->Te:Lcom/txznet/sdk/TXZAsrManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 3

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tr:[F

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->Tr:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->T(FF[F)Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TP:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TB:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/txznet/sdk/TXZAsrManager;->T(II)Z

    :cond_1
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->setAsrTool(Lcom/txznet/sdk/TXZAsrManager$AsrTool;)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T7:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T7:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->setBOS(I)V

    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TO:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->setEOS(I)V

    :cond_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T3:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->setCloseWinWhenEndCmd(Z)V

    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->enableFMOnlineCmds(Z)V

    :cond_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tn:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrManager;->setAsrDelayAfterBeep(I)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TW:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->TJ:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/txznet/sdk/TXZAsrManager;->T(FF)Z

    goto :goto_0
.end method

.method public addCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/sdk/TXZAsrManager$5;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZAsrManager$5;-><init>(Lcom/txznet/sdk/TXZAsrManager;Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->T2()V

    return-void
.end method

.method public enableFMOnlineCmds(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.enableFMOnlineCmds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public recoverWakeupFromAsr(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T;->TN(Ljava/lang/String;)V

    return-void
.end method

.method public regCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrManager;->Ty:Lcom/txznet/comm/T3/T/T$TN;

    invoke-static {v0, p2, v1}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/T$TN;)V

    return v2
.end method

.method public regCommand(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager;->Ty:Lcom/txznet/comm/T3/T/T$TN;

    invoke-static {v0, p2, v2}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/T$TN;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public regCommand([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Ty:Lcom/txznet/comm/T3/T/T$TN;

    invoke-static {p1, p2, v0}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/T$TN;)V

    const/4 v0, 0x1

    return v0
.end method

.method public regCommandFmWithJumpPoint(FF[FLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-gtz v1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TG:Z

    const-string v1, "tool.fm."

    new-instance v2, Lcom/txznet/sdk/TXZAsrManager$4;

    invoke-direct {v2, p0, p4}, Lcom/txznet/sdk/TXZAsrManager$4;-><init>(Lcom/txznet/sdk/TXZAsrManager;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/txznet/sdk/TXZAsrManager;->T(FF[F)Z

    goto :goto_0
.end method

.method public regCommandForAM(IILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-gt p1, p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TR:Z

    const-string v1, "tool.am."

    new-instance v2, Lcom/txznet/sdk/TXZAsrManager$3;

    invoke-direct {v2, p0, p3}, Lcom/txznet/sdk/TXZAsrManager$3;-><init>(Lcom/txznet/sdk/TXZAsrManager;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-direct {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager;->T(II)Z

    goto :goto_0
.end method

.method public regCommandForFM(FFLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-gtz v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TG:Z

    const-string v1, "tool.fm."

    new-instance v2, Lcom/txznet/sdk/TXZAsrManager$2;

    invoke-direct {v2, p0, p3}, Lcom/txznet/sdk/TXZAsrManager$2;-><init>(Lcom/txznet/sdk/TXZAsrManager;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-direct {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager;->T(FF)Z

    goto :goto_0
.end method

.method public removeCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/sdk/TXZAsrManager$6;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZAsrManager$6;-><init>(Lcom/txznet/sdk/TXZAsrManager;Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public restart(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.restartWithRecordWin"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAsrDelayAfterBeep(I)V
    .locals 5

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->Tn:Ljava/lang/Integer;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.set.asrDelayAfterBeep"

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

    goto :goto_0
.end method

.method public setAsrPcmFile(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "audioSourcePath"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.asr.set.rawaudio"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAsrTool(Lcom/txznet/sdk/TXZAsrManager$AsrTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T2:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.clearAsrTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const-string v0, "tool.asr."

    invoke-static {v0, v3}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.setAsrTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const-string v0, "tool.asr."

    new-instance v1, Lcom/txznet/sdk/TXZAsrManager$7;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZAsrManager$7;-><init>(Lcom/txznet/sdk/TXZAsrManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    goto :goto_0
.end method

.method public setBOS(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T7:Ljava/lang/Integer;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.set.bos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setCloseWinWhenEndCmd(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->T3:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.end.close"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

.method public setEOS(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager;->TO:Ljava/lang/Integer;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.set.eos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public start()V
    .locals 0

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->T()V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;)V

    return-void
.end method

.method public startWithRawText(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.startWithRawText"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->T3()V

    return-void
.end method

.method public triggerRecordButton()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.triggerRecordButton"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public unregCommand(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;)V

    return v2
.end method

.method public unregCommand(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public unregCommand([Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T;->T([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public useWakeupAsAsr(Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T;->T(Lcom/txznet/comm/T3/T/T$Te;)V

    return-void
.end method
