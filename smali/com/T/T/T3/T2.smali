.class public Lcom/T/T/T3/T2;
.super Lcom/T/T/T3/T;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T/T/T3/T2$T;
    }
.end annotation


# static fields
.field private static final Tw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final T:Ljava/lang/Object;

.field protected T2:Lcom/T/T/T3/TJ;

.field protected final T3:Lcom/T/T/T3/TB;

.field private TG:[Lcom/T/T/T3/TR;

.field private TJ:I

.field protected final TN:Lcom/T/T/T3/Te;

.field private TR:I

.field private final TW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T3/T2$T;",
            ">;"
        }
    .end annotation
.end field

.field protected Te:Lcom/T/T/T3/TR;

.field private Tn:Ljava/text/DateFormat;

.field private Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/T/T/T3/T2;->Tw:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/T/T/T3/Te;Lcom/T/T/T3/TJ;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/T/T/T3/T;-><init>()V

    sget-object v0, Lcom/T/T/T;->T2:Ljava/lang/String;

    iput-object v0, p0, Lcom/T/T/T3/T2;->Ty:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/T/T/T3/TR;

    iput-object v0, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    iput v1, p0, Lcom/T/T/T3/T2;->TR:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/T2;->TW:Ljava/util/List;

    iput v1, p0, Lcom/T/T/T3/T2;->TJ:I

    iput-object p2, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    iput-object p1, p0, Lcom/T/T/T3/T2;->T:Ljava/lang/Object;

    iput-object p3, p0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    invoke-virtual {p3}, Lcom/T/T/T3/TJ;->T3()Lcom/T/T/T3/TB;

    move-result-object v0

    iput-object v0, p0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/T/T/T3/Te;->T(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/T/T/T3/TJ;)V
    .locals 2

    new-instance v0, Lcom/T/T/T3/Tw;

    sget v1, Lcom/T/T/T;->T3:I

    invoke-direct {v0, p1, v1}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/Object;Lcom/T/T/T3/Te;Lcom/T/T/T3/TJ;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/T/T/T3/TJ;I)V
    .locals 1

    new-instance v0, Lcom/T/T/T3/Tw;

    invoke-direct {v0, p1, p3}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/Object;Lcom/T/T/T3/Te;Lcom/T/T/T3/TJ;)V

    return-void
.end method

