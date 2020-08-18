.class final Lcom/baidu/speech/AsrSession;
.super Lcom/baidu/speech/AbsSession;
.source "AsrSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/AsrSession$OutfileFilter;,
        Lcom/baidu/speech/AsrSession$SpeechEndFilter;,
        Lcom/baidu/speech/AsrSession$Decoder;,
        Lcom/baidu/speech/AsrSession$VadInputStream;
    }
.end annotation


# static fields
.field public static final ERROR_AUDIO:Ljava/lang/String; = "#3, Audio recording error."

.field public static final ERROR_CLIENT:Ljava/lang/String; = "#5, Other client side errors."

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:Ljava/lang/String; = "#9, Insufficient permissions."

.field public static final ERROR_NETWORK:Ljava/lang/String; = "#2, Other network related errors."

.field public static final ERROR_NETWORK_TIMEOUT:Ljava/lang/String; = "#1, Network operation timed out."

.field public static final ERROR_NO_MATCH:Ljava/lang/String; = "#7, No recognition result matched."

.field public static final ERROR_RECOGNIZER_BUSY:Ljava/lang/String; = "#8, RecognitionService busy."

.field public static final ERROR_SERVER:Ljava/lang/String; = "#4, Server sends error status."

.field public static final ERROR_SPEECH_TIMEOUT:Ljava/lang/String; = "#6, No speech input."

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ARGS_VAD_MAPPING:Ljava/util/Map;
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

.field private audioOutput:Ljava/io/OutputStream;

.field private buffer:[B

.field calledBegin:Z

.field calledEnd:Z

.field private decoder:Lcom/baidu/speech/AsrSession$Decoder;

.field in:Lcom/baidu/speech/AsrSession$VadInputStream;

.field mCancelSoundResId:Ljava/lang/Object;

.field private mSpeechEndMills:J

.field private sample:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "enter"

    aput-object v3, v2, v5

    const-string v3, "exit"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "enter"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "asr.ready"

    aput-object v3, v2, v5

    const-string v3, "asr.finish"

    aput-object v3, v2, v6

    const-string v3, "exit"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.ready"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "asr.audio"

    aput-object v3, v2, v5

    const-string v3, "asr.finish"

    aput-object v3, v2, v6

    const-string v3, "asr.engine"

    aput-object v3, v2, v7

    const-string v3, "exit"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.audio"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "asr.volume"

    aput-object v3, v2, v5

    const-string v3, "exit"

    aput-object v3, v2, v6

    const-string v3, "asr.engine"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.volume"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "asr.audio"

    aput-object v3, v2, v5

    const-string v3, "asr.begin"

    aput-object v3, v2, v6

    const-string v3, "asr.end"

    aput-object v3, v2, v7

    const-string v3, "asr.partial"

    aput-object v3, v2, v8

    const-string v3, "asr.finish"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "exit"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "asr.engine"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.begin"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "asr.audio"

    aput-object v3, v2, v5

    const-string v3, "asr.finish"

    aput-object v3, v2, v6

    const-string v3, "exit"

    aput-object v3, v2, v7

    const-string v3, "asr.engine"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.end"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "asr.partial"

    aput-object v3, v2, v5

    const-string v3, "asr.audio"

    aput-object v3, v2, v6

    const-string v3, "asr.finish"

    aput-object v3, v2, v7

    const-string v3, "exit"

    aput-object v3, v2, v8

    const-string v3, "asr.engine"

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.partial"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "asr.partial"

    aput-object v3, v2, v5

    const-string v3, "asr.audio"

    aput-object v3, v2, v6

    const-string v3, "asr.end"

    aput-object v3, v2, v7

    const-string v3, "asr.finish"

    aput-object v3, v2, v8

    const-string v3, "exit"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "asr.engine"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.finish"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "exit"

    aput-object v3, v2, v5

    const-string v3, "asr.event_error"

    aput-object v3, v2, v6

    const-string v3, "exit"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    const-string v1, "asr.engine"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "asr.engine"

    aput-object v3, v2, v5

    const-string v3, "asr.begin"

    aput-object v3, v2, v6

    const-string v3, "asr.partial"

    aput-object v3, v2, v7

    const-string v3, "asr.audio"

    aput-object v3, v2, v8

    const-string v3, "asr.end"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "asr.finish"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "exit"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/speech/Console;Ljava/lang/String;)V
    .locals 12

    const/16 v11, 0x3e80

    const/16 v10, 0x1f40

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "asr"

    const-string v3, "args-asr.xml"

    const-string v4, "args-asr-defaults.xml"

    sget-object v5, Lcom/baidu/speech/AsrSession;->map:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/speech/AbsSession;-><init>(Lcom/baidu/speech/Console;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "input"

    aput-object v3, v2, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-multiple-8k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "search"

    aput-object v3, v2, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-single-8k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "touch"

    aput-object v3, v2, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-touch-8k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "input"

    aput-object v3, v2, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-multiple-16k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "search"

    aput-object v3, v2, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-single-16k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    const-string v1, "%s_%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "touch"

    aput-object v3, v2, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params-vad-touch-16k.list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/speech/AsrSession;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->audioOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/speech/AsrSession;J)J
    .locals 1

    iput-wide p1, p0, Lcom/baidu/speech/AsrSession;->mSpeechEndMills:J

    return-wide p1
