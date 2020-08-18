.class abstract Lcom/baidu/speech/AbsStreamDecoder;
.super Ljava/lang/Object;
.source "AbsStreamDecoder.java"

# interfaces
.implements Lcom/baidu/speech/AsrSession$Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/AbsStreamDecoder$Task;,
        Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "decoder"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private volatile closed:Z

.field protected final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private futures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field protected final logger:Ljava/util/logging/Logger;

.field private mDebugPcmOut:Ljava/io/OutputStream;

.field protected final mGlb:Ljava/lang/String;

.field protected final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final results:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/baidu/speech/Results$Result;",
            ">;"
        }
    .end annotation
.end field

.field protected final sample:I

.field private usingStreamId:I

.field private usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/speech/AbsStreamDecoder$1;

    invoke-direct {v0}, Lcom/baidu/speech/AbsStreamDecoder$1;-><init>()V

    sput-object v0, Lcom/baidu/speech/AbsStreamDecoder;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v6, "decoder"

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->logger:Ljava/util/logging/Logger;

    iput-boolean v7, p0, Lcom/baidu/speech/AbsStreamDecoder;->closed:Z

    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->results:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput v7, p0, Lcom/baidu/speech/AbsStreamDecoder;->usingStreamId:I

    iput-object p1, p0, Lcom/baidu/speech/AbsStreamDecoder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/speech/AbsStreamDecoder;->mParams:Ljava/util/Map;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->mGlb:Ljava/lang/String;

    const-string v6, "audio.sample"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->sample:I

    sget-object v6, Lcom/baidu/speech/AbsStreamDecoder;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v6, "debug.output-dir"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "basic.runtime-name"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "basic.task-name"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "debug.debug"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".cut.pcm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    :cond_0
    iget-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->logger:Ljava/util/logging/Logger;

    const-string v7, "created debug-dir"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;-><init>(Lcom/baidu/speech/AbsStreamDecoder;Lcom/baidu/speech/AbsStreamDecoder$1;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v7, p0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private checkFutures()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v3, p0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method protected final appendResult(Lcom/baidu/speech/Results$Result;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "append result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->logger:Ljava/util/logging/Logger;

    const-string v1, "someone appended null result!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->results:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/speech/AbsStreamDecoder;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/speech/AbsStreamDecoder;->closed:Z

    iget-object v1, p0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/baidu/speech/AbsStreamDecoder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->closed:Z

    return v0
.end method

.method protected abstract onCreate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onDestroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onExecute(I[Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read()Lcom/baidu/speech/Results$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/baidu/speech/AbsStreamDecoder;->checkFutures()V

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder;->results:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/Results$Result;

    return-object v0
.end method

.method public final write([BIILcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/baidu/speech/AbsStreamDecoder;->checkFutures()V

    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-eq v0, v14, :cond_0

    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Resume:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-ne v0, v14, :cond_1

    :cond_0
    new-instance v15, Lcom/baidu/speech/AbsStreamDecoder$Task;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingStreamId:I

    move/from16 v16, v0

    add-int/lit8 v14, v16, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingStreamId:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/baidu/speech/MergedDecoder;

    if-eqz v14, :cond_3

    const/4 v14, 0x2

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v15, v0, v1, v2, v14}, Lcom/baidu/speech/AbsStreamDecoder$Task;-><init>(Lcom/baidu/speech/AbsStreamDecoder;IZI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    invoke-interface {v14, v15}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    if-lez p3, :cond_5

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    invoke-virtual {v14}, Lcom/baidu/speech/AbsStreamDecoder$Task;->getOutputStreams()[Ljava/io/OutputStream;

    move-result-object v12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    array-length v14, v12

    if-ge v7, v14, :cond_4

    aget-object v11, v12, v7

    if-eqz v11, :cond_2

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->logger:Ljava/util/logging/Logger;

    const-string v15, "%s, OutputStream[%d] closed: %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v14, 0x0

    aput-object v14, v12, v9

    goto :goto_3

    :cond_5
    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Pause:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-eq v0, v14, :cond_6

    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-ne v0, v14, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    invoke-virtual {v14}, Lcom/baidu/speech/AbsStreamDecoder$Task;->getOutputStreams()[Ljava/io/OutputStream;

    move-result-object v12

    move-object v3, v12

    array-length v10, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_8

    aget-object v11, v3, v8

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    :cond_9
    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-ne v0, v14, :cond_a

    new-instance v15, Lcom/baidu/speech/AbsStreamDecoder$Task;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingStreamId:I

    move/from16 v16, v0

    add-int/lit8 v14, v16, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingStreamId:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/baidu/speech/MergedDecoder;

    if-eqz v14, :cond_c

    const/4 v14, 0x2

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v15, v0, v1, v2, v14}, Lcom/baidu/speech/AbsStreamDecoder$Task;-><init>(Lcom/baidu/speech/AbsStreamDecoder;IZI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->usingTask:Lcom/baidu/speech/AbsStreamDecoder$Task;

    invoke-interface {v14, v15}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v15

    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    sget-object v14, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, p4

    if-ne v0, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/AbsStreamDecoder;->mDebugPcmOut:Ljava/io/OutputStream;

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_b
    return-void

    :cond_c
    const/4 v14, 0x1

    goto :goto_5

    :catchall_1
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14
.end method
