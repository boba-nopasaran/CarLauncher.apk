.class public Lcom/T/T/TN/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final T:[C

.field public static final T3:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/T/T/TN/T;->T:[C

    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/T/T/TN/T;->T3:[I

    sget-object v2, Lcom/T/T/TN/T;->T3:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    sget-object v2, Lcom/T/T/TN/T;->T:[C

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/T/T/TN/T;->T3:[I

    sget-object v3, Lcom/T/T/TN/T;->T:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/T/T/TN/T;->T3:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    return-void
.end method

.method public static final T(Ljava/lang/String;II)[B
    .locals 20

    if-nez p2, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    :goto_0
    return-object v2

    :cond_0
    move/from16 v14, p1

    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/T/T/TN/T;->T3:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/T/T/TN/T;->T3:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    new-array v2, v11, [B

    const/4 v5, 0x0

    const/4 v4, 0x0

    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    move v6, v5

    move v15, v14

    :goto_6
    if-ge v6, v8, :cond_7

    sget-object v17, Lcom/T/T/TN/T;->T3:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/T/T/TN/T;->T3:[I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/T/T/TN/T;->T3:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/T/T/TN/T;->T3:[I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    add-int/lit8 v14, v15, 0x2

    const/4 v4, 0x0

    :goto_7
    move v6, v5

    move v15, v14

    goto :goto_6

    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_7
    if-ge v6, v11, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    sget-object v17, Lcom/T/T/TN/T;->T3:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    add-int/lit8 v10, v10, 0x1

    move v15, v14

    goto :goto_8

    :cond_8
    const/16 v13, 0x10

    :goto_9
    if-ge v6, v11, :cond_9

    add-int/lit8 v5, v6, 0x1

    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    add-int/lit8 v13, v13, -0x8

    move v6, v5

    goto :goto_9

    :cond_9
    move v5, v6

    move v14, v15

    goto/16 :goto_0

    :cond_a
    move v14, v15

    goto :goto_7
.end method
