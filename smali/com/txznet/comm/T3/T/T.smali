.class public Lcom/txznet/comm/T3/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/T$T;,
        Lcom/txznet/comm/T3/T/T$Te;,
        Lcom/txznet/comm/T3/T/T$T3;,
        Lcom/txznet/comm/T3/T/T$T2;,
        Lcom/txznet/comm/T3/T/T$TN;
    }
.end annotation


# static fields
.field public static final T:[Ljava/lang/String;

.field public static final T2:[Ljava/lang/String;

.field public static final T3:[Ljava/lang/String;

.field private static TG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TN:[Ljava/lang/String;

.field private static TR:Ljava/lang/Runnable;

.field private static TW:Ljava/lang/Runnable;

.field static Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/comm/T3/T/T$Te;",
            ">;"
        }
    .end annotation
.end field

.field private static Tn:Lcom/txznet/comm/T3/T/T$TN;

.field private static Tw:Lcom/txznet/comm/T3/T/T$T2;

.field private static Ty:Lcom/txznet/comm/T3/T/T$T3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-object v1, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    sput-object v1, Lcom/txznet/comm/T3/T/T;->Ty:Lcom/txznet/comm/T3/T/T$T3;

    sput-object v1, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    sput-object v1, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    new-instance v0, Lcom/txznet/comm/T3/T/T$2;

    invoke-direct {v0}, Lcom/txznet/comm/T3/T/T$2;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7b2c\u4e00\u4e2a"

    aput-object v1, v0, v3

    const-string v1, "\u7b2c\u4e8c\u4e2a"

    aput-object v1, v0, v4

    const-string v1, "\u7b2c\u4e09\u4e2a"

    aput-object v1, v0, v5

    const-string v1, "\u7b2c\u56db\u4e2a"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u7b2c\u4e94\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7b2c\u516d\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7b2c\u4e03\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7b2c\u516b\u4e2a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7b2c\u4e5d\u4e2a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7b2c\u5341\u4e2a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T3:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u6700\u524d\u9762\u90a3\u4e2a"

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T2:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u6700\u540e\u4e00\u4e2a"

    aput-object v1, v0, v3

    const-string v1, "\u6700\u540e\u90a3\u4e2a"

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TN:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    return-void
.end method

.method public static T()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.start"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/T$Te;)V
    .locals 7

    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "cmds"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->genKeywords()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->needTts()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "tts"

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_0
    const-string v2, "state"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->needAsrState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v2, "taskId"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v2, "priority"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.asr.useWakeupAsAsr"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static T(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.startWithRecordWin"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T(Ljava/lang/String;[B)V
    .locals 8

    const-string v4, "regnotify"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    if-eqz v4, :cond_0

    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    sget-object v6, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    const-string v4, "cmd"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "data"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/txznet/comm/T3/T/T$TN;->T(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    if-nez v4, :cond_2

    const-string v4, "AsrUtil"

    const-string v5, "mAsrCallBack == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "success"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/txznet/comm/T3/T/T$T2;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "cancel"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T()V

    goto :goto_0

    :cond_4
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T3()V

    goto :goto_0

    :cond_5
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T2()V

    goto :goto_0

    :cond_6
    const-string v4, "abort"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/txznet/comm/T3/T/T$T2;->T3(I)V

    goto :goto_0

    :cond_7
    const-string v4, "error"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4, v1}, Lcom/txznet/comm/T3/T/T$T2;->T(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AsrUtil"

    const-string v5, "convert string to int error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v4, "volume"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_2
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4, v3}, Lcom/txznet/comm/T3/T/T$T2;->T2(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v4, "AsrUtil"

    const-string v5, "convert string to int error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static T([Ljava/lang/String;)V
    .locals 10

    sget-object v6, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    monitor-enter v6

    move-object v0, p0

    :try_start_0
    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    sget-object v5, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v5, "cmds"

    invoke-virtual {v3, v5, p0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "comm.asr.unregcmd"

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public static T([Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/T$TN;)V
    .locals 10

    sget-object v6, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    monitor-enter v6

    move-object v0, p0

    :try_start_0
    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    sget-object v5, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object p2, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v5, "cmds"

    invoke-virtual {v3, v5, p0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v5, "data"

    invoke-virtual {v3, v5, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "comm.asr.regcmd"

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    sget-object v5, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    new-instance v5, Lcom/txznet/comm/T3/T/T$1;

    invoke-direct {v5}, Lcom/txznet/comm/T3/T/T$1;-><init>()V

    sput-object v5, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    sget-object v7, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public static T2()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.cancel"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T2(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    const-string v3, "taskId"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/T$Te;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/T$Te;->onTtsEnd()V

    :cond_0
    return-void
.end method

.method public static T3()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.stop"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static T3(Ljava/lang/String;)V
    .locals 6

    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    const-string v3, "taskId"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/T$Te;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->setIsFromCore(Z)V

    const-string v3, "isWakeupResult"

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->setIsWakeupResult(Z)V

    const-string v3, "text"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->onAsrResult(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static TN()V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static TN(Ljava/lang/String;)V
    .locals 5

    sget-object v1, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.recoverWakeupFromAsr"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Te()V
    .locals 0

    return-void
.end method

.method public static Tw()V
    .locals 2

    const-string v0, "comm.asr."

    new-instance v1, Lcom/txznet/comm/T3/T/T$3;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/T$3;-><init>()V

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    return-void
.end method

.method static synthetic Ty()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    return-object v0
.end method
