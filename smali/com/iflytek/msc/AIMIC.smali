.class public Lcom/iflytek/msc/AIMIC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/AIMIC$Listener;
    }
.end annotation


# static fields
.field public static final DEF_LIBNAME_C:Ljava/lang/String; = "aimic"

.field public static final INVALID_HANDLER:J = 0x0L

.field private static final VAL_SEP:Ljava/lang/String; = ";"

.field private static sHandler:J

.field private static sIsLoaded:Z

.field private static sSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/iflytek/msc/AIMIC;->sHandler:J

    sget-wide v0, Lcom/iflytek/msc/AIMIC;->sHandler:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AIMICAudioWrite(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICDebugLog(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICDestroy(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetChannel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetParam(J[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICGetVersion()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICNew([BLcom/iflytek/msc/AIMIC$Listener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICResetEng(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static native AIMICSetParam(J[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static getHandler()J
    .locals 2

    sget-wide v0, Lcom/iflytek/msc/AIMIC;->sHandler:J

    return-wide v0
.end method

.method public static isLoaded()Z
    .locals 2

    sget-object v1, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isValid()Z
    .locals 6

    sget-object v1, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    sget-wide v4, Lcom/iflytek/msc/AIMIC;->sHandler:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v2, Lcom/iflytek/msc/AIMIC;->sSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aimic"

    aput-object v4, v1, v3

    :goto_0
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/msc/AIMIC;->sIsLoaded:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