.method private T3(Lcom/T/T/T3/TR;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/T/T/T3/T2;->TR:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/T/T/T3/T2;->TR:I

    iget-object v3, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    new-array v1, v2, [Lcom/T/T/T3/TR;

    iget-object v3, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    iget-object v4, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    :cond_0
    iget-object v3, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    aput-object p1, v3, v0

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;
    .locals 1

    sget-object v0, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/T/T/T3/TR;

    invoke-direct {v0, p1, p2, p3}, Lcom/T/T/T3/TR;-><init>(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    iget-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    invoke-direct {p0, v0}, Lcom/T/T/T3/T2;->T3(Lcom/T/T/T3/TR;)V

    iget-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    goto :goto_0
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;
    .locals 1

    sget-object v0, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    invoke-virtual {p0, v0, p1, p2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    move-result-object v0

    goto :goto_0
.end method

.method public T(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v5, 0x0

    const/16 v13, 0x12

    const/16 v12, 0xa

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v3

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->Ty()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_1
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v5

    :pswitch_2
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v7, p1}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v7

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/T/T/T3;

    invoke-direct {v0}, Lcom/T/T/T3;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v0

    goto :goto_0

    :pswitch_4
    new-instance v4, Lcom/T/T/Te;

    invoke-direct {v4}, Lcom/T/T/Te;-><init>()V

    invoke-virtual {p0, v4, p1}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :pswitch_5
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    move-object v5, v1

    goto :goto_0

    :pswitch_6
    sget-object v11, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/T/T/T3/Te;->T(Z)Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    move-object v5, v10

    goto :goto_0

    :pswitch_7
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v11, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    invoke-virtual {v3, v11}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v2, Lcom/T/T/T3/Tw;

    invoke-direct {v2, v6}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    :cond_2
    move-object v5, v6

    goto :goto_0

    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    throw v11

    :pswitch_8
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_a
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_b
    invoke-virtual {v3, v13}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    if-eq v11, v13, :cond_3

    new-instance v11, Lcom/T/T/TN;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    invoke-virtual {v3, v12}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {p0, v12}, Lcom/T/T/T3/T2;->T3(I)V

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/T/T/T3/T2;->T3(I)V

    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/T/T/T3/T2;->T3(I)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T5()Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unterminated json string, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->Ty()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public T(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/T/T/T3/T2;->TR:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/T/T/T3/TR;->TN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public T(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T()V

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    invoke-virtual {v2, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v2}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/T/T/TN; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lcom/T/T/TN;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public T(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, expect {, actual "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Te()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v5

    const/16 v19, 0x0

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    sget-object v23, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v23

    if-eqz v23, :cond_2

    :goto_1
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_2

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v3, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    move-object/from16 v23, v0

    const/16 v24, 0x22

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v23

    :cond_3
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_4

    :try_start_1
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tr()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    :goto_2
    return-object p1

    :cond_4
    const/16 v23, 0x27

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    :try_start_2
    sget-object v23, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v23

    if-nez v23, :cond_5

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    move-object/from16 v23, v0

    const/16 v24, 0x27

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_6
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v3, v0, :cond_7

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_7
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_8

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_8
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v3, v0, :cond_9

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v3, v0, :cond_a

    :cond_9
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    :cond_a
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tr()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tg()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v11

    :goto_3
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(Z)Ljava/lang/Number;

    move-result-object v11

    goto :goto_3

    :cond_c
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-eq v3, v0, :cond_d

    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_10

    :cond_d
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    :cond_e
    if-nez v9, :cond_f

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    :cond_f
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tr()V

    sget-object v23, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    move-object/from16 v23, v0

    const/16 v24, 0x22

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_12

    sget-object v23, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    sget-object v23, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v23

    if-nez v23, :cond_11

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T3(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", actual "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_12
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v6

    instance-of v0, v6, Lcom/T/T/T3/T/TM;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    check-cast v6, Lcom/T/T/T3/T/TM;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v4}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    :cond_13
    if-nez v8, :cond_14

    const-class v23, Ljava/lang/Cloneable;

    move-object/from16 v0, v23

    if-ne v4, v0, :cond_15

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_14
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object/from16 p1, v8

    goto/16 :goto_2

    :cond_15
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_5
    new-instance v23, Lcom/T/T/TN;

    const-string v24, "create instance error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    :cond_16
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-nez v23, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->TG()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v6, v0, v4, v1}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_18
    :try_start_6
    const-string v23, "$ref"

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_22

    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v16

    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(I)V

    const/16 v17, 0x0

    const-string v23, "@"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v23

    if-eqz v23, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v17

    :goto_5
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_20

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_19
    const-string v23, ".."

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    invoke-virtual {v5}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v15

    invoke-virtual {v15}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1a

    invoke-virtual {v15}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v17

    :goto_6
    move-object/from16 p1, v17

    goto :goto_5

    :cond_1a
    new-instance v23, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(I)V

    goto :goto_6

    :cond_1b
    const-string v23, "$"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    move-object/from16 v18, v5

    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v23

    if-eqz v23, :cond_1c

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v18

    goto :goto_7

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1d

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v17

    :goto_8
    move-object/from16 p1, v17

    goto :goto_5

    :cond_1d
    new-instance v23, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(I)V

    goto :goto_8

    :cond_1e
    new-instance v23, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(I)V

    :cond_1f
    move-object/from16 p1, v17

    goto/16 :goto_5

    :cond_20
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_21
    :try_start_7
    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "illegal ref, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_22
    if-nez v19, :cond_23

    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-nez v23, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->TG()V

    :cond_23
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v3, v0, :cond_27

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T7()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    sget-object v23, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v23

    if-eqz v23, :cond_25

    new-instance v10, Lcom/T/T/T3/Tw;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v23

    if-eqz v23, :cond_24

    invoke-virtual {v10}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    :cond_24
    invoke-virtual {v10}, Lcom/T/T/T3/Tw;->close()V

    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/T/T/Te;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_26

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TB()C

    move-result v3

    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_32

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TP()C

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v3, v0, :cond_28

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v3, v0, :cond_29

    :cond_28
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v3, v0, :cond_2b

    :cond_29
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tg()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v22

    :goto_a
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2a
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TM()Ljava/lang/Number;

    move-result-object v22

    goto :goto_a

    :cond_2b
    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_2d

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    new-instance v13, Lcom/T/T/T3;

    invoke-direct {v13}, Lcom/T/T/T3;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object/from16 v22, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_2c
    :try_start_8
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    new-instance v23, Lcom/T/T/TN;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_2d
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-ne v3, v0, :cond_30

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    new-instance v23, Lcom/T/T/Te;

    invoke-direct/range {v23 .. v23}, Lcom/T/T/Te;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/T/T/Te;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2e

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2f

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_2e
    :try_start_9
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_2f
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Te()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_30
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    invoke-virtual/range {p0 .. p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_31
    :try_start_a
    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TN()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, position at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_32
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_33

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tr()V

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->T()V

    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_2

    :cond_33
    :try_start_b
    new-instance v23, Lcom/T/T/TN;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, position at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/T/T/T3/Te;->Tw()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public T()Ljava/text/DateFormat;
    .locals 2

    iget-object v0, p0, Lcom/T/T/T3/T2;->Tn:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/T/T/T3/T2;->Ty:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T/T/T3/T2;->Tn:Ljava/text/DateFormat;

    :cond_0
    iget-object v0, p0, Lcom/T/T/T3/T2;->Tn:Ljava/text/DateFormat;

    return-object v0
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lcom/T/T/T3/T2;->TJ:I

    return-void
.end method

.method public T(Lcom/T/T/T3/T2$T;)V
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2;->TW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public T(Lcom/T/T/T3/TR;)V
    .locals 1

    sget-object v0, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    goto :goto_0
.end method

.method public T(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public T(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public T(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x4

    const/16 v9, 0x10

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/16 v7, 0x15

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->T()V

    :cond_1
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_2

    new-instance v6, Lcom/T/T/TN;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v8}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    invoke-static {v8}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v1, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_3

    sget-object v1, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/T/T/T3/Te;->T(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    sget-object v6, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v6}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    if-ne v6, v9, :cond_5

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v6

    :cond_3
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_4

    sget-object v1, Lcom/T/T/T3/T/T3e;->T:Lcom/T/T/T3/T/T3e;

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6, v10}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    invoke-virtual {v6, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v1

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-interface {v1}, Lcom/T/T/T3/T/TS;->T()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_6

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6, v9}, Lcom/T/T/T3/Te;->T(I)V

    return-void

    :cond_6
    :try_start_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_8

    sget-object v6, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/T/T/T3/T/T5;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-interface {v1}, Lcom/T/T/T3/T/TS;->T()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/T/T/T3/Te;->T(I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_b

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    if-ne v6, v10, :cond_9

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/T/T/T3/Te;->T(I)V

    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_b
    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    invoke-virtual {v6}, Lcom/T/T/T3/Te;->T()V

    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;)V

    goto :goto_3

    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, p0, p1, v6}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_5
.end method

.method public T(Ljava/util/Collection;)V
    .locals 5

    iget v3, p0, Lcom/T/T/T3/T2;->TJ:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tn()Lcom/T/T/T3/T2$T;

    move-result-object v2

    new-instance v3, Lcom/T/T/T3/T/T9;

    invoke-direct {v3, p0, v1, v0}, Lcom/T/T/T3/T/T9;-><init>(Lcom/T/T/T3/T2;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/T/T0;)V

    iget-object v3, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    invoke-virtual {v2, v3}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/TR;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/T/T/T3/T2;->T(I)V

    :cond_0
    return-void
.end method

.method public final T(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x4

    const/16 v10, 0x10

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->T()V

    :cond_1
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0xe

    if-eq v8, v9, :cond_2

    new-instance v8, Lcom/T/T/TN;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syntax error, expect [, actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v10

    invoke-static {v10}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tw()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v8, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v8}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    if-ne v8, v10, :cond_3

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v8

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v7

    :goto_2
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    if-ne v8, v10, :cond_4

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_2

    :pswitch_2
    sget-object v8, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(Z)Ljava/lang/Number;

    move-result-object v7

    :goto_3
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(Z)Ljava/lang/Number;

    move-result-object v7

    goto :goto_3

    :pswitch_3
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v8, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v2, Lcom/T/T/T3/Tw;

    invoke-direct {v2, v6}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    :goto_4
    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    goto :goto_2

    :cond_6
    move-object v7, v6

    goto :goto_4

    :cond_7
    move-object v7, v6

    goto :goto_2

    :pswitch_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_2

    :pswitch_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_2

    :pswitch_6
    new-instance v5, Lcom/T/T/Te;

    invoke-direct {v5}, Lcom/T/T/Te;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :pswitch_7
    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v7, v3

    goto/16 :goto_2

    :pswitch_8
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V

    goto/16 :goto_2

    :pswitch_9
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    return-void

    :pswitch_a
    :try_start_2
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "unclosed jsonArray"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public T(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    iget v2, p0, Lcom/T/T/T3/T2;->TJ:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Lcom/T/T/T3/T/TI;

    invoke-direct {v0, p1, p2}, Lcom/T/T/T3/T/TI;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tn()Lcom/T/T/T3/T2$T;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/T/T0;)V

    iget-object v2, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    invoke-virtual {v1, v2}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/TR;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(I)V

    :cond_0
    return-void
.end method

.method public T(Lcom/T/T/T3/TN;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    return v0
.end method

.method public T2()Lcom/T/T/T3/TJ;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2;->T2:Lcom/T/T/T3/TJ;

    return-object v0
.end method

.method public T3()Lcom/T/T/T3/TB;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2;->T3:Lcom/T/T/T3/TB;

    return-object v0
.end method

.method public final T3(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->T()V

    return-void

    :cond_0
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    invoke-static {v3}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final T3(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public TG()V
    .locals 3

    sget-object v0, Lcom/T/T/T3/TN;->TJ:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    invoke-virtual {v0}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v0

    iput-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    iget-object v0, p0, Lcom/T/T/T3/T2;->TG:[Lcom/T/T/T3/TR;

    iget v1, p0, Lcom/T/T/T3/T2;->TR:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lcom/T/T/T3/T2;->TR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/T/T/T3/T2;->TR:I

    goto :goto_0
.end method

.method public TN()I
    .locals 1

    iget v0, p0, Lcom/T/T/T3/T2;->TJ:I

    return v0
.end method

.method public TR()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public TW()Lcom/T/T/T3/Te;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2;->TN:Lcom/T/T/T3/Te;

    return-object v0
.end method

.method public Te()Lcom/T/T/Te;
    .locals 1

    new-instance v0, Lcom/T/T/Te;

    invoke-direct {v0}, Lcom/T/T/Te;-><init>()V

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;)Ljava/lang/Object;

    return-object v0
.end method

.method public Tn()Lcom/T/T/T3/T2$T;
    .locals 2

    iget-object v0, p0, Lcom/T/T/T3/T2;->TW:Ljava/util/List;

    iget-object v1, p0, Lcom/T/T/T3/T2;->TW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T3/T2$T;

    return-object v0
.end method

.method public Tw()Lcom/T/T/T3/TR;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2;->Te:Lcom/T/T/T3/TR;

    return-object v0
.end method

.method public Ty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T3/T2$T;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T3/T2;->TW:Ljava/util/List;

    return-object v0
.end method

.method public close()V
    .locals 4

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/T/T/T3/TN;->T:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    invoke-static {v3}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->close()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->close()V

    return-void
.end method
