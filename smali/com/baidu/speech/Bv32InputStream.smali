.class Lcom/baidu/speech/Bv32InputStream;
.super Ljava/io/InputStream;
.source "Bv32InputStream.java"


# static fields
.field private static final HEAD_BV_16K:[B

.field private static final HEAD_BV_8K:[B


# instance fields
.field private BV_DST_BUF:[B

.field private BV_SRC_BUF:[B

.field private cache:Ljava/nio/ByteBuffer;

.field private code_format:I

.field private finished:Z

.field private in:Ljava/io/DataInputStream;

.field private mjni:Lcom/baidu/voicerecognition/android/MJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const-string v0, "BDVoiceRecognitionClient_MFE_V1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/speech/Bv32InputStream;->HEAD_BV_8K:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/speech/Bv32InputStream;->HEAD_BV_16K:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/speech/Bv32InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v1, Lcom/baidu/voicerecognition/android/MJNI;

    invoke-direct {v1}, Lcom/baidu/voicerecognition/android/MJNI;-><init>()V

    iput-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->mjni:Lcom/baidu/voicerecognition/android/MJNI;

    const/16 v1, 0xa0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    iget-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_DST_BUF:[B

    iget-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_DST_BUF:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->in:Ljava/io/DataInputStream;

    sparse-switch p2, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sample"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iput v2, p0, Lcom/baidu/speech/Bv32InputStream;->code_format:I

    if-eqz p3, :cond_0

    sget-object v1, Lcom/baidu/speech/Bv32InputStream;->HEAD_BV_8K:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/speech/Bv32InputStream;->put([BII)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->mjni:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1}, Lcom/baidu/voicerecognition/android/MJNI;->bvEncoderInit()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bvEncoderInit return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    iput v3, p0, Lcom/baidu/speech/Bv32InputStream;->code_format:I

    if-eqz p3, :cond_0

    sget-object v1, Lcom/baidu/speech/Bv32InputStream;->HEAD_BV_16K:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/speech/Bv32InputStream;->put([BII)V

    goto :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_1
    .end sparse-switch
.end method

.method private put([BII)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->mjni:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/MJNI;->bvEncoderExit()V

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/baidu/speech/Bv32InputStream;->finished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    array-length v0, v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->in:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    iget-object v2, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    array-length v2, v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v1, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    if-gez v9, :cond_1

    iput-boolean v10, p0, Lcom/baidu/speech/Bv32InputStream;->finished:Z

    :cond_0
    if-lez v8, :cond_3

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->mjni:Lcom/baidu/voicerecognition/android/MJNI;

    iget-object v1, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    iget-object v2, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/baidu/speech/Bv32InputStream;->BV_DST_BUF:[B

    iget-object v4, p0, Lcom/baidu/speech/Bv32InputStream;->BV_DST_BUF:[B

    array-length v4, v4

    iget v5, p0, Lcom/baidu/speech/Bv32InputStream;->code_format:I

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/voicerecognition/android/MJNI;->pcm2bv([BI[BIIZ)I

    move-result v7

    if-gez v7, :cond_2

    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error, pcm2bv return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v8, v9

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->BV_DST_BUF:[B

    invoke-direct {p0, v0, v6, v7}, Lcom/baidu/speech/Bv32InputStream;->put([BII)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->BV_SRC_BUF:[B

    array-length v0, v0

    if-ge v8, v0, :cond_4

    move v6, v10

    :cond_4
    iput-boolean v6, p0, Lcom/baidu/speech/Bv32InputStream;->finished:Z

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/speech/Bv32InputStream;->finished:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v9, -0x1

    :goto_1
    return v9

    :cond_6
    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v0, p0, Lcom/baidu/speech/Bv32InputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method
