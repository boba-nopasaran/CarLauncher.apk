.class public Lcom/T/T/T3/T/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T3;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private T(Lcom/T/T/T3/T2;Ljava/lang/Class;Lcom/T/T/T3;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/T3;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p3}, Lcom/T/T/T3;->size()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_8

    invoke-virtual {p3, v2}, Lcom/T/T/T3;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p3, :cond_1

    invoke-static {v3, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v1, v5

    :goto_3
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    check-cast v5, Lcom/T/T/T3;

    invoke-direct {p0, p1, p2, v5}, Lcom/T/T/T3/T/T3;->T(Lcom/T/T/T3/T2;Ljava/lang/Class;Lcom/T/T/T3;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    instance-of v10, v5, Lcom/T/T/T3;

    if-eqz v10, :cond_6

    const/4 v0, 0x0

    move-object v6, v5

    check-cast v6, Lcom/T/T/T3;

    invoke-virtual {v6}, Lcom/T/T/T3;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_5

    invoke-virtual {v6, v9}, Lcom/T/T/T3;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p3, :cond_4

    invoke-virtual {v6, v2, v3}, Lcom/T/T/T3;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/T/T/T3;->toArray()[Ljava/lang/Object;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v10

    invoke-static {v5, p2, v10}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v1

    :cond_7
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p3, v3}, Lcom/T/T/T3;->T3(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/T/T/T3;->T(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
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

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v10

    invoke-virtual {v10}, Lcom/T/T/T3/Te;->TN()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-class v16, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2

    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T3(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v3}, Lcom/T/T/T3;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/T/T/T3;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    invoke-virtual {v3, v9}, Lcom/T/T/T3;->T(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v9, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-class v16, Ljava/util/concurrent/atomic/AtomicLongArray;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T3(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3}, Lcom/T/T/T3;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/T/T/T3;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    invoke-virtual {v3, v9}, Lcom/T/T/T3;->T3(I)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v9, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lcom/T/T/T3/Te;->TN()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-virtual {v10}, Lcom/T/T/T3/Te;->TQ()[B

    move-result-object v5

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/T/T/T3/Te;->T(I)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v6}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object v15, v8

    check-cast v15, Ljava/lang/reflect/TypeVariable;

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/T/T/T3/TR;->T()Ljava/lang/reflect/Type;

    move-result-object v13

    instance-of v0, v13, Ljava/lang/reflect/ParameterizedType;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object v11, v13

    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    const/4 v2, 0x0

    instance-of v0, v12, Ljava/lang/Class;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    check-cast v12, Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    const/4 v9, 0x0

    :goto_3
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    aget-object v16, v14, v9

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    aget-object v2, v16, v9

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    instance-of v0, v2, Ljava/lang/Class;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object v7, v2

    check-cast v7, Ljava/lang/Class;

    :goto_4
    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v3, v1}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/T/T/T3/T/T3;->T(Lcom/T/T/T3/T2;Ljava/lang/Class;Lcom/T/T/T3;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const-class v7, Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const-class v7, Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    goto :goto_4

    :cond_a
    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    move-object v8, v7

    goto :goto_4
.end method
