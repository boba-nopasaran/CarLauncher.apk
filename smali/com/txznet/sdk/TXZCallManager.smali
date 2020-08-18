.class public Lcom/txznet/sdk/TXZCallManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZCallManager$3;,
        Lcom/txznet/sdk/TXZCallManager$CallTool;,
        Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;,
        Lcom/txznet/sdk/TXZCallManager$Contact;
    }
.end annotation


# static fields
.field private static T3:Lcom/txznet/sdk/TXZCallManager;


# instance fields
.field T:[B

.field private T2:Z

.field private TG:Z

.field private TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

.field private TR:Ljava/lang/String;

.field private TW:Ljava/lang/String;

.field private Te:Ljava/lang/String;

.field private Tn:Ljava/lang/String;

.field private Tw:Z

.field private Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZCallManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCallManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZCallManager;->T3:Lcom/txznet/sdk/TXZCallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/txznet/sdk/TXZCallManager;->T:[B

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->T2:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZCallManager;->TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

    iput-object v1, p0, Lcom/txznet/sdk/TXZCallManager;->Te:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->Tw:Z

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->TG:Z

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

    return-object v0
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZCallManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager;->Te:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZCallManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZCallManager;->T3:Lcom/txznet/sdk/TXZCallManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->T2:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZCallManager;->setCallTool(Lcom/txznet/sdk/TXZCallManager$CallTool;)V

    :cond_0
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZCallManager;->T3()V

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->T2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->Te:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.enable"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->Tw:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->Ty:Ljava/lang/String;

    iget-object v1, p0, Lcom/txznet/sdk/TXZCallManager;->Tn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZCallManager;->syncLocalBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->TG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->TR:Ljava/lang/String;

    iget-object v1, p0, Lcom/txznet/sdk/TXZCallManager;->TW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZCallManager;->syncLocalBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.disable"

    iget-object v3, p0, Lcom/txznet/sdk/TXZCallManager;->Te:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method T3()V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager;->T:[B

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.sync"

    iget-object v3, p0, Lcom/txznet/sdk/TXZCallManager;->T:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    return-void
.end method

.method public setCallTool(Lcom/txznet/sdk/TXZCallManager$CallTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCallManager;->T2:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager;->TN:Lcom/txznet/sdk/TXZCallManager$CallTool;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZCallManager$1;-><init>(Lcom/txznet/sdk/TXZCallManager;)V

    invoke-interface {p1, v0}, Lcom/txznet/sdk/TXZCallManager$CallTool;->setStatusListener(Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;)V

    const-string v0, "tool.call."

    new-instance v1, Lcom/txznet/sdk/TXZCallManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZCallManager$2;-><init>(Lcom/txznet/sdk/TXZCallManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public syncContacts(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZCallManager$Contact;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    new-instance v2, Lcom/TN/T/T3/T$T3;

    invoke-direct {v2}, Lcom/TN/T/T3/T$T3;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lcom/TN/T/T3/T$T;

    iput-object v5, v2, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    const/4 v3, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZCallManager$Contact;

    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_0

    :goto_1
    iget-object v5, v2, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    new-instance v6, Lcom/TN/T/T3/T$T;

    invoke-direct {v6}, Lcom/TN/T/T3/T$T;-><init>()V

    aput-object v6, v5, v3

    iget-object v5, v2, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    iput-object v6, v5, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    iget-object v5, v2, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    aget-object v5, v5, v3

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    aput-object v8, v6, v7

    iput-object v6, v5, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    iget-object v5, v2, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    aget-object v5, v5, v3

    iget-wide v6, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T2:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/txznet/sdk/TXZCallManager;->T:[B

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.call.sync"

    iget-object v8, p0, Lcom/txznet/sdk/TXZCallManager;->T:[B

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public syncLocalBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager;->Ty:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/sdk/TXZCallManager;->Tn:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZCallManager;->Tw:Z

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/txznet/sdk/TXZCallManager;->Ty:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/txznet/sdk/TXZCallManager;->Tn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.bt.localinfo"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public syncRemoteBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager;->TR:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/sdk/TXZCallManager;->TW:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZCallManager;->TG:Z

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/txznet/sdk/TXZCallManager;->TR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/txznet/sdk/TXZCallManager;->TW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.bt.remoteinfo"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
