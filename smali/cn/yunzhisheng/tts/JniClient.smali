.class public Lcn/yunzhisheng/tts/JniClient;
.super Ljava/lang/Object;


# static fields
.field public static final APPKEY_ERROR:I = -0x1664d

.field public static final DECODE_ERROR:I = -0x1637d

.field public static final GET_INFO_ERROR:I = -0x163fe

.field public static final HANDLE_ERROR:I = -0x16402

.field public static final HTTP_ERROR_MAX:I = -0x16698

.field public static final HTTP_ERROR_MIN:I = -0x16634

.field public static final HTTP_REQ_ERROR:I = -0x1637c

.field public static final INIT_ERROR:I = -0x16378

.field public static final NETWORK_ERROR:I = -0x1637b

.field public static final NO_INIT_ERROR:I = -0x16379

.field public static final NO_SUPPORT_CODEC_ERROR:I = -0x16400

.field public static final NO_SUPPORT_FORMAT_ERROR:I = -0x163ff

.field public static final OPTION_ID_ERROR:I = -0x1640f

.field public static final OPTION_PARAM_ERROR:I = -0x16410

.field public static final REQ_INIT_ERROR:I = -0x1637a

.field public static final SER_IP_ADDRESS_ERROR:I = -0x16401

.field public static final SET_SERVICE_ERROR:I = -0x163fd

.field public static final SUCCESS:I = 0x0

.field public static final TEXT_NULL_ERROR:I = -0x163fb

.field public static final TEXT_TOO_LONG_ERROR:I = -0x163fc


# instance fields
.field private a:J

.field private b:[I

.field private c:[I

.field private d:[I

.field public status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->b:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->c:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->d:[I

    new-instance v0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;-><init>(Lcn/yunzhisheng/tts/JniClient;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    return-void
.end method

.method public static codeToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, -0x16634

    if-lt v0, p0, :cond_0

    const v0, -0x16698

    if-le p0, v0, :cond_0

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "\u64cd\u4f5c\u6210\u529f"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u521d\u59cb\u5316\u9519\u8bef"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u672a\u521d\u59cb\u5316\u9519\u8bef"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u8bf7\u6c42\u521d\u59cb\u5316\u9519\u8bef"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    goto :goto_0

    :sswitch_5
    const-string v0, "http \u534f\u8bae\u9519\u8bef"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u89e3\u7801\u9519\u8bef"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u6587\u672c\u6587\u4ef6\u4e3a\u7a7a"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u6587\u672c\u6587\u4ef6\u8fc7\u957f"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u670d\u52a1\u8bbe\u7f6e\u9519\u8bef"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u83b7\u53d6\u4fe1\u606f\u9519\u8bef"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u8bed\u97f3\u683c\u5f0f\u4e0d\u652f\u6301"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u89e3\u7801\u683c\u5f0f\u4e0d\u652f\u6301"

    goto :goto_0

    :sswitch_d
    const-string v0, "IP \u5730\u5740\u8bbe\u7f6e\u9519\u8bef"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u53e5\u67c4\u9519\u8bef"

    goto :goto_0

    :sswitch_f
    const-string v0, " \u53c2\u6570\u8bbe\u7f6e ID \u9519\u8bef"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u53c2\u6570\u8bbe\u7f6eID\u9519\u8bef"

    goto :goto_0

    :sswitch_11
    const-string v0, "Appkey \u9519\u8bef"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1664d -> :sswitch_11
        -0x16410 -> :sswitch_10
        -0x1640f -> :sswitch_f
        -0x16402 -> :sswitch_e
        -0x16401 -> :sswitch_d
        -0x16400 -> :sswitch_c
        -0x163ff -> :sswitch_b
        -0x163fe -> :sswitch_a
        -0x163fd -> :sswitch_9
        -0x163fc -> :sswitch_8
        -0x163fb -> :sswitch_7
        -0x1637d -> :sswitch_6
        -0x1637c -> :sswitch_5
        -0x1637b -> :sswitch_4
        -0x1637a -> :sswitch_3
        -0x16379 -> :sswitch_2
        -0x16378 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/tts/JniClient;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native nativeGetVersion()Ljava/lang/String;
.end method


# virtual methods
.method public create(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->release()I

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    return v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->release()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/yunzhisheng/tts/JniClient;->nativeCreateExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->release()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getOption(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeGetOption(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getResult()[B
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    iget-object v4, p0, Lcn/yunzhisheng/tts/JniClient;->b:[I

    iget-object v5, p0, Lcn/yunzhisheng/tts/JniClient;->c:[I

    iget-object v6, p0, Lcn/yunzhisheng/tts/JniClient;->d:[I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/yunzhisheng/tts/JniClient;->nativeGetResult(J[I[I[I)[B

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->b:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mAudioLen:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->c:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mSynthStatus:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->d:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mErrorCode:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    iget v1, v1, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mErrorCode:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInit()Z
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native nativeCreate(Ljava/lang/String;)J
.end method

.method public native nativeCreateExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeGetOption(JI)Ljava/lang/String;
.end method

.method public native nativeGetResult(J[I[I[I)[B
.end method

.method public native nativeRelease(J)I
.end method

.method public native nativeSetOption(JILjava/lang/String;)I
.end method

.method public native nativeStart(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeStop(J)I
.end method

.method public native nativeTextPut(JLjava/lang/String;)I
.end method

.method public release()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/tts/JniClient;->nativeRelease(J)I

    move-result v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    :cond_0
    return v0
.end method

.method public setOption(ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/tts/JniClient;->nativeSetOption(JILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/tts/JniClient;->nativeStart(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public stop()I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/tts/JniClient;->nativeStop(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public textPut(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->a:J

    invoke-virtual {p0, v0, v1, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeTextPut(JLjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method
