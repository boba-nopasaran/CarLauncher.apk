.class public Lcom/txznet/comm/T3/T/T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/T3$T;,
        Lcom/txznet/comm/T3/T/T3$T3;
    }
.end annotation


# static fields
.field static T:Ljava/lang/Boolean;

.field static T2:Ljava/lang/Boolean;

.field static T3:Ljava/lang/Boolean;

.field private static TB:Ljava/lang/String;

.field private static TG:Ljava/lang/Boolean;

.field private static TJ:Ljava/lang/Boolean;

.field static TN:Ljava/lang/Float;

.field private static TP:Ljava/lang/String;

.field private static TR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/T3/T/T3$T3;",
            ">;"
        }
    .end annotation
.end field

.field private static TW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/T3/T/T3$T;",
            ">;"
        }
    .end annotation
.end field

.field static Te:[Ljava/lang/String;

.field private static Tn:Lorg/json/JSONObject;

.field static Tw:Ljava/lang/Integer;

.field public static final Ty:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->T:Ljava/lang/Boolean;

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->T3:Ljava/lang/Boolean;

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->T2:Ljava/lang/Boolean;

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->TG:Ljava/lang/Boolean;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->TR:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->TJ:Ljava/lang/Boolean;

    const-string v7, "FLOAT_NORMAL"

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->TB:Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    sput-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    :try_start_0
    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "wakeupThreshold"

    const-wide v10, -0x3ff7333340000000L    # -3.0999999046325684

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "voiceSpeed"

    const/16 v9, 0x46

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v7, 0x0

    new-array v6, v7, [Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "wakeupKeywords"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "wakeupSound"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "floatTool"

    const-string v9, "FLOAT_TOP"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v7, Lcom/txznet/comm/T3/T/T3;->Ty:Lorg/json/JSONObject;

    const-string v8, "coverDefaultKeywords"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static T()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.config.showHelpInfos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.record"

    const-string v2, "comm.config.showHelpInfos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    sget-object v0, Lcom/txznet/comm/T3/T/T3;->T3:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.config.showSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T3:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.record"

    const-string v2, "comm.config.showSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T3:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    sget-object v0, Lcom/txznet/comm/T3/T/T3;->T2:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.config.showCloseIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T2:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.record"

    const-string v2, "comm.config.showCloseIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->T2:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_2
    sget-object v0, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public static T(IZ)V
    .locals 3

    sget-object v2, Lcom/txznet/comm/T3/T/T3;->TR:Ljava/util/List;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Lcom/txznet/comm/T3/T/T3;->TR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/txznet/comm/T3/T/T3;->TR:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T/T3$T3;

    invoke-interface {v1, p0, p1}, Lcom/txznet/comm/T3/T/T3$T3;->T(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static T(Lcom/txznet/comm/T3/T/T3$T;)V
    .locals 2

    sget-object v1, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static T(Ljava/lang/Integer;)V
    .locals 0

    sput-object p0, Lcom/txznet/comm/T3/T/T3;->Tw:Ljava/lang/Integer;

    return-void
.end method

.method public static T(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/txznet/comm/T3/T/T3;->T3(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    monitor-enter v3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/T3/T/T3$T;

    invoke-interface {v2, p0}, Lcom/txznet/comm/T3/T/T3$T;->onConfigChanged(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static T(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    sput-object p0, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.default.set"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T3/T/T3;->T:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/T3;->T(IZ)V

    return-void
.end method

.method public static T2()Ljava/lang/Float;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->TN:Ljava/lang/Float;

    return-object v0
.end method

.method public static T2(Lorg/json/JSONObject;)Ljava/lang/Float;
    .locals 4

    const-string v1, "wakeupThreshold"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "wakeupThreshold"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static T2(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T3/T/T3;->T2:Ljava/lang/Boolean;

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/T3;->T(IZ)V

    return-void
.end method

.method public static T3(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2

    const-string v1, "coverDefaultKeywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "coverDefaultKeywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static T3()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.requestSync"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T3(Lcom/txznet/comm/T3/T/T3$T;)V
    .locals 2

    sget-object v1, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/T3/T/T3;->TW:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static T3(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T3/T/T3;->T3:Ljava/lang/Boolean;

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/txznet/comm/T3/T/T3;->T(IZ)V

    return-void
.end method

.method private static T3(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->TP:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->TP:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "wakeupThreshold"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "wakeupThreshold"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->TN:Ljava/lang/Float;

    :cond_1
    const-string v4, "voiceSpeed"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "voiceSpeed"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->Tw:Ljava/lang/Integer;

    :cond_2
    const-string v4, "wakeupKeywords"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "wakeupKeywords"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->Te:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    sget-object v4, Lcom/txznet/comm/T3/T/T3;->Te:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "wakeupSound"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "wakeupSound"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->TJ:Ljava/lang/Boolean;

    :cond_4
    const-string v4, "floatTool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "floatTool"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->TB:Ljava/lang/String;

    :cond_5
    const-string v4, "coverDefaultKeywords"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "coverDefaultKeywords"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/txznet/comm/T3/T/T3;->TG:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    sput-object p0, Lcom/txznet/comm/T3/T/T3;->TP:Ljava/lang/String;

    return v1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static TN(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2

    const-string v1, "voiceSpeed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "voiceSpeed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static TN()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->Te:[Ljava/lang/String;

    return-object v0
.end method

.method public static Te(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2

    const-string v1, "wakeupSound"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "wakeupSound"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Te()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->Tw:Ljava/lang/Integer;

    return-object v0
.end method

.method public static Tn()V
    .locals 7

    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/txznet/comm/T3/T/T3;->T2(Lorg/json/JSONObject;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupThreshhold(F)V

    :cond_0
    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/txznet/comm/T3/T/T3;->TN(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/txznet/sdk/TXZTtsManager;->getInstance()Lcom/txznet/sdk/TXZTtsManager;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/txznet/sdk/TXZTtsManager;->setVoiceSpeed(I)V

    :cond_1
    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/txznet/comm/T3/T/T3;->Tw(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/txznet/comm/T3/T/T3;->Te(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    :cond_3
    sget-object v5, Lcom/txznet/comm/T3/T/T3;->Tn:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/txznet/comm/T3/T/T3;->T3(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/txznet/sdk/TXZConfigManager;->enableCoverDefaultKeywords(Z)V

    :cond_4
    return-void
.end method

.method public static Tw()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->TJ:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static Tw(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 5

    const-string v4, "wakeupKeywords"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "wakeupKeywords"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public static Ty()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T3;->TB:Ljava/lang/String;

    return-object v0
.end method
