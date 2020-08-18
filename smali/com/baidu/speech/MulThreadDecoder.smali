.class Lcom/baidu/speech/MulThreadDecoder;
.super Lcom/baidu/speech/AbsStreamDecoder;
.source "MulThreadDecoder.java"


# static fields
.field private static final NETWORK_TIMEOUT:I = 0x1f40


# instance fields
.field private mClient:Landroid/net/http/AndroidHttpClient;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFutureResults:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/baidu/speech/HttpCallable$Result;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIdx:I

.field private tok:Ljava/lang/String;

.field private usingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/baidu/speech/AbsStreamDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/MulThreadDecoder;->mFutureResults:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private callable(ILjava/util/HashMap;[BIIZ)Lcom/baidu/speech/HttpCallable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[BIIZ)",
            "Lcom/baidu/speech/HttpCallable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v1, p0, Lcom/baidu/speech/MulThreadDecoder;->mIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/speech/MulThreadDecoder;->mIdx:I

    if-eqz p6, :cond_0

    const/4 v1, -0x1

    :goto_0
    mul-int v6, v2, v1

    new-array v3, p5, [B

    const/4 v1, 0x0

    invoke-static {p3, p4, v3, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/baidu/speech/HttpCallable;

    iget-object v2, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    iget-object v5, p0, Lcom/baidu/speech/MulThreadDecoder;->mGlb:Ljava/lang/String;

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/speech/HttpCallable;-><init>(ILorg/apache/http/client/HttpClient;[BLjava/util/Map;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needParseMoreResult()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    iget-object v3, p0, Lcom/baidu/speech/MulThreadDecoder;->mFutureResults:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    iget-object v3, p0, Lcom/baidu/speech/MulThreadDecoder;->mFutureResults:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/speech/HttpCallable$Result;

    new-instance v3, Lcom/baidu/speech/Parser;

    invoke-direct {v3}, Lcom/baidu/speech/Parser;-><init>()V

    iget-object v4, v2, Lcom/baidu/speech/HttpCallable$Result;->response:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/speech/Parser;->parse(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    move-result-object v1

    iget v3, v2, Lcom/baidu/speech/HttpCallable$Result;->tid:I

    invoke-virtual {v1, v3}, Lcom/baidu/speech/Results$Result;->setId(I)V

    invoke-virtual {p0, v1}, Lcom/baidu/speech/MulThreadDecoder;->appendResult(Lcom/baidu/speech/Results$Result;)V

    instance-of v3, v1, Lcom/baidu/speech/Results$FinalResult;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/baidu/speech/MulThreadDecoder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/speech/MulThreadDecoder;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leak found, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created and never closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected onCreate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x1f40

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    const-string v7, "decoder-server.url"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->usingUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    const-string v7, "decoder-server.auth"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/speech/TokenCallable;

    iget-object v8, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    iget-object v9, p0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v7, v8, v9}, Lcom/baidu/speech/TokenCallable;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/baidu/speech/MulThreadDecoder;->tok:Ljava/lang/String;

    :cond_1
    return-void

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_2
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#2, Other network related errors., unknown host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected onDestroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    iget-object v0, p0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected onExecute(I[Ljava/io/InputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onExecute "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, p2, v2

    if-nez v2, :cond_2

    const/4 v13, 0x1

    :goto_0
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    const-string v3, "decoder-server.auth"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v2, "decoder-server.url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/speech/MulThreadDecoder;->usingUrl:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/baidu/speech/TokenCallable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/speech/MulThreadDecoder;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v3, v6, v8}, Lcom/baidu/speech/TokenCallable;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v2, "decoder-server.tok"

    move-object/from16 v0, v17

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    new-array v5, v2, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/speech/MulThreadDecoder;->callable(ILjava/util/HashMap;[BIIZ)Lcom/baidu/speech/HttpCallable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mFutureResults:Ljava/util/LinkedList;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/baidu/speech/MulThreadDecoder;->needParseMoreResult()Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    :goto_2
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "#2, Other network related errors."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/baidu/speech/Bv32InputStream;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/speech/MulThreadDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    throw v2

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    aget-object v2, p2, v2

    if-nez v2, :cond_9

    const/4 v13, 0x1

    :goto_4
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mParams:Ljava/util/Map;

    const-string v3, "decoder-server.auth"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v2, "decoder-server.url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/speech/MulThreadDecoder;->usingUrl:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_4

    const-string v2, "decoder-server.tok"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/speech/MulThreadDecoder;->tok:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v16, Lcom/baidu/speech/Bv32InputStream;

    const/4 v2, 0x0

    aget-object v3, p2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/speech/MulThreadDecoder;->sample:I

    if-nez p1, :cond_a

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-direct {v0, v3, v6, v2}, Lcom/baidu/speech/Bv32InputStream;-><init>(Ljava/io/InputStream;IZ)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/MulThreadDecoder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v7, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mIdx:I

    if-nez v2, :cond_6

    const/16 v10, 0x7d4

    :cond_6
    new-array v5, v10, [B

    if-nez v13, :cond_7

    :goto_6
    array-length v2, v5

    if-ge v7, v2, :cond_7

    array-length v2, v5

    sub-int/2addr v2, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7, v2}, Lcom/baidu/speech/Bv32InputStream;->read([BII)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_b

    const/4 v2, 0x1

    :goto_7
    or-int/2addr v13, v2

    if-gez v18, :cond_c

    :cond_7
    if-gtz v7, :cond_8

    if-eqz v13, :cond_e

    :cond_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/speech/MulThreadDecoder;->callable(ILjava/util/HashMap;[BIIZ)Lcom/baidu/speech/HttpCallable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/MulThreadDecoder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v11}, Lcom/baidu/speech/HttpCallable;->isReady()Z

    move-result v2

    if-nez v2, :cond_d

    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_8

    :catch_1
    move-exception v12

    move-object/from16 v15, v16

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    add-int v7, v7, v18

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->mFutureResults:Ljava/util/LinkedList;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onExecute |||| "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", idx="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/speech/MulThreadDecoder;->mIdx:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " eof="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/baidu/speech/MulThreadDecoder;->needParseMoreResult()Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_5

    move-object/from16 v15, v16

    :cond_f
    :goto_9
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lcom/baidu/speech/Bv32InputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/speech/MulThreadDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_10
    return-void

    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    goto/16 :goto_3

    :cond_11
    move-object/from16 v15, v16

    goto :goto_9
.end method
