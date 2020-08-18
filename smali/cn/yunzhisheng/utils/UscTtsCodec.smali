.class public Lcn/yunzhisheng/utils/UscTtsCodec;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z = true

.field public static final b:Z = false

.field public static final c:I = -0x2710

.field public static final d:I = -0x270f

.field public static final e:I = -0x270e

.field public static final f:I = -0x270d

.field public static final g:I = -0x270c

.field public static final h:I = -0x270b

.field public static final i:I = -0x270a

.field public static final j:I = -0x2709

.field public static final k:I = -0x2708

.field public static final l:I = -0x2707

.field public static final m:I = -0x2706

.field public static final n:I = -0x2705

.field public static final o:I = -0x2704


# instance fields
.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    iput-wide v0, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/utils/UscTtsCodec;->a(Z)I

    return-void
.end method

.method private native CodecCompress(J[B[I)[B
.end method

.method private native CodecExtract(J[B[I)[B
.end method

.method private native CodecFini(J)I
.end method

.method private native CodecInit([JZ)I
.end method


# virtual methods
.method public a()I
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v0, -0x2710

    iget-wide v2, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/utils/UscTtsCodec;->CodecFini(J)I

    move-result v0

    iput-wide v4, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    :cond_0
    return v0
.end method

.method public a(Z)I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcn/yunzhisheng/utils/UscTtsCodec;->a()I

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/utils/UscTtsCodec;->CodecInit([JZ)I

    move-result v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    return v1
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    const-string v0, "not error code!"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "success now !go on!"

    goto :goto_0

    :pswitch_1
    const-string v0, "input params invalid!"

    goto :goto_0

    :pswitch_2
    const-string v0, "internal call invalid!"

    goto :goto_0

    :pswitch_3
    const-string v0, "source data error!"

    goto :goto_0

    :pswitch_4
    const-string v0, "encode error!"

    goto :goto_0

    :pswitch_5
    const-string v0, "decode error!"

    goto :goto_0

    :pswitch_6
    const-string v0, "jni input null invalid!"

    goto :goto_0

    :pswitch_7
    const-string v0, "jni input handle 0!"

    goto :goto_0

    :pswitch_8
    const-string v0, "jni input source length invalid!"

    goto :goto_0

    :pswitch_9
    const-string v0, "jni input mode invalid!"

    goto :goto_0

    :pswitch_a
    const-string v0, "java input null invalid!"

    goto :goto_0

    :pswitch_b
    const-string v0, "java input byte length is zero!"

    goto :goto_0

    :pswitch_c
    const-string v0, "java output byte length is zero!"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public a([B[I)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 v1, -0x2706

    aput v1, p2, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    const/16 v1, -0x2705

    aput v1, p2, v4

    goto :goto_0

    :cond_2
    :try_start_0
    iget-wide v2, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcn/yunzhisheng/utils/UscTtsCodec;->CodecCompress(J[B[I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_3

    const/16 v2, -0x2710

    aget v3, p2, v4

    if-ne v2, v3, :cond_3

    array-length v2, v1

    if-nez v2, :cond_3

    const/16 v1, -0x2704

    aput v1, p2, v4

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "CodecCompress exceptions"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b([B[I)[B
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 v1, -0x2706

    aput v1, p2, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    const/16 v1, -0x2705

    aput v1, p2, v2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-wide v2, p0, Lcn/yunzhisheng/utils/UscTtsCodec;->p:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcn/yunzhisheng/utils/UscTtsCodec;->CodecExtract(J[B[I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "CodecExtract exceptions"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