.end method

.method private collectResultMessages(Ljava/util/Map;)Z
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "basic.timeout"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/baidu/speech/AsrSession;->mSpeechEndMills:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/speech/AsrSession;->mSpeechEndMills:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1, Network operation timed out. waiting time out(now - endOfSpeech > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    invoke-interface {v4}, Lcom/baidu/speech/AsrSession$Decoder;->read()Lcom/baidu/speech/Results$Result;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    instance-of v4, v2, Lcom/baidu/speech/Results$FinalResult;

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/baidu/speech/AsrSession;->tryWriteFinish(Ljava/util/Map;Ljava/lang/Object;)V

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    invoke-interface {v4}, Lcom/baidu/speech/AsrSession$Decoder;->read()Lcom/baidu/speech/Results$Result;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lcom/baidu/speech/MergedDecoder$MessageResult;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/baidu/speech/Console$Msg;

    const-string v5, "asr.engine"

    invoke-direct {v4, v5, v2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/baidu/speech/Console$Msg;

    const-string v5, "asr.partial"

    invoke-direct {v4, v5, v2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    goto :goto_1

    :cond_3
    return v3
.end method

.method private play(Landroid/content/Context;Ljava/lang/Object;Z)V
    .locals 6

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Landroid/media/MediaPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v3, "^(0x)?\\d+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v4

    const/4 v3, 0x0

    aget-object v3, v1, v3

    new-instance v4, Lcom/baidu/speech/AsrSession$2;

    invoke-direct {v4, p0, v1}, Lcom/baidu/speech/AsrSession$2;-><init>(Lcom/baidu/speech/AsrSession;[Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_0

    :goto_2
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v3, v0}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_1
.end method

.method private tryWriteBegin()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledBegin:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledEnd:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/Console$Msg;

    const-string v1, "asr.begin"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledBegin:Z

    :cond_0
    return-void
.end method

.method private tryWriteEnd(Ljava/util/Map;)V
    .locals 3
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

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledBegin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledEnd:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/Console$Msg;

    const-string v1, "asr.end"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledEnd:Z

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v0}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic.sound_end"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/speech/AsrSession;->play(Landroid/content/Context;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private tryWriteFinish(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->isForceCancel:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "ignore finish message, because session is canceled!"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledBegin:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/speech/AsrSession;->calledEnd:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/speech/Console$Msg;

    const-string v1, "asr.finish"

    invoke-direct {v0, v1, p2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    :goto_1
    instance-of v0, p2, Lcom/baidu/speech/Results$Result;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v0}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic.sound_success"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/speech/AsrSession;->play(Landroid/content/Context;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/baidu/speech/Console$Msg;

    const-string v1, "asr.finish"

    invoke-direct {v0, v1, p2}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v0}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic.sound_error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/speech/AsrSession;->play(Landroid/content/Context;Ljava/lang/Object;Z)V

    goto :goto_0
.end method


# virtual methods
.method public createMicrophoneInputStream(Landroid/content/Context;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v13, "audio.file"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v13, "audio.position"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v5, :cond_0

    :try_start_0
    const-string v13, ""

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_0
    const-string v13, "basic.sound_start"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v8, Lcom/baidu/speech/MicrophoneInputStream;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/speech/AsrSession;->sample:I

    invoke-direct {v8, v13}, Lcom/baidu/speech/MicrophoneInputStream;-><init>(I)V

    if-eqz v12, :cond_3

    const-string v13, "^(0x)?\\d+$"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v10

    :goto_0
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->start()V

    :goto_1
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v13

    if-eqz v13, :cond_2

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#3, Audio recording error., file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :cond_1
    :try_start_1
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v10

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    invoke-virtual {v8}, Lcom/baidu/speech/MicrophoneInputStream;->globalPosition()I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v8, v14, v15}, Lcom/baidu/speech/MicrophoneInputStream;->position(J)Lcom/baidu/speech/MicrophoneInputStream;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/baidu/speech/MicrophoneInputStream;->position(J)Lcom/baidu/speech/MicrophoneInputStream;

    :cond_4
    move-object v6, v8

    :cond_5
    :goto_2
    return-object v6

    :cond_6
    const-string v13, "res://"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "res://"

    const-string v14, ""

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_2

    :cond_7
    const-string v13, "asset://"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "asset://"

    const-string v14, ""

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/assets/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_2

    :cond_8
    const-string v13, "#"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "^#(.*)[#.](.*?)\\("

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createMicrophoneInputStream from method: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "----method: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v13, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v4

    :try_start_3
    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invoke "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :cond_9
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method protected onCancel(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    invoke-interface {v0}, Lcom/baidu/speech/AsrSession$VadInputStream;->finish()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v0}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/speech/AsrSession;->mCancelSoundResId:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/speech/AsrSession;->play(Landroid/content/Context;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method protected onExecute(Ljava/util/Map;Ljava/lang/String;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const-string v32, "com.baidu.speech"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2

    const-string v32, "decoder-server.key"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v32, "decoder-server.secret"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v32, "8MAxI5o7VjKSZOKeBzS4XtxO"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_0

    const-string v32, "Ge5GXVdGQpaxOmLzc8fOM8309ATCz9Ha"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    :cond_0
    new-instance v32, Ljava/lang/Exception;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "#5, Other client side errors. The AK can only be used for demo. AK="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v13

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    const-string v15, "#7, No recognition result matched."

    move-object/from16 v31, v13

    const-string v32, "^#(\\d+)[\t]*,.+"

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    :goto_0
    if-eqz v31, :cond_1

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    :cond_1
    :try_start_2
    new-instance v32, Ljava/lang/Exception;

    move-object/from16 v0, v32

    invoke-direct {v0, v15, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->tryWriteFinish(Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->release()V

    :goto_2
    return-void

    :cond_2
    :try_start_3
    const-string v32, "audio.outfile"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v32, Lcom/baidu/speech/AsrSession$SpeechEndFilter;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/speech/AsrSession$SpeechEndFilter;-><init>(Lcom/baidu/speech/AsrSession;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/baidu/speech/AsrSession;->registerMsgFilter(Lcom/baidu/speech/AbsSession$MsgFilter;)V

    new-instance v32, Lcom/baidu/speech/AsrSession$OutfileFilter;

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/baidu/speech/AsrSession$OutfileFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/baidu/speech/AsrSession;->registerMsgFilter(Lcom/baidu/speech/AbsSession$MsgFilter;)V

    const-string v32, "ui.retry-file"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    new-instance v32, Lcom/baidu/speech/AsrSession$OutfileFilter;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/baidu/speech/AsrSession$OutfileFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/baidu/speech/AsrSession;->registerMsgFilter(Lcom/baidu/speech/AbsSession$MsgFilter;)V

    const-string v32, "basic.sound_cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->mCancelSoundResId:Ljava/lang/Object;

    sget-object v32, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v33, "====== raw ======\n%s=================\n\n"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object p2, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    const-string v32, "basic.vad"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string v32, "audio.sample"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->ARGS_VAD_MAPPING:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "%s_%s"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v30, v34, v35

    const/16 v35, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v5, Lcom/baidu/speech/Args;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v32

    const-string v33, "args-asr.xml"

    const-string v34, "args-asr-defaults.xml"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v5, v0, v1, v2, v10}, Lcom/baidu/speech/Args;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v32, "runtime"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "--basic.runtime-name "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->name()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " --basic.task-name "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->name()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/baidu/speech/Args;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/Args;

    const-string v32, "args"

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/baidu/speech/Args;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/Args;

    invoke-virtual {v5}, Lcom/baidu/speech/Args;->create()Ljava/util/Map;

    move-result-object v21

    sget-object v32, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v33, "====== config ======\n%s=================\n\n"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v5, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    const-string v32, "audio.sample"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/speech/AsrSession;->sample:I

    new-instance v16, Lcom/baidu/speech/AsrSession$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->createMicrophoneInputStream(Landroid/content/Context;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/AsrSession$1;-><init>(Lcom/baidu/speech/AsrSession;Ljava/io/InputStream;)V

    new-instance v32, Lcom/baidu/speech/MfeVadInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/MfeVadInputStream;-><init>(Ljava/util/Map;Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    sget-object v32, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v33, "created input stream"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    const-string v32, "basic.decoder"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v32, Lcom/baidu/speech/MergedDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/MergedDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    :goto_3
    sget-object v32, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "created decoder: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    mul-int/lit8 v32, v24, 0x2

    div-int/lit8 v32, v32, 0x32

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->buffer:[B

    const-string v32, "debug.output-dir"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v32, "basic.runtime-name"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v32, "basic.task-name"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "debug.debug"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v19, :cond_3

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    new-instance v32, Ljava/io/FileOutputStream;

    new-instance v33, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".pcm"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v32 .. v33}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->audioOutput:Ljava/io/OutputStream;

    :cond_3
    sget-object v32, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v33, "created debug-dir"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    new-instance v32, Lcom/baidu/speech/Console$Msg;

    const-string v33, "asr.ready"

    const/16 v34, 0x0

    invoke-direct/range {v32 .. v34}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    const/4 v9, 0x0

    const/16 v26, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/speech/AsrSession;->isForceCancel:Z

    move/from16 v32, v0

    if-nez v32, :cond_9

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->buffer:[B

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/baidu/speech/AsrSession;->clean([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    move-object/from16 v32, v0

    check-cast v32, Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->buffer:[B

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->buffer:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    invoke-static/range {v32 .. v35}, Lcom/baidu/speech/AsrSession;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/baidu/speech/AsrSession$VadInputStream;->detect()Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-result-object v12

    sget-object v32, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, v32

    if-ne v0, v12, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->tryWriteBegin()V

    :cond_5
    sget-object v32, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, v32

    if-ne v0, v12, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/AsrSession;->tryWriteEnd(Ljava/util/Map;)V

    const/16 v27, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->buffer:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v6, v0, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/AsrSession;->tryWriteEnd(Ljava/util/Map;)V

    const/16 v27, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/baidu/speech/AsrSession$VadInputStream;->finished()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/AsrSession;->tryWriteEnd(Ljava/util/Map;)V

    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/AsrSession;->collectResultMessages(Ljava/util/Map;)Z

    move-result v32

    or-int v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->buffer:[B

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v0, v1, v2, v6, v12}, Lcom/baidu/speech/AsrSession$Decoder;->write([BIILcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;)V

    sget-object v32, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    move-object/from16 v0, v32

    if-ne v12, v0, :cond_c

    const/16 v26, 0x1

    :goto_4
    if-eqz v9, :cond_d

    :cond_9
    :goto_5
    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    sget-object v36, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    invoke-interface/range {v32 .. v36}, Lcom/baidu/speech/AsrSession$Decoder;->write([BIILcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;)V

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/speech/AsrSession;->isForceCancel:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/AsrSession;->collectResultMessages(Ljava/util/Map;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    or-int v9, v9, v32

    if-eqz v9, :cond_e

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->release()V

    goto/16 :goto_2

    :pswitch_0
    :try_start_4
    new-instance v32, Lcom/baidu/speech/MulThreadDecoder;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/baidu/speech/MulThreadDecoder;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v32

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/AsrSession;->release()V

    throw v32

    :pswitch_1
    :try_start_5
    new-instance v32, Lcom/baidu/speech/OfflineDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/AsrSession;->console:Lcom/baidu/speech/Console;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/OfflineDecoder;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    goto/16 :goto_3

    :cond_c
    const/16 v26, 0x0

    goto :goto_4

    :cond_d
    if-eqz v27, :cond_4

    goto :goto_5

    :cond_e
    const-wide/16 v32, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :cond_f
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v31

    goto/16 :goto_0

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected release()V
    .locals 3

    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->in:Lcom/baidu/speech/AsrSession$VadInputStream;

    invoke-interface {v2}, Lcom/baidu/speech/AsrSession$VadInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->decoder:Lcom/baidu/speech/AsrSession$Decoder;

    invoke-interface {v2}, Lcom/baidu/speech/AsrSession$Decoder;->close()V

    :cond_1
    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->audioOutput:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/baidu/speech/AsrSession;->audioOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v2, v1}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/speech/AsrSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    goto :goto_1
.end method
