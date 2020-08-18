.class public final Lcom/baidu/speech/MergedDecoder;
.super Lcom/baidu/speech/AbsStreamDecoder;
.source "MergedDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/MergedDecoder$MessageResult;
    }
.end annotation


# static fields
.field private static final ADD_NOTICE_FREQ:I = 0x14

.field private static final DECODER_ID_OFFLINE:I = 0x1

.field private static final DECODER_ID_ONLINE:I

.field private static mDecodeCount:I


# instance fields
.field private final mCachedStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

.field private mLockedResult:Lcom/baidu/speech/Results$Result;

.field private final mSwitchLock:Ljava/lang/Object;

.field private final mTempLicenseNotice:Ljava/lang/String;

.field private final preferredDecoder:I

.field private final secondaryDecoder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
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

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/baidu/speech/AbsStreamDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    new-array v4, v6, [B

    iput-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mSwitchLock:Ljava/lang/Object;

    const-string v4, "decoder-merge.preferred"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    :goto_0
    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    if-nez v4, :cond_2

    :goto_1
    iput v5, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    const-string v4, "decoder-offline.license-file-path"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "basic.appid"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget v4, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    rem-int/lit8 v4, v4, 0x14

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/EmbeddedASREngine;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/baidu/speech/easr/EmbeddedASREngine;->isTrialLicense(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/EmbeddedASREngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getTrialPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mTempLicenseNotice:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    const-string v4, "decoder-offline.prop"

    const/16 v7, 0x2715

    invoke-static {p2, v4, v7}, Lcom/baidu/speech/MergedDecoder;->getIntOrThrow(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/baidu/speech/MergedDecoder;->isPropPreferOffline(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_3
    iput v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_3

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    const-string v4, ""

    iput-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mTempLicenseNotice:Ljava/lang/String;

    goto :goto_2
.end method

.method private clearCachedStreams()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v3, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    invoke-virtual {v3}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v0

    goto :goto_0

    :cond_2
    return v0
.end method

.method private declared-synchronized createOfflineDecoderIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/baidu/speech/MergedDecoder$MessageResult;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "engine_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/speech/MergedDecoder$MessageResult;-><init>(Lcom/baidu/speech/MergedDecoder;Lorg/json/JSONObject;I)V

    invoke-virtual {p0, v1}, Lcom/baidu/speech/MergedDecoder;->appendResult(Lcom/baidu/speech/Results$Result;)V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v0, Lcom/baidu/speech/OfflineDecoder;

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/speech/MergedDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/OfflineDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lcom/baidu/speech/OfflineDecoder;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized createOnlineDecoderIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/baidu/speech/MergedDecoder$MessageResult;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "engine_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/speech/MergedDecoder$MessageResult;-><init>(Lcom/baidu/speech/MergedDecoder;Lorg/json/JSONObject;I)V

    invoke-virtual {p0, v1}, Lcom/baidu/speech/MergedDecoder;->appendResult(Lcom/baidu/speech/Results$Result;)V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v0, Lcom/baidu/speech/MulThreadDecoder;

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/baidu/speech/MulThreadDecoder;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lcom/baidu/speech/MulThreadDecoder;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getIntOrThrow(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 6

    const-string v0, "#7, No recognition result matched."

    move-object v3, p1

    const-string v4, "^#(\\d+)[\t]*,.+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    :goto_0
    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0
.end method

.method private static isPropPreferOffline(I)Z
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
        0x186ae -> :sswitch_0
        0x186b0 -> :sswitch_0
        0x186b2 -> :sswitch_0
        0x186b3 -> :sswitch_0
        0x186b4 -> :sswitch_0
        0x186b5 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/speech/AbsStreamDecoder;

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v1, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/Utility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "%s. network unavailable."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2, Other network related errors."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulThreadDecoder onCreate Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/MergedDecoder;->mSwitchLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/baidu/speech/AbsStreamDecoder;->close()V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mParams:Ljava/util/Map;

    invoke-static {v1}, Lcom/baidu/speech/OfflineDecoder;->check(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOfflineDecoderIfNeeded()V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOnlineDecoderIfNeeded()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/speech/MergedDecoder;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(cannot switch to offline: params not supported.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOfflineDecoderIfNeeded()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OfflineDecoder onCreate Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/MergedDecoder;->mSwitchLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/baidu/speech/AbsStreamDecoder;->close()V

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    :cond_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v1, p0, Lcom/baidu/speech/MergedDecoder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/Utility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOnlineDecoderIfNeeded()V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/speech/MergedDecoder;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(cannot switch to online: network unavailable.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/speech/AbsStreamDecoder;->close()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected onExecute(I[Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MergedDecoder.onExecute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->clearCachedStreams()I

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v6, p2, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v4, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/InputStream;

    const/4 v6, 0x0

    iget v7, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v7, p2, v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/baidu/speech/AbsStreamDecoder;->onExecute(I[Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mSwitchLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/baidu/speech/AbsStreamDecoder;->close()V

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    const/4 v7, 0x0

    aput-object v7, v4, v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    const-string v6, "%s asr Exception: %s"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    if-nez v4, :cond_2

    const-string v4, "Online"

    :goto_1
    aput-object v4, v7, v8

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mParams:Ljava/util/Map;

    invoke-static {v4}, Lcom/baidu/speech/OfflineDecoder;->check(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOfflineDecoderIfNeeded()V

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/baidu/speech/MergedDecoder;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(cannot switch to offline: params not supported.)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    const-string v4, "Offline"

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/voicerecognition/android/Utility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->createOnlineDecoderIfNeeded()V

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(cannot switch to online: network unavailable.)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/baidu/speech/MergedDecoder;->clearCachedStreams()I

    move-result v2

    :goto_4
    if-gt v2, p1, :cond_0

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mCachedStreams:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v4, v4, v5

    new-array v5, v9, [Ljava/io/InputStream;

    aput-object v3, v5, v8

    invoke-virtual {v4, v2, v5}, Lcom/baidu/speech/AbsStreamDecoder;->onExecute(I[Ljava/io/InputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v4, p2, v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v4, p2, v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v5, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v4, v4, v5

    new-array v5, v9, [Ljava/io/InputStream;

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v6, p2, v6

    aput-object v6, v5, v8

    invoke-virtual {v4, p1, v5}, Lcom/baidu/speech/AbsStreamDecoder;->onExecute(I[Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method public read()Lcom/baidu/speech/Results$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/baidu/speech/AbsStreamDecoder;->read()Lcom/baidu/speech/Results$Result;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v6, p0, Lcom/baidu/speech/MergedDecoder;->mSwitchLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v7, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v5, v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v7, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/baidu/speech/AbsStreamDecoder;->read()Lcom/baidu/speech/Results$Result;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :goto_1
    :try_start_2
    instance-of v5, v3, Lcom/baidu/speech/Results$SentenceEndResult;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    const-string v7, "sentence result: %s, tid: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v5

    iget-object v7, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    invoke-virtual {v7}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v7

    if-le v5, v7, :cond_6

    :cond_2
    new-instance v5, Lcom/baidu/speech/Results$SentenceEndResult;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, v3, Lcom/baidu/speech/Results$Result;->strResponse:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/baidu/speech/Results$SentenceEndResult;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    invoke-virtual {v3}, Lcom/baidu/speech/Results$Result;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/baidu/speech/Results$Result;->setId(I)V

    :cond_3
    :goto_2
    instance-of v5, v3, Lcom/baidu/speech/Results$FinalResult;

    if-eqz v5, :cond_4

    sget v5, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    :cond_4
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mTempLicenseNotice:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/baidu/speech/Results$Result;->addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    :cond_5
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    const-string v7, "decoder %d Exception %s ignored, initial may failed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/baidu/speech/MergedDecoder;->preferredDecoder:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->logger:Ljava/util/logging/Logger;

    const-string v7, "tid not increase, SentenceEndResult ignored"

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mDecoders:[Lcom/baidu/speech/AbsStreamDecoder;

    iget v6, p0, Lcom/baidu/speech/MergedDecoder;->secondaryDecoder:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/baidu/speech/AbsStreamDecoder;->read()Lcom/baidu/speech/Results$Result;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mLockedResult:Lcom/baidu/speech/Results$Result;

    invoke-virtual {v5}, Lcom/baidu/speech/Results$Result;->toBundle()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "results_recognition"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/baidu/speech/Results$Result;->addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    :cond_8
    iget-object v5, p0, Lcom/baidu/speech/MergedDecoder;->mTempLicenseNotice:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/baidu/speech/Results$Result;->addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    :cond_9
    instance-of v5, v3, Lcom/baidu/speech/Results$FinalResult;

    if-eqz v5, :cond_0

    sget v5, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/baidu/speech/MergedDecoder;->mDecodeCount:I

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
