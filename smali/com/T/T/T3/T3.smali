.class public final Lcom/T/T/T3/T3;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final T:[C

.field public static final T2:[Z

.field public static final T3:[Z

.field public static final TN:[Z

.field public static final Te:[Z

.field public static final Tw:[C

.field public static final Ty:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x5c

    const/4 v3, 0x1

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/T/T/T3/T3;->T:[C

    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/T/T/T3/T3;->T3:[Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/T/T/T3/T3;->T3:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/T/T/T3/T3;->T3:[Z

    aput-boolean v3, v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/T/T/T3/T3;->T3:[Z

    aput-boolean v3, v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/T/T/T3/T3;->T3:[Z

    aput-boolean v3, v1, v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/T/T/T3/T3;->T2:[Z

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/T/T/T3/T3;->T2:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_5

    sget-object v1, Lcom/T/T/T3/T3;->T2:[Z

    aput-boolean v3, v1, v0

    :cond_4
    :goto_3
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x61

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_6

    sget-object v1, Lcom/T/T/T3/T3;->T2:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    :cond_6
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/T/T/T3/T3;->T2:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    :cond_7
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    sget-object v1, Lcom/T/T/T3/T3;->T2:[Z

    aput-boolean v3, v1, v0

    goto :goto_3

    :cond_8
    const/16 v1, 0x80

    new-array v1, v1, [Z

    sput-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v1, 0x80

    new-array v1, v1, [Z

    sput-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Lcom/T/T/T3/T3;->Tw:[C

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    aput-boolean v3, v1, v5

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    aput-boolean v3, v1, v3

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    aput-boolean v3, v1, v6

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    aput-boolean v3, v1, v7

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->TN:[Z

    aput-boolean v3, v1, v4

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    aput-boolean v3, v1, v5

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    aput-boolean v3, v1, v3

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    aput-boolean v3, v1, v6

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    aput-boolean v3, v1, v7

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    const/16 v2, 0x27

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Te:[Z

    aput-boolean v3, v1, v4

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x30

    aput-char v2, v1, v5

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x31

    aput-char v2, v1, v3

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x32

    aput-char v2, v1, v6

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x33

    aput-char v2, v1, v7

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/4 v2, 0x4

    const/16 v3, 0x34

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x8

    const/16 v3, 0x62

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x9

    const/16 v3, 0x74

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0xa

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0xb

    const/16 v3, 0x76

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0xd

    const/16 v3, 0x72

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x22

    const/16 v3, 0x22

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x27

    const/16 v3, 0x27

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    sget-object v1, Lcom/T/T/T3/T3;->Tw:[C

    aput-char v4, v1, v4

    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/T/T/T3/T3;->Ty:[C

    return-void

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data
.end method
