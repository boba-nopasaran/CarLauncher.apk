.class Lcom/baidu/speech/Console;
.super Ljava/lang/Object;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/Console$Msg;,
        Lcom/baidu/speech/Console$Session;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Console"

.field public static final TYPE_ASR_MSG_AUDIO:Ljava/lang/String; = "asr.audio"

.field public static final TYPE_ASR_MSG_BEGIN:Ljava/lang/String; = "asr.begin"

.field public static final TYPE_ASR_MSG_END:Ljava/lang/String; = "asr.end"

.field public static final TYPE_ASR_MSG_ENGINE_TYPE:Ljava/lang/String; = "asr.engine"

.field public static final TYPE_ASR_MSG_ENTER:Ljava/lang/String; = "enter"

.field public static final TYPE_ASR_MSG_EVENT_ERROR:Ljava/lang/String; = "asr.event_error"

.field public static final TYPE_ASR_MSG_EXIT:Ljava/lang/String; = "exit"

.field public static final TYPE_ASR_MSG_FINISH:Ljava/lang/String; = "asr.finish"

.field public static final TYPE_ASR_MSG_PARTIAL:Ljava/lang/String; = "asr.partial"

.field public static final TYPE_ASR_MSG_READY:Ljava/lang/String; = "asr.ready"

.field public static final TYPE_ASR_MSG_VOLUME:Ljava/lang/String; = "asr.volume"

.field public static final TYPE_WP_MSG_ENTER:Ljava/lang/String; = "enter"

.field public static final TYPE_WP_MSG_EXIT:Ljava/lang/String; = "exit"

.field public static final TYPE_WP_MSG_FRAME:Ljava/lang/String; = "wp.frame"

.field public static final TYPE_WP_MSG_REAY:Ljava/lang/String; = "wp.ready"

.field public static final TYPE_WP_MSG_WAKEUP:Ljava/lang/String; = "wp.wakeup"

.field private static lastGroup:I

.field private static final logger:Ljava/util/logging/Logger;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mConsoleGroup:I

.field private final mExs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Console"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/Console;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/speech/Console;->lastGroup:I

    new-instance v0, Lcom/baidu/speech/Console$1;

    invoke-direct {v0}, Lcom/baidu/speech/Console$1;-><init>()V

    sput-object v0, Lcom/baidu/speech/Console;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    sget v0, Lcom/baidu/speech/Console;->lastGroup:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/speech/Console;->lastGroup:I

    iput v0, p0, Lcom/baidu/speech/Console;->mConsoleGroup:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/speech/Console;->mTaskIndex:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/Console;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cid()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/Console;->mConsoleGroup:I

    return v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Console;->context:Landroid/content/Context;

    return-object v0
.end method

.method public enter(Ljava/lang/String;)Lcom/baidu/speech/Console$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "asr"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/speech/Console;->enter(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/Console$Session;

    move-result-object v0

    return-object v0
.end method

.method public enter(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/Console$Session;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/baidu/speech/Console;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "====== enter ======\n\n"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/speech/Console;->mTaskIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/speech/Console;->mTaskIndex:I

    const/4 v1, 0x0

    const-string v2, "wp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/Console;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_1
    new-instance v1, Lcom/baidu/speech/AsrSession;

    invoke-direct {v1, p0, p2}, Lcom/baidu/speech/AsrSession;-><init>(Lcom/baidu/speech/Console;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v2, p0, Lcom/baidu/speech/Console;->mExs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
