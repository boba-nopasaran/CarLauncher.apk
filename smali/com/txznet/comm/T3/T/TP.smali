.class public Lcom/txznet/comm/T3/T/TP;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TP$T2;,
        Lcom/txznet/comm/T3/T/TP$T;,
        Lcom/txznet/comm/T3/T/TP$T3;
    }
.end annotation


# static fields
.field public static T:I

.field private static final T2:Lcom/txznet/comm/T3/T/TP$T;

.field static T3:Ljava/lang/Runnable;

.field private static final TN:Lcom/txznet/comm/T3/T/TP$T3;

.field private static Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/txznet/comm/T3/T/TP$T2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/txznet/comm/T3/T/TP;->T2:Lcom/txznet/comm/T3/T/TP$T;

    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    sput-object v0, Lcom/txznet/comm/T3/T/TP;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    const/4 v0, 0x4

    sput v0, Lcom/txznet/comm/T3/T/TP;->T:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    sput-object v1, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    return-void
.end method

.method public static T(ILjava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 8

    const/4 v3, 0x0

    move v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 11

    const-string v2, ""

    const/4 v3, 0x0

    move v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 10

    const-string v2, ""

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 7

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 13

    move v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p5

    invoke-static/range {v2 .. v9}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.tts.speak"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-instance v6, Lcom/txznet/comm/T3/T/TP$2;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lcom/txznet/comm/T3/T/TP$2;-><init>(Lcom/txznet/comm/T3/T/TP$T;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    move-result v11

    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/T3/T/TP$T2;

    move-object v12, v2

    :goto_0
    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return v11

    :cond_0
    new-instance v12, Lcom/txznet/comm/T3/T/TP$T2;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/txznet/comm/T3/T/TP$T2;-><init>(Lcom/txznet/comm/T3/T/TP$1;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 10

    const-wide/16 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public static T(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/txznet/comm/T3/T/TP;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method private static T(ILjava/lang/String;[Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "iStream"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "sText"

    invoke-virtual {v1, v2, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "voiceUrls"

    invoke-virtual {v1, v2, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "bPreempt"

    invoke-virtual {p3}, Lcom/txznet/comm/T3/T/TP$T3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    const-string v2, "delay"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "iStream"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "sText"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "voiceUrls"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "bPreempt"

    invoke-virtual {p3}, Lcom/txznet/comm/T3/T/TP$T3;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "resId"

    invoke-virtual {v0, v1, p4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "delay"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    if-eqz p5, :cond_2

    const-string v1, "resArgs"

    invoke-virtual {v0, v1, p5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static T()V
    .locals 2

    const-string v0, "comm.tts."

    new-instance v1, Lcom/txznet/comm/T3/T/TP$1;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TP$1;-><init>()V

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    return-void
.end method

.method public static T(I)V
    .locals 7

    sget-object v2, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T2;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    new-instance v3, Lcom/txznet/comm/T3/T/TP$3;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/txznet/comm/T3/T/TP$3;-><init>(Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    iget v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T3:Z

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.tts.cancel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    iget-object v1, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-nez v1, :cond_1

    sget-object v1, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static T(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 7

    sget-object v4, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/T3/T/TP$T2;

    iget v3, v2, Lcom/txznet/comm/T3/T/TP$T2;->T:I

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v3

    new-instance v5, Lcom/txznet/comm/T3/T/TP$4;

    invoke-direct {v5, p0, v2, p2}, Lcom/txznet/comm/T3/T/TP$4;-><init>(Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_1
    sget-object v3, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    :goto_0
    return-void

    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6

    const/4 v5, 0x0

    const-string v3, "speakTextOnRecordWin.end"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/txznet/comm/T3/T/TP;->T3:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v1, Lcom/txznet/comm/TN/T;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    const-string v3, "ttsId"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "success"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "success"

    invoke-static {v3, v2, v5}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v3, "cancel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "cancel"

    invoke-static {v3, v2, v5}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v3, "error"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "error"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "success"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V

    goto :goto_0
.end method

.method static synthetic T3()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/TP;->Te:Ljava/util/Map;

    return-object v0
.end method
