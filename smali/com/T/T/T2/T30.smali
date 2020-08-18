.class public final Lcom/T/T/T2/T30;
.super Ljava/io/Writer;
.source "Proguard"


# static fields
.field private static final T2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected T:[C

.field protected T3:I

.field private TN:I

.field private final Te:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/T/T/T2/T30;->T2:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/T/T/T2/T30;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    sget v1, Lcom/T/T/T;->TN:I

    iput v1, p0, Lcom/T/T/T2/T30;->TN:I

    sget-object v1, Lcom/T/T/T2/T30;->T2:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    sget-object v1, Lcom/T/T/T2/T30;->T2:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    if-nez v1, :cond_1

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    :cond_1
    return-void
.end method

.method private T(Ljava/lang/String;C)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;CZ)V

    return-void
.end method

.method private T(Ljava/lang/String;CZ)V
    .locals 20

    if-nez p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T2/T30;->T()V

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/T/T/T2/T30;->T3:I

    add-int/2addr v15, v10

    add-int/lit8 v11, v15, 0x2

    if-eqz p2, :cond_2

    add-int/lit8 v11, v11, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    array-length v15, v15

    if-le v11, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v15, :cond_b

    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v15, Lcom/T/T/T2/T3c;->TO:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x8

    if-eq v4, v15, :cond_3

    const/16 v15, 0xc

    if-eq v4, v15, :cond_3

    const/16 v15, 0xa

    if-eq v4, v15, :cond_3

    const/16 v15, 0xd

    if-eq v4, v15, :cond_3

    const/16 v15, 0x9

    if-eq v4, v15, :cond_3

    const/16 v15, 0x22

    if-eq v4, v15, :cond_3

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_3

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_4

    :cond_3
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v15, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/16 v15, 0x20

    if-ge v4, v15, :cond_5

    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v15, 0x75

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v15, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v15, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->Ty:[C

    mul-int/lit8 v16, v4, 0x2

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->Ty:[C

    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_2

    :cond_5
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_9

    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v15, 0x75

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->T:[C

    and-int/lit8 v16, v4, 0xf

    aget-char v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_2

    :cond_6
    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_7

    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_8

    :cond_7
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_9

    sget-object v15, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    const/16 v15, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v15, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v15, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_2

    :cond_a
    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(C)V

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/T/T/T2/T30;->T(I)V

    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v13, v15, 0x1

    add-int v5, v13, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    const/16 v17, 0x22

    aput-char v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v10, v1, v13}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iput v11, v0, Lcom/T/T/T2/T30;->T3:I

    sget-object v15, Lcom/T/T/T2/T3c;->TO:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_1d

    const/4 v9, -0x1

    move v7, v13

    :goto_3
    if-ge v7, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    aget-char v4, v15, v7

    const/16 v15, 0x22

    if-eq v4, v15, :cond_d

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_d

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_f

    :cond_d
    move v9, v7

    add-int/lit8 v11, v11, 0x1

    :cond_e
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_f
    const/16 v15, 0x8

    if-eq v4, v15, :cond_10

    const/16 v15, 0xc

    if-eq v4, v15, :cond_10

    const/16 v15, 0xa

    if-eq v4, v15, :cond_10

    const/16 v15, 0xd

    if-eq v4, v15, :cond_10

    const/16 v15, 0x9

    if-ne v4, v15, :cond_11

    :cond_10
    move v9, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_11
    const/16 v15, 0x20

    if-ge v4, v15, :cond_12

    move v9, v7

    add-int/lit8 v11, v11, 0x5

    goto :goto_4

    :cond_12
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_e

    move v9, v7

    add-int/lit8 v11, v11, 0x5

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    array-length v15, v15

    if-le v11, v15, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/T/T/T2/T30;->T(I)V

    :cond_14
    move-object/from16 v0, p0

    iput v11, v0, Lcom/T/T/T2/T30;->T3:I

    move v7, v9

    :goto_5
    if-lt v7, v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    aget-char v4, v15, v7

    const/16 v15, 0x8

    if-eq v4, v15, :cond_15

    const/16 v15, 0xc

    if-eq v4, v15, :cond_15

    const/16 v15, 0xa

    if-eq v4, v15, :cond_15

    const/16 v15, 0xd

    if-eq v4, v15, :cond_15

    const/16 v15, 0x9

    if-ne v4, v15, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x2

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    sget-object v17, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v17, v17, v4

    aput-char v17, v15, v16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_17
    const/16 v15, 0x22

    if-eq v4, v15, :cond_18

    const/16 v15, 0x2f

    if-eq v4, v15, :cond_18

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x2

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    aput-char v4, v15, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_19
    const/16 v15, 0x20

    if-ge v4, v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x6

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    const/16 v17, 0x75

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x2

    const/16 v17, 0x30

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x3

    const/16 v17, 0x30

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x4

    sget-object v17, Lcom/T/T/T3/T3;->Ty:[C

    mul-int/lit8 v18, v4, 0x2

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x5

    sget-object v17, Lcom/T/T/T3/T3;->Ty:[C

    mul-int/lit8 v18, v4, 0x2

    add-int/lit8 v18, v18, 0x1

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_6

    :cond_1a
    const/16 v15, 0x7f

    if-lt v4, v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x6

    sub-int v19, v5, v7

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x1

    const/16 v17, 0x75

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x2

    sget-object v17, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v18, v4, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x3

    sget-object v17, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v18, v4, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x4

    sget-object v17, Lcom/T/T/T3/T3;->T:[C

    ushr-int/lit8 v18, v4, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v7, 0x5

    sget-object v17, Lcom/T/T/T3/T3;->T:[C

    and-int/lit8 v18, v4, 0xf

    aget-char v17, v17, v18

    aput-char v17, v15, v16

    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_6

    :cond_1b
    if-eqz p2, :cond_1c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    const/16 v17, 0x22

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aput-char p2, v15, v16

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x22

    aput-char v17, v15, v16

    goto/16 :goto_0

    :cond_1d
    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-eqz p3, :cond_23

    move v7, v13

    :goto_7
    if-ge v7, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    aget-char v4, v15, v7

    const/16 v15, 0x5d

    if-lt v4, v15, :cond_1f

    :cond_1e
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_1f
    const/16 v15, 0x20

    if-eq v4, v15, :cond_1e

    const/16 v15, 0x30

    if-lt v4, v15, :cond_20

    const/16 v15, 0x5c

    if-ne v4, v15, :cond_1e

    :cond_20
    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_21

    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_22

    :cond_21
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_1e

    sget-object v15, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_1e

    :cond_22
    add-int/lit8 v12, v12, 0x1

    move v9, v7

    move v8, v4

    const/4 v15, -0x1

    if-ne v6, v15, :cond_1e

    move v6, v7

    goto :goto_8

    :cond_23
    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    array-length v15, v15

    if-le v11, v15, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/T/T/T2/T30;->T(I)V

    :cond_24
    move-object/from16 v0, p0

    iput v11, v0, Lcom/T/T/T2/T30;->T3:I

    const/4 v15, 0x1

    if-ne v12, v15, :cond_26

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x2

    sub-int v19, v5, v9

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    const/16 v16, 0x5c

    aput-char v16, v15, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v9, v9, 0x1

    sget-object v16, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v16, v16, v8

    aput-char v16, v15, v9

    :cond_25
    if-eqz p2, :cond_2a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    const/16 v17, 0x22

    aput-char v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aput-char p2, v15, v16

    goto/16 :goto_0

    :cond_26
    const/4 v15, 0x1

    if-le v12, v15, :cond_25

    sub-int v14, v6, v13

    move v2, v6

    move v7, v14

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_25

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    array-length v15, v15

    if-ge v4, v15, :cond_27

    sget-object v15, Lcom/T/T/T3/T3;->TN:[Z

    aget-boolean v15, v15, v4

    if-nez v15, :cond_28

    :cond_27
    const/16 v15, 0x2f

    if-ne v4, v15, :cond_29

    sget-object v15, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v16, 0x5c

    aput-char v16, v15, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v16, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v16, v16, v4

    aput-char v16, v15, v3

    add-int/lit8 v5, v5, 0x1

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v4, v15, v2

    move v2, v3

    goto :goto_a

    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T2/T30;->T3:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x22

    aput-char v17, v15, v16

    goto/16 :goto_0
.end method

.method private T2(Ljava/lang/String;)V
    .locals 14

    if-nez p1, :cond_1

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v6, v9, 0x4

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/T/T/T2/T30;->T:[C

    iget v13, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    iget-object v9, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v9, :cond_5

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v9, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_2

    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_6
    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v8, v9, 0x1

    add-int v1, v8, v5

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v2, v8

    :goto_3
    if-ge v2, v1, :cond_9

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    aget-char v0, v9, v2

    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    sget-object v9, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v4, v2

    move v3, v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v6, v7

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_a
    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    :cond_b
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    aget-char v0, v9, v2

    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    sget-object v9, Lcom/T/T/T2/T3c;->T7:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    add-int/lit8 v1, v1, 0x1

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method private TN(Ljava/lang/String;)V
    .locals 14

    sget-object v7, Lcom/T/T/T3/T3;->TN:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    iget-object v9, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v9, :cond_7

    if-nez v4, :cond_0

    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_4

    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v9, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_8
    if-nez v4, :cond_a

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v5, v9, 0x3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(I)V

    :cond_9
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x22

    aput-char v11, v9, v10

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x22

    aput-char v11, v9, v10

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    :cond_a
    iget v8, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v1, v8, v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    const/4 v2, 0x0

    move v3, v8

    :goto_4
    if-ge v3, v1, :cond_f

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    aget-char v0, v9, v3

    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_c

    if-nez v2, :cond_d

    add-int/lit8 v6, v6, 0x3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_b
    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x22

    aput-char v10, v9, v8

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    add-int/lit8 v1, v1, 0x2

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x22

    aput-char v11, v9, v10

    const/4 v2, 0x1

    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v6, v6, 0x1

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_e
    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method

.method private Te(Ljava/lang/String;)V
    .locals 14

    sget-object v7, Lcom/T/T/T3/T3;->Te:[Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    iget-object v9, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v9, :cond_7

    if-nez v4, :cond_0

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_4

    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v9, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_8
    if-nez v4, :cond_a

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v5, v9, 0x3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    iget v9, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/T/T/T2/T30;->T(I)V

    :cond_9
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/T/T/T2/T30;->T3:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    :cond_a
    iget v8, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v1, v8, v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    const/4 v2, 0x0

    move v3, v8

    :goto_4
    if-ge v3, v1, :cond_f

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    aget-char v0, v9, v3

    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-boolean v9, v7, v0

    if-eqz v9, :cond_c

    if-nez v2, :cond_d

    add-int/lit8 v6, v6, 0x3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_b
    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x27

    aput-char v10, v9, v8

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    add-int/lit8 v1, v1, 0x2

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    iget v10, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x27

    aput-char v11, v9, v10

    const/4 v2, 0x1

    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v6, v6, 0x1

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    invoke-virtual {p0, v6}, Lcom/T/T/T2/T30;->T(I)V

    :cond_e
    iput v6, p0, Lcom/T/T/T2/T30;->T3:I

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/T/T/T3/T3;->Tw:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v9, p0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v10, v6, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public T(Ljava/lang/CharSequence;II)Lcom/T/T/T2/T30;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public T()V
    .locals 1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    return-void
.end method

.method public T(C)V
    .locals 3

    iget v1, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    iget v2, p0, Lcom/T/T/T2/T30;->T3:I

    aput-char p1, v1, v2

    iput v0, p0, Lcom/T/T/T2/T30;->T3:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T2/T30;->flush()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public T(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    if-ge v0, p1, :cond_0

    move v0, p1

    :cond_0
    new-array v1, v0, [C

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    return-void
.end method

.method public T(IC)V
    .locals 4

    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/T/T/T2/T30;->T(C)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    neg-int v3, p1

    invoke-static {v3}, Lcom/T/T/TN/TN;->T(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    :goto_1
    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v0, v3, v2

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v3, v3

    if-le v1, v3, :cond_3

    iget-object v3, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T3(I)V

    invoke-virtual {p0, p2}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/T/T/TN/TN;->T(I)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/T/T/T2/T30;->T(I)V

    :cond_3
    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-static {p1, v0, v3}, Lcom/T/T/TN/TN;->T(II[C)V

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    aput-char p2, v3, v0

    iput v1, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0
.end method

.method public T(J)V
    .locals 7

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    neg-long v4, p1

    invoke-static {v4, v5}, Lcom/T/T/TN/TN;->T(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    :goto_1
    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v1, v3, v2

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/T/T/T2/T30;->T(I)V

    :cond_1
    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-static {p1, p2, v1, v3}, Lcom/T/T/TN/TN;->T(JI[C)V

    iput v1, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/T/T/TN/TN;->T(J)I

    move-result v2

    goto :goto_1

    :cond_3
    new-array v0, v2, [C

    invoke-static {p1, p2, v2, v0}, Lcom/T/T/TN/TN;->T(JI[C)V

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/T/T/T2/T30;->write([CII)V

    goto :goto_0
.end method

.method public T(JC)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/T/T/T2/T30;->T(C)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    neg-long v4, p1

    invoke-static {v4, v5}, Lcom/T/T/TN/TN;->T(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    :goto_1
    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v0, v3, v2

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v3, v3

    if-le v1, v3, :cond_3

    iget-object v3, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/T/T/T2/T30;->T(J)V

    invoke-virtual {p0, p3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/T/T/TN/TN;->T(J)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/T/T/T2/T30;->T(I)V

    :cond_3
    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-static {p1, p2, v0, v3}, Lcom/T/T/TN/TN;->T(JI[C)V

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    aput-char p3, v3, v0

    iput v1, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0
.end method

.method public T(Lcom/T/T/T2/T3c;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/T/T/T2/T30;->TN:I

    invoke-virtual {p1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/T/T/T2/T30;->TN:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/T/T/T2/T30;->TN:I

    invoke-virtual {p1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/T/T/T2/T30;->TN:I

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/T/T/T2/T30;->T2(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public T(Ljava/lang/String;Z)V
    .locals 2

    const/16 v1, 0x3a

    if-nez p1, :cond_0

    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/T/T/T2/T30;->T2(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/T/T/T2/T30;->Te(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1, p2}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;CZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/T/T/T2/T30;->TN(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public T([B)V
    .locals 17

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_0

    const-string v14, "\"\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/T/T/TN/T;->T:[C

    div-int/lit8 v14, v2, 0x3

    mul-int/lit8 v6, v14, 0x3

    add-int/lit8 v14, v2, -0x1

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    shl-int/lit8 v3, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/T/T/T2/T30;->T3:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/T/T/T2/T30;->T3:I

    add-int/2addr v14, v3

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    array-length v14, v14

    if-le v9, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v14, :cond_5

    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v6, :cond_1

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v12, v13, 0x1

    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    ushr-int/lit8 v14, v7, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    ushr-int/lit8 v14, v7, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    move v13, v12

    goto :goto_1

    :cond_1
    sub-int v8, v2, v6

    if-lez v8, :cond_2

    aget-byte v14, p1, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0xa

    const/4 v14, 0x2

    if-ne v8, v14, :cond_3

    add-int/lit8 v14, v2, -0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x2

    :goto_2
    or-int v7, v15, v14

    shr-int/lit8 v14, v7, 0xc

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v14, 0x2

    if-ne v8, v14, :cond_4

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/16 v14, 0x3d

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/T/T/T2/T30;->T(I)V

    :cond_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/T/T/T2/T30;->T3:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v11, v10, 0x1

    const/16 v15, 0x22

    aput-char v15, v14, v10

    const/4 v12, 0x0

    move v4, v11

    move v5, v4

    move v13, v12

    :goto_4
    if-ge v13, v6, :cond_7

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v12, v13, 0x1

    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v15, v7, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v15, v7, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    move v13, v12

    goto :goto_4

    :cond_7
    sub-int v8, v2, v6

    if-lez v8, :cond_8

    aget-byte v14, p1, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0xa

    const/4 v14, 0x2

    if-ne v8, v14, :cond_9

    add-int/lit8 v14, v2, -0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x2

    :goto_5
    or-int v7, v15, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v15, v9, -0x5

    shr-int/lit8 v16, v7, 0xc

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v15, v9, -0x4

    ushr-int/lit8 v16, v7, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v16, v9, -0x3

    const/4 v14, 0x2

    if-ne v8, v14, :cond_a

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    :goto_6
    aput-char v14, v15, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v15, v9, -0x2

    const/16 v16, 0x3d

    aput-char v16, v14, v15

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T2/T30;->T:[C

    add-int/lit8 v15, v9, -0x1

    const/16 v16, 0x22

    aput-char v16, v14, v15

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    const/16 v14, 0x3d

    goto :goto_6
.end method

.method public T(Lcom/T/T/T2/T3c;)Z
    .locals 1

    iget v0, p0, Lcom/T/T/T2/T30;->TN:I

    invoke-static {v0, p1}, Lcom/T/T/T2/T3c;->T(ILcom/T/T/T2/T3c;)Z

    move-result v0

    return v0
.end method

.method public T3(C)Lcom/T/T/T2/T30;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T(C)V

    return-object p0
.end method

.method public T3(I)V
    .locals 5

    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    neg-int v3, p1

    invoke-static {v3}, Lcom/T/T/TN/TN;->T(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    :goto_1
    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v1, v3, v2

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/T/T/T2/T30;->T(I)V

    :cond_1
    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-static {p1, v1, v3}, Lcom/T/T/TN/TN;->T(II[C)V

    iput v1, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/T/T/TN/TN;->T(I)I

    move-result v2

    goto :goto_1

    :cond_3
    new-array v0, v2, [C

    invoke-static {p1, v2, v0}, Lcom/T/T/TN/TN;->T(II[C)V

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/T/T/T2/T30;->write([CII)V

    goto :goto_0
.end method

.method public T3(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;II)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;II)Lcom/T/T/T2/T30;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/T/T/T2/T30;->T3:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T2/T30;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/T/T/T2/T30;->T2:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T/T/T2/T30;->T:[C

    return-void
.end method

.method public flush()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    iget-object v1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput v5, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/T/T/TN;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4

    iget v1, p0, Lcom/T/T/T2/T30;->T3:I

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/T/T/T2/T30;->T:[C

    iget v2, p0, Lcom/T/T/T2/T30;->T3:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    iput v0, p0, Lcom/T/T/T2/T30;->T3:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T2/T30;->flush()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    iget v2, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v0, v2, p3

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(I)V

    :cond_0
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    iget v4, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/T/T/T2/T30;->T3:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    sub-int v1, v2, v3

    add-int v2, p2, v1

    iget-object v3, p0, Lcom/T/T/T2/T30;->T:[C

    iget v4, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    iput v2, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T2/T30;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    move v0, p3

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4

    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/T/T/T2/T30;->T3:I

    add-int v0, v2, p3

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    if-le v0, v2, :cond_3

    iget-object v2, p0, Lcom/T/T/T2/T30;->Te:Ljava/io/Writer;

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T30;->T(I)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/T/T/T2/T30;->T3:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    iget v3, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    iput v2, p0, Lcom/T/T/T2/T30;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T2/T30;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/T/T/T2/T30;->T:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    move v0, p3

    goto :goto_1
.end method
