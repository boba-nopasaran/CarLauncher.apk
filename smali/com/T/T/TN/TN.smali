.class public Lcom/T/T/TN/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field static final T:[C

.field static final T2:[C

.field static final T3:[C

.field static final TN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x64

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/T/T/TN/TN;->T:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/T/T/TN/TN;->T3:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/T/T/TN/TN;->T2:[C

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/T/T/TN/TN;->TN:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public static T(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/T/T/TN/TN;->TN:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static T(J)I
    .locals 6

    const/16 v1, 0x13

    const-wide/16 v2, 0xa

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    :goto_1
    return v0

    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static T(II[C)V
    .locals 6

    move v0, p1

    const/4 v3, 0x0

    if-gez p0, :cond_0

    const/16 v3, 0x2d

    neg-int p0, p0

    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    div-int/lit8 v1, p0, 0x64

    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    move p0, v1

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T2:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T3:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    move p0, v1

    if-nez p0, :cond_1

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    :cond_2
    return-void
.end method

.method public static T(JI[C)V
    .locals 12

    move v0, p2

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    const/16 v6, 0x2d

    neg-long p0, p0

    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    move-wide p0, v2

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T2:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T3:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    :cond_1
    long-to-int v1, p0

    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    div-int/lit8 v4, v1, 0x64

    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    move v1, v4

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T2:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T3:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    move v1, v4

    if-nez v1, :cond_2

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    :cond_3
    return-void
.end method
