.class public Lcom/T/T/T3/T/Tx;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/Tx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/Tx;

    invoke-direct {v0}, Lcom/T/T/T3/T/Tx;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

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

    const/16 v0, 0xc

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

    instance-of v5, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_2

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2, v4}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_1

    move-object v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/T/T/T3/T2;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
