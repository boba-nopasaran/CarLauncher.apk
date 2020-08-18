.class public Lcom/txznet/sdk/TXZSenceManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZSenceManager$3;,
        Lcom/txznet/sdk/TXZSenceManager$SenceTool;,
        Lcom/txznet/sdk/TXZSenceManager$SenceType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZSenceManager;


# instance fields
.field private T2:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

.field private T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/txznet/sdk/TXZSenceManager$SenceType;",
            "Lcom/txznet/sdk/TXZSenceManager$SenceTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZSenceManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZSenceManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZSenceManager;->T:Lcom/txznet/sdk/TXZSenceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZSenceManager;->T3:Ljava/util/Map;

    new-instance v0, Lcom/txznet/sdk/TXZSenceManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZSenceManager$1;-><init>(Lcom/txznet/sdk/TXZSenceManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZSenceManager;->T2:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    return-void
.end method

.method private T(Lcom/txznet/sdk/TXZSenceManager$SenceType;Lcom/txznet/sdk/TXZSenceManager$SenceTool;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "all"

    :goto_1
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZSenceManager;->T2:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    if-ne v2, p2, :cond_1

    :cond_0
    const-string v0, "txz.sence.clear."

    :goto_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tool.sence."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/txznet/sdk/TXZSenceManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/txznet/sdk/TXZSenceManager$2;-><init>(Lcom/txznet/sdk/TXZSenceManager;Lcom/txznet/sdk/TXZSenceManager$SenceTool;Lcom/txznet/sdk/TXZSenceManager$SenceType;)V

    invoke-static {v2, v3}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "wakeup"

    goto :goto_1

    :pswitch_2
    const-string v1, "call"

    goto :goto_1

    :pswitch_3
    const-string v1, "music"

    goto :goto_1

    :pswitch_4
    const-string v1, "nav"

    goto :goto_1

    :pswitch_5
    const-string v1, "empty"

    goto :goto_1

    :pswitch_6
    const-string v1, "unknow"

    goto :goto_1

    :pswitch_7
    const-string v1, "unsupport"

    goto :goto_1

    :pswitch_8
    const-string v1, "app"

    goto :goto_1

    :pswitch_9
    const-string v1, "command"

    goto :goto_1

    :pswitch_a
    const-string v1, "limit_number"

    goto :goto_1

    :pswitch_b
    const-string v1, "location"

    goto :goto_1

    :pswitch_c
    const-string v1, "poi_choice"

    goto :goto_1

    :pswitch_d
    const-string v1, "set_user_wakeup_keywords"

    goto :goto_1

    :pswitch_e
    const-string v1, "stock"

    goto :goto_1

    :pswitch_f
    const-string v1, "traffic"

    goto :goto_1

    :pswitch_10
    const-string v1, "weather"

    goto :goto_1

    :pswitch_11
    const-string v1, "help"

    goto :goto_1

    :pswitch_12
    const-string v1, "audio"

    goto :goto_1

    :pswitch_13
    const-string v1, "selector"

    goto :goto_1

    :pswitch_14
    const-string v1, "movie"

    goto :goto_1

    :cond_1
    const-string v0, "txz.sence.set."

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZSenceManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZSenceManager;->T:Lcom/txznet/sdk/TXZSenceManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 4

    iget-object v2, p0, Lcom/txznet/sdk/TXZSenceManager;->T3:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    invoke-direct {p0, v2, v3}, Lcom/txznet/sdk/TXZSenceManager;->T(Lcom/txznet/sdk/TXZSenceManager$SenceType;Lcom/txznet/sdk/TXZSenceManager$SenceTool;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSenceTool(Lcom/txznet/sdk/TXZSenceManager$SenceType;Lcom/txznet/sdk/TXZSenceManager$SenceTool;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZSenceManager;->T3:Ljava/util/Map;

    iget-object v1, p0, Lcom/txznet/sdk/TXZSenceManager;->T2:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/txznet/sdk/TXZSenceManager;->T(Lcom/txznet/sdk/TXZSenceManager$SenceType;Lcom/txznet/sdk/TXZSenceManager$SenceTool;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZSenceManager;->T3:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public triggerSence(Lcom/txznet/sdk/TXZSenceManager$SenceType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
