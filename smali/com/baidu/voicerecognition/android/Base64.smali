.class public final Lcom/baidu/voicerecognition/android/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/voicerecognition/android/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 13

    div-int/lit8 v11, p1, 0x4

    mul-int/lit8 v2, v11, 0x3

    if-nez v2, :cond_0

    const/4 v11, 0x0

    new-array v1, v11, [B

    :goto_0
    return-object v1

    :cond_0
    new-array v0, v2, [B

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v11, p1, -0x1

    aget-byte v7, p0, v11

    const/16 v11, 0xa

    if-eq v7, v11, :cond_2

    const/16 v11, 0xd

    if-eq v7, v11, :cond_2

    const/16 v11, 0x20

    if-eq v7, v11, :cond_2

    const/16 v11, 0x9

    if-eq v7, v11, :cond_2

    const/16 v11, 0x3d

    if-eq v7, v11, :cond_1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v9, v8

    :goto_2
    if-ge v5, p1, :cond_8

    aget-byte v7, p0, v5

    const/16 v11, 0xa

    if-eq v7, v11, :cond_c

    const/16 v11, 0xd

    if-eq v7, v11, :cond_c

    const/16 v11, 0x20

    if-eq v7, v11, :cond_c

    const/16 v11, 0x9

    if-eq v7, v11, :cond_c

    const/16 v11, 0x41

    if-lt v7, v11, :cond_3

    const/16 v11, 0x5a

    if-gt v7, v11, :cond_3

    add-int/lit8 v3, v7, -0x41

    :goto_3
    shl-int/lit8 v11, v4, 0x6

    int-to-byte v12, v3

    or-int v4, v11, v12

    rem-int/lit8 v11, v10, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_b

    add-int/lit8 v8, v9, 0x1

    const/high16 v11, 0xff0000

    and-int/2addr v11, v4

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v0, v9

    add-int/lit8 v9, v8, 0x1

    const v11, 0xff00

    and-int/2addr v11, v4

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v0, v8

    add-int/lit8 v8, v9, 0x1

    and-int/lit16 v11, v4, 0xff

    int-to-byte v11, v11

    aput-byte v11, v0, v9

    :goto_4
    add-int/lit8 v10, v10, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/16 v11, 0x61

    if-lt v7, v11, :cond_4

    const/16 v11, 0x7a

    if-gt v7, v11, :cond_4

    add-int/lit8 v3, v7, -0x47

    goto :goto_3

    :cond_4
    const/16 v11, 0x30

    if-lt v7, v11, :cond_5

    const/16 v11, 0x39

    if-gt v7, v11, :cond_5

    add-int/lit8 v3, v7, 0x4

    goto :goto_3

    :cond_5
    const/16 v11, 0x2b

    if-ne v7, v11, :cond_6

    const/16 v3, 0x3e

    goto :goto_3

    :cond_6
    const/16 v11, 0x2f

    if-ne v7, v11, :cond_7

    const/16 v3, 0x3f

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    if-lez v6, :cond_9

    mul-int/lit8 v11, v6, 0x6

    shl-int/2addr v4, v11

    add-int/lit8 v8, v9, 0x1

    const/high16 v11, 0xff0000

    and-int/2addr v11, v4

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v0, v9

    const/4 v11, 0x1

    if-ne v6, v11, :cond_a

    add-int/lit8 v9, v8, 0x1

    const v11, 0xff00

    and-int/2addr v11, v4

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v0, v8

    :cond_9
    move v8, v9

    :cond_a
    new-array v1, v8, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v11, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    move v8, v9

    goto :goto_4

    :cond_c
    move v8, v9

    goto :goto_5
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v10, 0x3d

    array-length v7, p0

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v1, v7, 0x3

    div-int/lit8 v7, v1, 0x4c

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v1, v7

    new-array v0, v1, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v6, v7, v8

    const/4 v4, 0x0

    move v3, v2

    :goto_0
    if-ge v4, v6, :cond_0

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v4

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v4

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v0, v2

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v0, v2

    sub-int v7, v3, v5

    rem-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v3, 0x1

    const/16 v7, 0xa

    aput-byte v7, v0, v3

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x3

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_2
    move v2, v3

    :goto_3
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v7

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v6

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v0, v2

    add-int/lit8 v2, v3, 0x1

    aput-byte v10, v0, v3

    add-int/lit8 v3, v2, 0x1

    aput-byte v10, v0, v2

    move v2, v3

    goto :goto_3

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    aget-byte v8, p0, v6

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v6, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v0, v2

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/baidu/voicerecognition/android/Base64;->MAP:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    aput-byte v10, v0, v2

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method