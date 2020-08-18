.class Lcom/baidu/voicerecognition/android/NO_JNI;
.super Ljava/lang/Object;
.source "LibFactory.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/LibFactory$JNI;


# instance fields
.field private isFirst:Z

.field private isNull:Z

.field private length:I

.field private sampleRate:I

.field private temp:[B


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->sampleRate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isFirst:Z

    iput-boolean v1, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isNull:Z

    return-void
.end method


# virtual methods
.method public Detect()I
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isNull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public EnableNoiseDetection(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Exit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetCallbackData([BI)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isNull:Z

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isFirst:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->sampleRate:I

    const/16 v4, 0x3e80

    if-ne v3, v4, :cond_2

    const/4 v3, 0x5

    aput-byte v3, p1, v2

    :cond_1
    :goto_1
    aput-byte v2, p1, v5

    const/4 v3, 0x2

    aput-byte v2, p1, v3

    const/4 v3, 0x3

    aput-byte v2, p1, v3

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->temp:[B

    array-length v3, v3

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x4

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->temp:[B

    aget-byte v4, v4, v0

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->sampleRate:I

    const/16 v4, 0x1f40

    if-ne v3, v4, :cond_1

    aput-byte v5, p1, v2

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x4

    iput-boolean v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isFirst:Z

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->temp:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->temp:[B

    aget-byte v2, v2, v0

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    mul-int/lit8 v1, v2, 0x2

    goto :goto_3
.end method

.method public GetParam(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetVADVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Init()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isFirst:Z

    iput-boolean v1, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isNull:Z

    iput v1, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    return v1
.end method

.method public SendData([SI)I
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->isNull:Z

    :goto_0
    return v4

    :cond_1
    array-length v2, p1

    if-le p2, v2, :cond_2

    array-length p2, p1

    :cond_2
    iput p2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->length:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x2

    aget-short v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->temp:[B

    goto :goto_0
.end method

.method public SetLogLevel(I)V
    .locals 0

    return-void
.end method

.method public SetParam(II)I
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/baidu/voicerecognition/android/NO_JNI;->sampleRate:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x6d

    goto :goto_0
.end method
