.class final Lcom/baidu/speech/MfeVadInputStream;
.super Ljava/io/FilterInputStream;
.source "MfeVadInputStream.java"

# interfaces
.implements Lcom/baidu/speech/AsrSession$VadInputStream;


# static fields
.field private static final PARAMS_KEY_LEFT:Ljava/lang/String; = "vad-mfe.params-"

.field private static final RET_NO_SPEECH:I = 0x3

.field private static final RET_SILENCE:I = 0x0

.field private static final RET_SILENCE_TO_SPEECH:I = 0x1

.field private static final RET_SPEECH_TOO_LONG:I = 0x5

.field private static final RET_SPEECH_TOO_SHORT:I = 0x4

.field private static final RET_SPEECH_TO_SILENCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MfeVadInputStream"


# instance fields
.field private final DST:Ljava/nio/ByteBuffer;

.field private volatile closed:Z

.field private final finishDelayCount:I

.field private final inBuf:[B

.field private final jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

.field private lastStatus:I

.field private final logger:Ljava/util/logging/Logger;

.field private final mBuffer:[B

.field private outBuf:[B

.field private volatile remaining:J

.field private speechBeginCalled:Z

.field private speechEndCalled:Z

.field private final statuses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v1, "BDVoiceRecognitionClient_MFE_V1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0xa0

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->inBuf:[B

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->inBuf:[B

    array-length v5, v5

    mul-int/lit16 v5, v5, 0x400

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->outBuf:[B

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->outBuf:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-static {v10}, Lcom/baidu/voicerecognition/android/LibFactory;->create(I)Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->statuses:Ljava/util/LinkedList;

    const/16 v5, 0x400

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    const-string v5, "MfeVadInputStream"

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->logger:Ljava/util/logging/Logger;

    const-string v6, "----MfeVadInputStream(), be calling"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    invoke-interface {v5}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->Exit()I

    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x64

    if-ge v0, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vad-mfe.params-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    invoke-interface {v5, v0, v3}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->SetParam(II)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "set vad param %s=%s fail, return %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "audio.sample"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v5, v2, 0x2

    div-int/lit16 v5, v5, 0x3e8

    mul-int/lit16 v5, v5, 0x320

    iput v5, p0, Lcom/baidu/speech/MfeVadInputStream;->finishDelayCount:I

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    invoke-interface {v5}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->Init()I

    iget-object v5, p0, Lcom/baidu/speech/MfeVadInputStream;->logger:Ljava/util/logging/Logger;

    const-string v6, "----MfeVadInputStream(), be called"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private refill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->in:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    array-length v11, v11

    invoke-static {v8, v9, v10, v11}, Lcom/baidu/speech/MfeVadInputStream;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    array-length v8, v8

    if-ge v1, v8, :cond_1

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-wide v8, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    goto :goto_0

    :cond_2
    iget-wide v8, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    div-int/lit8 v8, v1, 0x2

    new-array v3, v8, [S

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->mBuffer:[B

    const/4 v9, 0x0

    invoke-static {v8, v9, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    array-length v8, v3

    if-ge v4, v8, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    aput-short v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    array-length v9, v3

    invoke-interface {v8, v3, v9}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->SendData([SI)I

    move-result v5

    if-gez v5, :cond_4

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mfe error, SendData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    invoke-interface {v8}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->Detect()I

    move-result v2

    if-gez v2, :cond_5

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mfe error, Detect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    const/4 v8, 0x2

    if-le v2, v8, :cond_6

    packed-switch v2, :pswitch_data_0

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#7, No recognition result matched. mfe detect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", unknown error."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#6, No speech input. mfe detect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", no speech"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#6, No speech input. mfe detect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", speech too short"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#7, No recognition result matched. mfe detect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", speech too long"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    const/4 v8, 0x2

    if-ne v2, v8, :cond_7

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    :cond_7
    const/4 v6, 0x0

    iget v8, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_a

    if-nez v2, :cond_a

    sget-object v6, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Ready:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->statuses:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_9
    iput v2, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    :goto_4
    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    iget-object v9, p0, Lcom/baidu/speech/MfeVadInputStream;->outBuf:[B

    iget-object v10, p0, Lcom/baidu/speech/MfeVadInputStream;->outBuf:[B

    array-length v10, v10

    invoke-interface {v8, v9, v10}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->GetCallbackData([BI)I

    move-result v7

    if-gez v7, :cond_f

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mfe error, GetCallbackData="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    iget v8, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    if-nez v8, :cond_c

    const/4 v8, 0x1

    if-ne v8, v2, :cond_c

    iget-boolean v8, p0, Lcom/baidu/speech/MfeVadInputStream;->speechBeginCalled:Z

    if-eqz v8, :cond_b

    sget-object v6, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Resume:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    :goto_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/baidu/speech/MfeVadInputStream;->speechBeginCalled:Z

    goto :goto_3

    :cond_b
    sget-object v6, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    goto :goto_5

    :cond_c
    iget v8, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    if-nez v2, :cond_d

    sget-object v6, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Pause:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    goto :goto_3

    :cond_d
    iget v8, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/baidu/speech/MfeVadInputStream;->lastStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    :cond_e
    const/4 v8, 0x2

    if-ne v8, v2, :cond_8

    sget-object v6, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    goto :goto_3

    :cond_f
    if-nez v7, :cond_10

    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_10
    iget-object v8, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/baidu/speech/MfeVadInputStream;->outBuf:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MfeVadInputStream;->logger:Ljava/util/logging/Logger;

    const-string v1, "----close(), be calling"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/speech/MfeVadInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/MfeVadInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/baidu/speech/MfeVadInputStream;->jni:Lcom/baidu/voicerecognition/android/LibFactory$JNI;

    invoke-interface {v0}, Lcom/baidu/voicerecognition/android/LibFactory$JNI;->Exit()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/MfeVadInputStream;->closed:Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/baidu/speech/MfeVadInputStream;->logger:Ljava/util/logging/Logger;

    const-string v1, "----close(), be called."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public detect()Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
    .locals 2

    iget-object v1, p0, Lcom/baidu/speech/MfeVadInputStream;->statuses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Default:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 2

    iget v0, p0, Lcom/baidu/speech/MfeVadInputStream;->finishDelayCount:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    return-void
.end method

.method public finished()Z
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/speech/MfeVadInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/speech/MfeVadInputStream;->refill()V

    :cond_0
    iget-object v1, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/speech/MfeVadInputStream;->DST:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/baidu/speech/MfeVadInputStream;->remaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method
