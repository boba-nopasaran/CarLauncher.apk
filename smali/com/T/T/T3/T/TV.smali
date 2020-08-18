.class public Lcom/T/T/T3/T/TV;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TV;

    invoke-direct {v0}, Lcom/T/T/T3/T/TV;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v6, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_0

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_3

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_4

    :cond_3
    long-to-int v4, v2

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_5

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_6

    :cond_5
    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-wide/32 v4, -0x80000000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_9

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_b

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_c

    :cond_b
    invoke-virtual {v2}, Ljava/math/BigDecimal;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    :cond_c
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_d

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_1

    :cond_d
    invoke-virtual {v2}, Ljava/math/BigDecimal;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_10

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_11

    :cond_10
    invoke-static {v1}, Lcom/T/T/TN/Ty;->Tn(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_12

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_13

    :cond_12
    invoke-static {v1}, Lcom/T/T/TN/Ty;->TN(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_14

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_15

    :cond_14
    invoke-static {v1}, Lcom/T/T/TN/Ty;->T3(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    invoke-static {v1}, Lcom/T/T/TN/Ty;->Te(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    goto/16 :goto_0
.end method
