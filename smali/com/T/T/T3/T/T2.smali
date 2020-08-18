.class public Lcom/T/T/T3/T/T2;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private final T2:Ljava/lang/reflect/Type;

.field private TN:I

.field private Te:Lcom/T/T/T3/T/TS;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    invoke-virtual {p0}, Lcom/T/T/T3/T/T2;->Te()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/T/T/T3/T/T2;->Te()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/T/T/T3/T/T2;->T2:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/T/T/T3/T/T2;->T2:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/T2;->T(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    iget-object v2, p0, Lcom/T/T/T3/T/T2;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v2}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    invoke-virtual {p0, p1, p3, v1}, Lcom/T/T/T3/T/T2;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/T/T/T3/T/T2;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v2}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/T/T/T3/T/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/T/T/T3/T/T2;->T2:Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/T/T/T3/T/T2;->Te:Lcom/T/T/T3/T/TS;

    instance-of v14, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    instance-of v14, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_2

    move-object v12, v5

    check-cast v12, Ljava/lang/reflect/TypeVariable;

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x0

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Class;

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    :cond_0
    const/4 v9, -0x1

    if-eqz v8, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v11, v14

    :goto_0
    if-ge v3, v11, :cond_1

    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    aget-object v4, v14, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v9, v3

    :cond_1
    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    aget-object v5, v14, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T3/T/T2;->T2:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v6

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v7

    invoke-virtual {v7}, Lcom/T/T/T3/Te;->TN()I

    move-result v14

    const/16 v15, 0xe

    if-eq v14, v15, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exepct \'[\', but "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/T/T/T3/Te;->TN()I

    move-result v15

    invoke-static {v15}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", type : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v14, Lcom/T/T/TN;

    invoke-direct {v14, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/T/T/T3/T/T2;->Te:Lcom/T/T/T3/T/TS;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/T/T/T3/T/T2;->Te:Lcom/T/T/T3/T/TS;

    invoke-interface {v14}, Lcom/T/T/T3/T/TS;->T()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/T/T/T3/T/T2;->TN:I

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/T/T/T3/T/T2;->TN:I

    invoke-virtual {v7, v14}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v3, 0x0

    :goto_1
    sget-object v14, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {v7, v14}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v14

    if-eqz v14, :cond_7

    :goto_2
    invoke-virtual {v7}, Lcom/T/T/T3/Te;->TN()I

    move-result v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_7

    invoke-virtual {v7}, Lcom/T/T/T3/Te;->T()V

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lcom/T/T/T3/Te;->TN()I

    move-result v14

    const/16 v15, 0xf

    if-ne v14, v15, :cond_8

    const/16 v14, 0x10

    invoke-virtual {v7, v14}, Lcom/T/T/T3/Te;->T(I)V

    return-void

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v5, v14}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/T/T/T3/T2;->T(Ljava/util/Collection;)V

    invoke-virtual {v7}, Lcom/T/T/T3/Te;->TN()I

    move-result v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/T/T/T3/T/T2;->TN:I

    invoke-virtual {v7, v14}, Lcom/T/T/T3/Te;->T(I)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
