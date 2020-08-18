.class public Lcom/T/T/T3/TB;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T/T/T3/TB$T;
    }
.end annotation


# instance fields
.field private final T:[Lcom/T/T/T3/TB$T;

.field private final T2:[[C

.field private final T3:[Ljava/lang/String;

.field private final TN:I

.field private Te:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/T/T/T3/TB;-><init>(I)V

    const-string v0, "$ref"

    const-string v1, "$ref"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/T/T/T3/TB;->T(Ljava/lang/String;III)Ljava/lang/String;

    const-string v0, "@type"

    const-string v1, "$type"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/T/T/T3/TB;->T(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/TB;->Te:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/T/T/T3/TB;->TN:I

    new-array v0, p1, [Lcom/T/T/T3/TB$T;

    iput-object v0, p0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/T/T/T3/TB;->T3:[Ljava/lang/String;

    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/T/T/T3/TB;->T2:[[C

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;III)Ljava/lang/String;
    .locals 14

    iget v2, p0, Lcom/T/T/T3/TB;->TN:I

    and-int v7, p4, v2

    iget-object v2, p0, Lcom/T/T/T3/TB;->T3:[Ljava/lang/String;

    aget-object v13, v2, v7

    const/4 v12, 0x1

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/T/T/T3/TB;->T2:[[C

    aget-object v8, v2, v7

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_0

    add-int v2, p2, v11

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, v8, v11

    if-eq v2, v3, :cond_1

    const/4 v12, 0x0

    :cond_0
    if-eqz v12, :cond_3

    :goto_1
    return-object v13

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :cond_3
    const/4 v9, 0x0

    iget-object v2, p0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aget-object v1, v2, v7

    :goto_2
    if-eqz v1, :cond_8

    iget-object v8, v1, Lcom/T/T/T3/TB$T;->T2:[C

    array-length v2, v8

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    iget v2, v1, Lcom/T/T/T3/TB$T;->T3:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v11, v0, :cond_4

    add-int v2, p2, v11

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, v8, v11

    if-eq v2, v3, :cond_6

    const/4 v10, 0x0

    :cond_4
    if-nez v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_5
    iget-object v1, v1, Lcom/T/T/T3/TB$T;->Te:Lcom/T/T/T3/TB$T;

    goto :goto_2

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    iget-object v13, v1, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    if-lt v9, v2, :cond_9

    add-int v2, p2, p3

    move/from16 v0, p2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/T/T/T3/TB;->Te:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_a

    add-int v2, p2, p3

    move/from16 v0, p2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_a
    new-instance v1, Lcom/T/T/T3/TB$T;

    iget-object v2, p0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aget-object v6, v2, v7

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/T/T/T3/TB$T;-><init>(Ljava/lang/String;IIILcom/T/T/T3/TB$T;)V

    iget-object v2, p0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aput-object v1, v2, v7

    if-eqz v12, :cond_b

    iget-object v2, p0, Lcom/T/T/T3/TB;->T3:[Ljava/lang/String;

    iget-object v3, v1, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v2, p0, Lcom/T/T/T3/TB;->T2:[[C

    iget-object v3, v1, Lcom/T/T/T3/TB$T;->T2:[C

    aput-object v3, v2, v7

    :cond_b
    iget v2, p0, Lcom/T/T/T3/TB;->Te:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/T/T/T3/TB;->Te:I

    iget-object v13, v1, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    goto :goto_1
.end method

.method public T([CIII)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/T/T/T3/TB;->TN:I

    and-int v9, p4, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T3:[Ljava/lang/String;

    aget-object v15, v4, v9

    const/4 v14, 0x1

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T2:[[C

    aget-object v10, v4, v9

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_0

    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_1

    const/4 v14, 0x0

    :cond_0
    if-eqz v14, :cond_3

    :goto_1
    return-object v15

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aget-object v3, v4, v9

    :goto_2
    if-eqz v3, :cond_8

    iget-object v10, v3, Lcom/T/T/T3/TB$T;->T2:[C

    array-length v4, v10

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    iget v4, v3, Lcom/T/T/T3/TB$T;->T3:I

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_6

    const/4 v12, 0x0

    :cond_4
    if-nez v12, :cond_7

    add-int/lit8 v11, v11, 0x1

    :cond_5
    iget-object v3, v3, Lcom/T/T/T3/TB$T;->Te:Lcom/T/T/T3/TB$T;

    goto :goto_2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    iget-object v15, v3, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/16 v4, 0x8

    if-lt v11, v4, :cond_9

    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/T/T/T3/TB;->Te:I

    const/16 v5, 0x400

    if-lt v4, v5, :cond_a

    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_a
    new-instance v3, Lcom/T/T/T3/TB$T;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aget-object v8, v4, v9

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/T/T/T3/TB$T;-><init>([CIIILcom/T/T/T3/TB$T;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T:[Lcom/T/T/T3/TB$T;

    aput-object v3, v4, v9

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T3:[Ljava/lang/String;

    iget-object v5, v3, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    aput-object v5, v4, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/T/T/T3/TB;->T2:[[C

    iget-object v5, v3, Lcom/T/T/T3/TB$T;->T2:[C

    aput-object v5, v4, v9

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/T/T/T3/TB;->Te:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/T/T/T3/TB;->Te:I

    iget-object v15, v3, Lcom/T/T/T3/TB$T;->T:Ljava/lang/String;

    goto/16 :goto_1
.end method
