.class public abstract Lcom/T/T/T3/Te;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final T7:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field protected static final TB:[C

.field protected static TP:[Z

.field protected static final Tr:[I


# instance fields
.field protected T:I

.field protected T2:I

.field protected T3:I

.field protected TG:I

.field protected TJ:Lcom/T/T/T3/TG;

.field protected TN:C

.field protected TR:Z

.field protected TW:Ljava/util/Calendar;

.field protected Te:I

.field protected Tn:I

.field protected Tw:I

.field protected Ty:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/T/T/T3/Te;->T7:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/T/T/T3/Te;->TB:[C

    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/T/T/T3/Te;->TP:[Z

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0x20

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    sget-object v1, Lcom/T/T/T3/Te;->TP:[Z

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lcom/T/T/T3/Te;->Tr:[I

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/T/T/T;->T3:I

    iput v1, p0, Lcom/T/T/T3/Te;->T2:I

    iput-object v2, p0, Lcom/T/T/T3/Te;->TW:Ljava/util/Calendar;

    sget-object v1, Lcom/T/T/T3/TG;->T:Lcom/T/T/T3/TG;

    iput-object v1, p0, Lcom/T/T/T3/Te;->TJ:Lcom/T/T/T3/TG;

    sget-object v1, Lcom/T/T/T3/Te;->T7:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    sget-object v1, Lcom/T/T/T3/Te;->T7:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    if-nez v1, :cond_1

    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    :cond_1
    return-void
.end method

.method public static final T3(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final T(Z)Ljava/lang/Number;
    .locals 4

    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    iget v2, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TR()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract T(IIILcom/T/T/T3/TB;)Ljava/lang/String;
.end method

.method public final T(Lcom/T/T/T3/TB;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tu()V

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v3, :cond_2

    sget-object v0, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v1, 0xd

    iput v1, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_0

    :cond_3
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v1, 0x10

    iput v1, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_0

    :cond_4
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    const/16 v1, 0x14

    iput v1, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/T/T/T3/Te;->T3(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final T(Lcom/T/T/T3/TB;C)Ljava/lang/String;
    .locals 23

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->TG:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Tn:I

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->T:I

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/Te;->TP()C

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->TG:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/T/T/T3/Te;->T(IIILcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v19

    :goto_1
    return-object v19

    :cond_0
    const/16 v19, 0x1a

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    new-instance v19, Lcom/T/T/TN;

    const-string v20, "unclosed.str"

    invoke-direct/range {v19 .. v20}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_1
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    if-nez v10, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v12, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/T/T/T3/Te;->Tn:I

    :cond_2
    new-array v13, v12, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/T/T/T3/Te;->Ty:[C

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->TG:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/T/T/T3/Te;->T(I[CII)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_0

    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/T/T/T3/Te;->TN:C

    new-instance v19, Lcom/T/T/TN;

    const-string v20, "unclosed.str.lit"

    invoke-direct/range {v19 .. v20}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v19

    :sswitch_0
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_1
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_2
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_3
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_4
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_5
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_6
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_7
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_8
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x8

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_9
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x9

    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_a
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xa

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_b
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xb

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_c
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xc

    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_d
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xd

    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_e
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x22

    const/16 v19, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_f
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x27

    const/16 v19, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_10
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x2f

    const/16 v19, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_11
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x5c

    const/16 v19, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/T/T/T3/Te;->TN:C

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/T/T/T3/Te;->TN:C

    sget-object v19, Lcom/T/T/T3/Te;->Tr:[I

    aget v19, v19, v15

    mul-int/lit8 v19, v19, 0x10

    sget-object v20, Lcom/T/T/T3/Te;->Tr:[I

    aget v20, v20, v16

    add-int v18, v19, v20

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v17, v0

    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    move v5, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    move v6, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    move v7, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Te:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    move v8, v9

    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-char v5, v20, v21

    const/16 v21, 0x1

    aput-char v6, v20, v21

    const/16 v21, 0x2

    aput-char v7, v20, v21

    const/16 v21, 0x3

    aput-char v8, v20, v21

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([C)V

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v14

    int-to-char v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Tn:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/T/T/T3/Te;->Tn:I

    aput-char v9, v19, v20

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/T/T/T3/Te;->Tn:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/T/T/T3/TB;->T([CIII)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final T()V
    .locals 3

    const/16 v2, 0x14

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/Te;->Tn:I

    :goto_0
    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T7()V

    :goto_1
    return-void

    :cond_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0x10

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_1

    :cond_1
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    goto :goto_1

    :cond_2
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TJ()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/T/T/T3/Te;->T:I

    if-ne v0, v2, :cond_5

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tf()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TH()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T0()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T1()V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tk()V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tc()V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xa

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xb

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xe

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xf

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xc

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0xd

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/16 v0, 0x11

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :cond_5
    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    iget v0, p0, Lcom/T/T/T3/Te;->Tw:I

    iput v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x3a -> :sswitch_d
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_9
        0x5d -> :sswitch_a
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
    .end sparse-switch
.end method

.method protected final T(C)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    iget-object v2, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    iget-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    iget-object v2, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/T/T/T3/Te;->Ty:[C

    :cond_0
    iget-object v1, p0, Lcom/T/T/T3/Te;->Ty:[C

    iget v2, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/T/T/T3/Te;->Tn:I

    aput-char p1, v1, v2

    return-void
.end method

.method public final T(I)V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/Te;->Tn:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :pswitch_1
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v5, :cond_2

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :goto_1
    return-void

    :cond_2
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_0

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :pswitch_2
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    const/16 v0, 0x10

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :cond_3
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    iput v6, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :cond_4
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :cond_5
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_1

    :pswitch_3
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    goto :goto_1

    :cond_6
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T7()V

    goto :goto_1

    :cond_7
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_8

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :cond_8
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :pswitch_4
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T7()V

    goto/16 :goto_1

    :cond_9
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    goto/16 :goto_1

    :cond_a
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_b

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :cond_b
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :pswitch_5
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_c

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :cond_c
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v5, :cond_0

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :pswitch_6
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    const/16 v0, 0xf

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T3()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract T(II[C)V
.end method

.method protected abstract T(I[CII)V
.end method

.method public final T(Lcom/T/T/T3/TN;)Z
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Te;->T2:I

    invoke-static {v0, p1}, Lcom/T/T/T3/TN;->T(ILcom/T/T/T3/TN;)Z

    move-result v0

    return v0
.end method

.method public final T0()V
    .locals 3

    const/16 v2, 0x65

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v2, :cond_3

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v2, :cond_5

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    return-void

    :cond_8
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T1()V
    .locals 2

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    return-void

    :cond_4
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract T2(I)C
.end method

.method public final T2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/Te;->Tn:I

    :goto_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T()V

    return-void

    :cond_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/T/T/TN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T3(Lcom/T/T/T3/TB;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x6c

    const/4 v7, 0x1

    sget-object v4, Lcom/T/T/T3/T3;->T3:[Z

    iget-char v2, p0, Lcom/T/T/T3/Te;->TN:C

    iget-char v8, p0, Lcom/T/T/T3/Te;->TN:C

    array-length v9, v4

    if-ge v8, v9, :cond_0

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    :goto_0
    if-nez v3, :cond_2

    new-instance v7, Lcom/T/T/TN;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/T/T/T3/T3;->T2:[Z

    move v5, v2

    iget v8, p0, Lcom/T/T/T3/Te;->Te:I

    iput v8, p0, Lcom/T/T/T3/Te;->TG:I

    iput v7, p0, Lcom/T/T/T3/Te;->Tn:I

    :goto_1
    iget v7, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    array-length v7, v6

    if-ge v1, v7, :cond_3

    aget-boolean v7, v6, v1

    if-nez v7, :cond_3

    iget v7, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v7

    iput-char v7, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v7, 0x12

    iput v7, p0, Lcom/T/T/T3/Te;->T:I

    const v0, 0x33c587

    iget v7, p0, Lcom/T/T/T3/Te;->Tn:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    const v7, 0x33c587

    if-ne v5, v7, :cond_4

    iget v7, p0, Lcom/T/T/T3/Te;->TG:I

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    iget v7, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p0, v7}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    const/4 v7, 0x0

    :goto_2
    return-object v7

    :cond_3
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    iget v7, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/T/T/T3/Te;->Tn:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/T/T/T3/Te;->TG:I

    iget v8, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/T/T/T3/Te;->T(IIILcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public final T3()V
    .locals 2

    :goto_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-static {v0}, Lcom/T/T/T3/Te;->T3(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TF()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T()V

    goto :goto_1
.end method

.method public final T3(I)V
    .locals 7

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/16 v4, 0x22

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/Te;->Tn:I

    :goto_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-lt v0, v5, :cond_2

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-gt v0, v6, :cond_2

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    :goto_2
    return-void

    :cond_0
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-static {v0}, Lcom/T/T/T3/Te;->T3(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/T/T/TN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\', actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_9

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T7()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T7()V

    goto :goto_2

    :cond_4
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-lt v0, v5, :cond_9

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-gt v0, v6, :cond_9

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    iput v0, p0, Lcom/T/T/T3/Te;->T3:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tg()V

    goto :goto_2

    :cond_5
    if-ne p1, v2, :cond_7

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_2

    :cond_6
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_2

    :cond_7
    if-ne p1, v3, :cond_9

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_2

    :cond_8
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_2

    :cond_9
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-static {v0}, Lcom/T/T/T3/Te;->T3(C)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->T()V

    goto/16 :goto_2
.end method

.method public final T5()Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    invoke-static {v0}, Lcom/T/T/T3/Te;->T3(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final T7()V
    .locals 17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->TG:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/T/T/T3/Te;->TR:Z

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->T:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/T/T/T3/Te;->TN:C

    return-void

    :cond_0
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_1

    new-instance v13, Lcom/T/T/TN;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/T/T/T3/Te;->TR:Z

    if-nez v13, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/T/T/T3/Te;->TR:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Tn:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v14, v14

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Tn:I

    if-le v13, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/T/T/T3/Te;->Tn:I

    :cond_2
    new-array v3, v2, [C

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/T/T/T3/Te;->Ty:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/T/T/T3/Te;->Ty:[C

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/T/T/T3/Te;->Tn:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/T/T/T3/Te;->T(II[C)V

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/T/T/T3/Te;->TN:C

    new-instance v13, Lcom/T/T/TN;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v13

    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_6
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_10
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v9, v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v10, v1

    sget-object v13, Lcom/T/T/T3/Te;->Tr:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/T/T/T3/Te;->Tr:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    int-to-char v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v4, v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v5, v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v6, v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Te:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    move v7, v1

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/T/T/T3/Te;->TR:Z

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/T/T/T3/Te;->Tn:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/T/T/T3/Te;->Tn:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v14, v14

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/T/T/T3/Te;->Ty:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/T/T/T3/Te;->Tn:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final TB()C
    .locals 1

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    return v0
.end method

.method public final TF()V
    .locals 3

    iget v2, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/T/T/T3/Te;->TG:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/T/T/T3/Te;->TR:Z

    :cond_0
    iget v2, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v2, p0, Lcom/T/T/T3/Te;->TN:C

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/T/T/T3/Te;->TJ:Lcom/T/T/T3/TG;

    invoke-virtual {v2, v0}, Lcom/T/T/T3/TG;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x12

    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_0
.end method

.method public TG()F
    .locals 1

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final TH()V
    .locals 2

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    return-void

    :cond_5
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract TJ()Z
.end method

.method public final TL()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final TM()Ljava/lang/Number;
    .locals 4

    iget v2, p0, Lcom/T/T/T3/Te;->TG:I

    iget v3, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v1

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final TN()I
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Te;->T:I

    return v0
.end method

.method public TO()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/Te;->TW:Ljava/util/Calendar;

    return-object v0
.end method

.method public abstract TP()C
.end method

.method public abstract TQ()[B
.end method

.method public TR()D
    .locals 2

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract TW()Ljava/lang/String;
.end method

.method public final TY()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide v8, -0xcccccccccccccccL

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    iget v2, p0, Lcom/T/T/T3/Te;->TG:I

    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    iget v13, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int v6, v12, v13

    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    invoke-virtual {p0, v12}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    const/4 v7, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v7, :cond_0

    :cond_0
    if-ge v3, v6, :cond_1

    sget-object v12, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v13

    aget v1, v12, v13

    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v0

    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    :goto_3
    return-wide v10

    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v2

    goto :goto_0

    :cond_4
    sget-object v12, Lcom/T/T/T3/Te;->Tr:[I

    aget v1, v12, v0

    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    goto :goto_1

    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    neg-long v10, v10

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_2
.end method

.method public final TZ()Ljava/math/BigDecimal;
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final Tc()V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v2, :cond_4

    :cond_3
    iput v2, p0, Lcom/T/T/T3/Te;->T:I

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v0, v2, :cond_9

    :cond_8
    iput v3, p0, Lcom/T/T/T3/Te;->T:I

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Te()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Te;->T:I

    invoke-static {v0}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Tf()V
    .locals 15

    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    iput v11, p0, Lcom/T/T/T3/Te;->TG:I

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/T/T/T3/Te;->TR:Z

    :goto_0
    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    const/16 v11, 0x27

    if-ne v4, v11, :cond_0

    const/4 v11, 0x4

    iput v11, p0, Lcom/T/T/T3/Te;->T:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    return-void

    :cond_0
    const/16 v11, 0x1a

    if-ne v4, v11, :cond_1

    new-instance v11, Lcom/T/T/TN;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    const/16 v11, 0x5c

    if-ne v4, v11, :cond_4

    iget-boolean v11, p0, Lcom/T/T/T3/Te;->TR:Z

    if-nez v11, :cond_3

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/T/T/T3/Te;->TR:Z

    iget v11, p0, Lcom/T/T/T3/Te;->Tn:I

    iget-object v12, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v12, v12

    if-le v11, v12, :cond_2

    iget v11, p0, Lcom/T/T/T3/Te;->Tn:I

    mul-int/lit8 v11, v11, 0x2

    new-array v5, v11, [C

    iget-object v11, p0, Lcom/T/T/T3/Te;->Ty:[C

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v14, v14

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lcom/T/T/T3/Te;->Ty:[C

    :cond_2
    iget v11, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Lcom/T/T/T3/Te;->Tn:I

    iget-object v13, p0, Lcom/T/T/T3/Te;->Ty:[C

    invoke-virtual {p0, v11, v12, v13}, Lcom/T/T/T3/Te;->T(II[C)V

    :cond_3
    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iput-char v4, p0, Lcom/T/T/T3/Te;->TN:C

    new-instance v11, Lcom/T/T/TN;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :sswitch_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto :goto_0

    :sswitch_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto :goto_0

    :sswitch_2
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto :goto_0

    :sswitch_3
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto :goto_0

    :sswitch_4
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto :goto_0

    :sswitch_5
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_6
    const/4 v11, 0x6

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v11, 0xc

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v11, 0xd

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v11, 0x22

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v11, 0x27

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_10
    const/16 v11, 0x2f

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v11, 0x5c

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_12
    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v7, v4

    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v8, v4

    sget-object v11, Lcom/T/T/T3/Te;->Tr:[I

    aget v11, v11, v7

    mul-int/lit8 v11, v11, 0x10

    sget-object v12, Lcom/T/T/T3/Te;->Tr:[I

    aget v12, v12, v8

    add-int v10, v11, v12

    int-to-char v9, v10

    invoke-virtual {p0, v9}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :sswitch_13
    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v0, v4

    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v1, v4

    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v2, v4

    iget v11, p0, Lcom/T/T/T3/Te;->Te:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Te:I

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v4

    move v3, v4

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [C

    const/4 v13, 0x0

    aput-char v0, v12, v13

    const/4 v13, 0x1

    aput-char v1, v12, v13

    const/4 v13, 0x2

    aput-char v2, v12, v13

    const/4 v13, 0x3

    aput-char v3, v12, v13

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v11, v6

    invoke-virtual {p0, v11}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v11, p0, Lcom/T/T/T3/Te;->TR:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/T/T/T3/Te;->Tn:I

    goto/16 :goto_0

    :cond_5
    iget v11, p0, Lcom/T/T/T3/Te;->Tn:I

    iget-object v12, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v12, v12

    if-ne v11, v12, :cond_6

    invoke-virtual {p0, v4}, Lcom/T/T/T3/Te;->T(C)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/T/T/T3/Te;->Ty:[C

    iget v12, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/T/T/T3/Te;->Tn:I

    aput-char v4, v11, v12

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final Tg()V
    .locals 8

    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    iget v1, p0, Lcom/T/T/T3/Te;->Te:I

    iput v1, p0, Lcom/T/T/T3/Te;->TG:I

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-gt v1, v4, :cond_1

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/4 v0, 0x1

    :goto_1
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-gt v1, v4, :cond_2

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_1

    :cond_2
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    const/4 v1, 0x3

    iput v1, p0, Lcom/T/T/T3/Te;->T:I

    :goto_3
    return-void

    :cond_4
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_2

    :cond_5
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_2

    :cond_6
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v7, :cond_7

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v6, :cond_8

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    :cond_9
    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v5, :cond_b

    :cond_a
    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-gt v1, v4, :cond_c

    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_4

    :cond_c
    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    if-ne v1, v7, :cond_e

    :cond_d
    iget v1, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T/T/T3/Te;->Tn:I

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/T/T/T3/Te;->T:I

    goto/16 :goto_3
.end method

.method public final Tk()V
    .locals 2

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/T/T/TN;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/T/T/T3/Te;->TN:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/T/T/T3/Te;->T:I

    return-void

    :cond_6
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Tn()Ljava/lang/Number;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide v6, -0xcccccccccccccccL

    const/16 v14, 0x4c

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget v1, p0, Lcom/T/T/T3/Te;->TG:I

    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    iget v13, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int v3, v12, v13

    const/16 v9, 0x20

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {p0, v12}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_0
    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    invoke-virtual {p0, v12}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    const/4 v8, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1
    if-eqz v8, :cond_0

    :cond_0
    if-ge v2, v3, :cond_1

    sget-object v12, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v13

    aget v0, v12, v13

    neg-int v12, v0

    int-to-long v10, v12

    move v2, v1

    :cond_1
    :goto_2
    if-ge v2, v3, :cond_5

    sget-object v12, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v13

    aget v0, v12, v13

    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v12

    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    const/16 v9, 0x4c

    goto :goto_0

    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    const/16 v9, 0x53

    goto :goto_0

    :sswitch_2
    add-int/lit8 v3, v3, -0x1

    const/16 v9, 0x42

    goto :goto_0

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move v2, v1

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    int-to-long v12, v0

    sub-long/2addr v10, v12

    move v2, v1

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_8

    iget v12, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_6

    if-eq v9, v14, :cond_6

    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    goto :goto_3

    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    goto :goto_3

    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    neg-long v10, v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_b

    if-eq v9, v14, :cond_b

    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    goto :goto_3

    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    goto :goto_3

    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    goto :goto_3

    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final To()I
    .locals 11

    const v6, -0xccccccc

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v2, p0, Lcom/T/T/T3/Te;->TG:I

    iget v9, p0, Lcom/T/T/T3/Te;->TG:I

    iget v10, p0, Lcom/T/T/T3/Te;->Tn:I

    add-int v5, v9, v10

    iget v9, p0, Lcom/T/T/T3/Te;->TG:I

    invoke-virtual {p0, v9}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    const/4 v7, 0x1

    const/high16 v4, -0x80000000

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v7, :cond_0

    :cond_0
    if-ge v3, v5, :cond_1

    sget-object v9, Lcom/T/T/T3/Te;->Tr:[I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v10

    aget v1, v9, v10

    neg-int v8, v1

    move v3, v2

    :cond_1
    :goto_1
    if-ge v3, v5, :cond_9

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/T/T/T3/Te;->T2(I)C

    move-result v0

    const/16 v9, 0x4c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x53

    if-eq v0, v9, :cond_2

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    iget v9, p0, Lcom/T/T/T3/Te;->TG:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    :goto_3
    return v8

    :cond_3
    const v4, -0x7fffffff

    move v3, v2

    goto :goto_0

    :cond_4
    sget-object v9, Lcom/T/T/T3/Te;->Tr:[I

    aget v1, v9, v0

    if-ge v8, v6, :cond_5

    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    mul-int/lit8 v8, v8, 0xa

    add-int v9, v4, v1

    if-ge v8, v9, :cond_6

    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    sub-int/2addr v8, v1

    move v3, v2

    goto :goto_1

    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    neg-int v8, v8

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_2
.end method

.method public final Tr()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T3/Te;->Tn:I

    return-void
.end method

.method public abstract Tt()Ljava/lang/String;
.end method

.method public final Tu()V
    .locals 2

    :goto_0
    sget-object v0, Lcom/T/T/T3/Te;->TP:[Z

    iget-char v1, p0, Lcom/T/T/T3/Te;->TN:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/Te;->TP()C

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Tw()I
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Te;->T3:I

    return v0
.end method

.method public final Ty()I
    .locals 1

    iget v0, p0, Lcom/T/T/T3/Te;->Te:I

    return v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/T/T/T3/Te;->Ty:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/T/T/T3/Te;->T7:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/T/T/T3/Te;->Ty:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T/T/T3/Te;->Ty:[C

    return-void
.end method
