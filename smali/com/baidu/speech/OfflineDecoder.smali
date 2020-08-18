.class public Lcom/baidu/speech/OfflineDecoder;
.super Lcom/baidu/speech/AbsStreamDecoder;
.source "OfflineDecoder.java"


# static fields
.field private static mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;


# instance fields
.field private lastDecodeJSONString:Ljava/lang/String;

.field private mDecodeFinished:Z

.field private mEngineStarted:Z

.field private final protocol:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
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
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/speech/AbsStreamDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-boolean v0, p0, Lcom/baidu/speech/OfflineDecoder;->mEngineStarted:Z

    iput-boolean v0, p0, Lcom/baidu/speech/OfflineDecoder;->mDecodeFinished:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/OfflineDecoder;->lastDecodeJSONString:Ljava/lang/String;

    const-string v0, "decoder-server.ptc"

    invoke-static {p2, v0}, Lcom/baidu/speech/OfflineDecoder;->getIntOrThrow(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/speech/OfflineDecoder;->protocol:I

    invoke-static {p2}, Lcom/baidu/speech/OfflineDecoder;->verifyParams(Ljava/util/Map;)V

    return-void
.end method

.method private byteArrayToShortArray([BI)[S
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [S

    :goto_0
    return-object v0

    :cond_1
    div-int/lit8 v1, p2, 0x2

    new-array v0, v1, [S

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public static check(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/baidu/speech/OfflineDecoder;->verifyParams(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateEASRParams(Ljava/util/Map;)Lcom/baidu/speech/easr/EASRParams;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/speech/easr/EASRParams;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/baidu/speech/easr/EASRParams;

    invoke-direct {v0}, Lcom/baidu/speech/easr/EASRParams;-><init>()V

    const-string v3, "decoder-offline.asr-base-file-path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    const-string v3, "decoder-offline.lm-res-file-path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    const-string v3, "decoder-offline.license-file-path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/speech/easr/EASRParams;->licenseFilePath:Ljava/lang/String;

    const-string v3, "decoder-offline.enable-punctuation"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput v3, v0, Lcom/baidu/speech/easr/EASRParams;->imePunctuationOn:I

    const-string v3, "decoder-offline.prop"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/baidu/speech/easr/EASRParams;->prop:I

    const-string v3, "decoder-offline.slot-data"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/baidu/speech/easr/EASRParams;->slotData:Lorg/json/JSONObject;

    :cond_0
    return-object v0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v6, "%s, reason: #%d, prop not set"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "#5, Other client side errors."

    aput-object v8, v7, v5

    const/16 v5, 0x1b90

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getIntOrThrow(Ljava/util/Map;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "%s, reason: key %s not found"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#5, Other client side errors."

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static isLanguageSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cmn-Hans-CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isPropSupported(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x2713 -> :sswitch_0
        0x2718 -> :sswitch_0
        0x274c -> :sswitch_0
        0x4e20 -> :sswitch_0
        0x186ae -> :sswitch_0
        0x186b0 -> :sswitch_0
        0x186b2 -> :sswitch_0
        0x186b3 -> :sswitch_0
        0x186b4 -> :sswitch_0
        0x186b5 -> :sswitch_0
    .end sparse-switch
.end method

.method private needParseMoreResult(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq p1, v6, :cond_0

    const/16 v5, 0x8

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bdeasrRec decode error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v5, p1}, Lcom/baidu/speech/easr/EmbeddedASREngine;->addOneRecord(I)V

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "%s, reason: #%d, recognize error."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "#5, Other client side errors."

    aput-object v7, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-ne p1, v6, :cond_4

    sget-object v5, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getJSONResult()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/baidu/speech/OfflineDecoder;->lastDecodeJSONString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    iput-object v0, p0, Lcom/baidu/speech/OfflineDecoder;->lastDecodeJSONString:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/Parser;->parseConfidence(Ljava/lang/String;)D

    move-result-wide v6

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "%s, reason: %d, no confidence."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "#7, No recognition result matched."

    aput-object v7, v2, v4

    const/16 v4, 0x1f3e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v2, Lcom/baidu/speech/Parser;

    invoke-direct {v2}, Lcom/baidu/speech/Parser;-><init>()V

    invoke-virtual {v2, v0, v4}, Lcom/baidu/speech/Parser;->parseOffline(Ljava/lang/String;I)Lcom/baidu/speech/Results$Result;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/baidu/speech/OfflineDecoder;->appendResult(Lcom/baidu/speech/Results$Result;)V

    :cond_3
    iget-object v2, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bdeasrRec OK, partial result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getJSONResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/OfflineDecoder;->lastDecodeJSONString:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/Parser;->parseConfidence(Ljava/lang/String;)D

    move-result-wide v6

    cmpg-double v5, v6, v8

    if-gez v5, :cond_5

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "%s, reason: %d, no confidence."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "#7, No recognition result matched."

    aput-object v7, v2, v4

    const/16 v4, 0x1f3e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Lcom/baidu/speech/Parser;

    invoke-direct {v5}, Lcom/baidu/speech/Parser;-><init>()V

    iget v6, p0, Lcom/baidu/speech/OfflineDecoder;->protocol:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_6

    :goto_1
    invoke-virtual {v5, v0, v2}, Lcom/baidu/speech/Parser;->parseOffline(Ljava/lang/String;I)Lcom/baidu/speech/Results$Result;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/speech/OfflineDecoder;->appendResult(Lcom/baidu/speech/Results$Result;)V

    iget-object v2, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bdeasrRec get final result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v2, v4}, Lcom/baidu/speech/easr/EmbeddedASREngine;->addOneRecord(I)V

    iput-boolean v3, p0, Lcom/baidu/speech/OfflineDecoder;->mDecodeFinished:Z

    move v3, v4

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private static verifyParams(Ljava/util/Map;)V
    .locals 10
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
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "audio.sample"

    invoke-static {p0, v3}, Lcom/baidu/speech/OfflineDecoder;->getIntOrThrow(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3e80

    if-eq v3, v2, :cond_0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "%s, reason: #%d, sample rate %d not supported"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "#5, Other client side errors."

    aput-object v6, v5, v7

    const/16 v6, 0x1b91

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "decoder-offline.prop"

    invoke-static {p0, v3}, Lcom/baidu/speech/OfflineDecoder;->getIntOrThrow(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/baidu/speech/OfflineDecoder;->isPropSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "%s, reason: #%d, prop %d not supported"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "#5, Other client side errors."

    aput-object v6, v5, v7

    const/16 v6, 0x1b92

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v3, "decoder-offline.language"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/OfflineDecoder;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "%s, reason: #%d, language %s not supported"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "#5, Other client side errors."

    aput-object v6, v5, v7

    const/16 v6, 0x1b94

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/OfflineDecoder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/EmbeddedASREngine;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    return-void
.end method

.method protected onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected onExecute(I[Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OfflineDecoder.onExecute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/baidu/speech/OfflineDecoder;->mEngineStarted:Z

    if-nez v8, :cond_1

    new-instance v4, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v8, "basic.appid"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-direct {p0, v4}, Lcom/baidu/speech/OfflineDecoder;->generateEASRParams(Ljava/util/Map;)Lcom/baidu/speech/easr/EASRParams;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/baidu/speech/easr/EmbeddedASREngine;->startRecognizing(Lcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->addOneRecord(I)V

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "%s, reason: #%d, startRecognizing error."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "#5, Other client side errors."

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/baidu/speech/OfflineDecoder;->mEngineStarted:Z

    :cond_1
    :try_start_0
    iget-boolean v8, p0, Lcom/baidu/speech/OfflineDecoder;->mDecodeFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, p2, v8

    if-nez v8, :cond_7

    const/16 v8, 0x200

    new-array v1, v8, [S

    const/4 v8, 0x0

    invoke-static {v1, v8}, Ljava/util/Arrays;->fill([SS)V

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    const/4 v9, 0x0

    array-length v10, v1

    const/4 v11, 0x1

    invoke-virtual {v8, v1, v9, v10, v11}, Lcom/baidu/speech/easr/EmbeddedASREngine;->newAudioData([SIII)I

    move-result v5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    const-string v9, "newAudioData[bdeasrFront] eof: %b ret: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v8, 0x7

    if-eq v5, v8, :cond_5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newAudioData[bdeasrFront] error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->addOneRecord(I)V

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "%s, reason: #%d, newAudioData error."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "#5, Other client side errors."

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    const/4 v9, 0x0

    aget-object v9, p2, v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v8

    :cond_5
    :try_start_2
    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->recognize()I

    move-result v5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recognize[bdeasRec] ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/baidu/speech/OfflineDecoder;->needParseMoreResult(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_6

    const/4 v8, 0x0

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_6
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/speech/OfflineDecoder;->isClosed()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v3, :cond_b

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->recognize()I

    move-result v5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recognize[bdeasRec] ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/baidu/speech/OfflineDecoder;->needParseMoreResult(I)Z

    move-result v3

    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/speech/OfflineDecoder;->isClosed()Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v2, 0x0

    const/16 v8, 0x400

    new-array v1, v8, [B

    :goto_2
    array-length v8, v1

    if-ge v2, v8, :cond_8

    const/4 v8, 0x0

    aget-object v8, p2, v8

    array-length v9, v1

    sub-int/2addr v9, v2

    invoke-virtual {v8, v1, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_9

    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/OfflineDecoder;->byteArrayToShortArray([BI)[S

    move-result-object v6

    array-length v8, v6

    if-lez v8, :cond_a

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    const/4 v9, 0x0

    array-length v10, v6

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v10, v11}, Lcom/baidu/speech/easr/EmbeddedASREngine;->newAudioData([SIII)I

    move-result v5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    const-string v9, "newAudioData[bdeasrFront] short: %d eof: %b ret: %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v8, 0x7

    if-eq v5, v8, :cond_a

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newAudioData[bdeasrFront] error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->addOneRecord(I)V

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "%s, reason: #%d, newAudioData error."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "#5, Other client side errors."

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    add-int/2addr v2, v7

    goto :goto_2

    :cond_a
    sget-object v8, Lcom/baidu/speech/OfflineDecoder;->mEngine:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-virtual {v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->recognize()I

    move-result v5

    iget-object v8, p0, Lcom/baidu/speech/OfflineDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recognize[bdeasRec] ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/baidu/speech/OfflineDecoder;->needParseMoreResult(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    :goto_3
    const/4 v8, 0x0

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_c
    :try_start_4
    array-length v8, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v2, v8, :cond_7

    goto :goto_3
.end method

.method public bridge synthetic read()Lcom/baidu/speech/Results$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lcom/baidu/speech/AbsStreamDecoder;->read()Lcom/baidu/speech/Results$Result;

    move-result-object v0

    return-object v0
.end method
