.class Lcom/baidu/speech/TokenCallable;
.super Ljava/lang/Object;
.source "TokenCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenCallable"

.field private static final logger:Ljava/util/logging/Logger;

.field private static sOldKeySecretCode:Ljava/lang/String;

.field private static sOldToken:Ljava/lang/String;

.field private static sTokenExpireTime:J


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final key:Ljava/lang/String;

.field private final mForceRefresh:Z

.field private final mKeySecretCode:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TokenCallable"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v2, "decoder-server.key"

    invoke-direct {p0, p2, v2}, Lcom/baidu/speech/TokenCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/speech/TokenCallable;->key:Ljava/lang/String;

    const-string v2, "decoder-server.secret"

    invoke-direct {p0, p2, v2}, Lcom/baidu/speech/TokenCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/speech/TokenCallable;->secret:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/speech/TokenCallable;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/speech/TokenCallable;->secret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/speech/TokenCallable;->mKeySecretCode:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "basic.refresh-token"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/speech/TokenCallable;->mForceRefresh:Z

    :goto_0
    const-string v2, "https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials&client_id=%s&client_secret=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/speech/TokenCallable;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/speech/TokenCallable;->secret:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/speech/TokenCallable;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p1, p0, Lcom/baidu/speech/TokenCallable;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/speech/TokenCallable;->mForceRefresh:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can\'t create TokenCallable instance"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/speech/TokenCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    sget-object v11, Lcom/baidu/speech/TokenCallable;->sOldToken:Ljava/lang/String;

    if-nez v11, :cond_0

    const/4 v8, 0x1

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "token not found, so request token"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    if-eqz v8, :cond_5

    :try_start_1
    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "token requesting..."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/speech/TokenCallable;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/speech/TokenCallable;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v13, Lcom/baidu/speech/TokenCallable$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/baidu/speech/TokenCallable$1;-><init>(Lcom/baidu/speech/TokenCallable;)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "GET %s \n\t%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/TokenCallable;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "access_token"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "access_token"

    const-string v12, "unknown"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "error_description"

    const-string v12, "unknown"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#5, Other client side errors. request token failed, error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", desc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", used AK="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/TokenCallable;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/TokenCallable;->secret:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "GET %s\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/TokenCallable;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_1
    move-exception v3

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#1, Network operation timed out. request token failed, socket timeout"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/baidu/speech/TokenCallable;->mForceRefresh:Z

    if-eqz v11, :cond_1

    const/4 v8, 0x1

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "need refresh token, so request token"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    :catch_2
    move-exception v3

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#1, Network operation timed out. request token failed, connect timeout"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sget-wide v14, Lcom/baidu/speech/TokenCallable;->sTokenExpireTime:J

    cmp-long v11, v12, v14

    if-ltz v11, :cond_2

    const/4 v8, 0x1

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "token expired, so request token"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v9

    const/16 v11, 0x1f4

    if-lt v9, v11, :cond_6

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#4, Server sends error status. server exception"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_2
    :try_start_5
    sget-object v11, Lcom/baidu/speech/TokenCallable;->sOldKeySecretCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/speech/TokenCallable;->mKeySecretCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v8, 0x1

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "key or secret has been switched, so request token"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v3

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#2, Other network related errors. request token failed"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_3
    :try_start_6
    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "token is available, skip request token"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v3

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#2, Other network related errors. request token failed"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_4
    :try_start_7
    const-string v11, "access_token"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "expires_in"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    int-to-long v14, v6

    const-wide/32 v16, 0x15180

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    sput-wide v12, Lcom/baidu/speech/TokenCallable;->sTokenExpireTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/speech/TokenCallable;->mKeySecretCode:Ljava/lang/String;

    sput-object v11, Lcom/baidu/speech/TokenCallable;->sOldKeySecretCode:Ljava/lang/String;

    sput-object v10, Lcom/baidu/speech/TokenCallable;->sOldToken:Ljava/lang/String;

    sget-object v11, Lcom/baidu/speech/TokenCallable;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "GET %s \n\t%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/TokenCallable;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_1
    return-object v10

    :cond_5
    :try_start_8
    sget-object v10, Lcom/baidu/speech/TokenCallable;->sOldToken:Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    :cond_6
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "#2, Other network related errors. request token failed"

    invoke-direct {v11, v12, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method
