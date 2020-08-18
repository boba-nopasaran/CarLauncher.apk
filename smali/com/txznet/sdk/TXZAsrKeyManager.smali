.class public Lcom/txznet/sdk/TXZAsrKeyManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;,
        Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;,
        Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;,
        Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeyType;
    }
.end annotation


# static fields
.field private static Te:Lcom/txznet/sdk/TXZAsrKeyManager;


# instance fields
.field T:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

.field T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

.field T3:[Ljava/lang/String;

.field TN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Tw:Z

.field private Ty:Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZAsrKeyManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZAsrKeyManager;->Te:Lcom/txznet/sdk/TXZAsrKeyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Tw:Z

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Ty:Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    return-object v0
.end method

.method private T(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySourceByTypeKeywords(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    const-string v4, "com.txznet.txz"

    const-string v5, "txz.nav.asr.key.modify"

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->toBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZAsrKeyManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZAsrKeyManager;->Te:Lcom/txznet/sdk/TXZAsrKeyManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T([Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;Lcom/txznet/comm/T3/T2$T3;)V

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T3:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T3:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->forbidAsrKeys([Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;)V

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->modifyAsrKeyCmds([Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;Lcom/txznet/comm/T3/T2$T3;)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Ljava/util/Map;)V

    :cond_3
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Tw:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Ty:Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrKeyManager;->setCommCmdsTool(Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;)V

    :cond_4
    return-void
.end method

.method T([Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;Lcom/txznet/comm/T3/T2$T3;)V
    .locals 9

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    if-eqz v5, :cond_1

    new-instance v2, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;-><init>()V

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.nav.asr.key.syncKeySources"

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->toBytes()[B

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.nav.asr.key.syncKeySources"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_1
.end method

.method public forbidAsrKeys([Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;)V
    .locals 9

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T3:[Ljava/lang/String;

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T3:[Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.nav.asr.key.forbidKeys"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    return-void
.end method

.method public varargs modifyAsrKeyCmds(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    :cond_0
    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz p2, :cond_2

    move-object v0, p2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->TN:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Ljava/util/Map;)V

    return-void
.end method

.method public modifyAsrKeyCmds([Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;Lcom/txznet/comm/T3/T2$T3;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    if-eqz v5, :cond_1

    new-instance v2, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->T2:[Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.nav.asr.key.modify"

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->toBytes()[B

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    return-void
.end method

.method public setCommCmdsTool(Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Tw:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Ty:Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager;->Ty:Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.commcmds.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.ccw."

    new-instance v1, Lcom/txznet/sdk/TXZAsrKeyManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZAsrKeyManager$1;-><init>(Lcom/txznet/sdk/TXZAsrKeyManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.commcmds.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method
