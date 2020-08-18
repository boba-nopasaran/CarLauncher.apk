.class public Lcom/T/T/T2/T33;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# instance fields
.field private final T:[Lcom/T/T/T2/TZ;

.field private final T3:[Lcom/T/T/T2/TZ;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/T/T/T2/T33;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/TN/T2;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T33;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/T/T/T2/TZ;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/T/T/T2/TZ;

    iput-object v4, p0, Lcom/T/T/T2/T33;->T:[Lcom/T/T/T2/TZ;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-static {p1, p2, v4}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/TN/T2;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/T33;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/T/T/T2/TZ;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/T/T/T2/TZ;

    iput-object v4, p0, Lcom/T/T/T2/T33;->T3:[Lcom/T/T/T2/TZ;

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;
    .locals 2

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/T/T/T2/T3G;

    invoke-direct {v1, p1}, Lcom/T/T/T2/T3G;-><init>(Lcom/T/T/TN/T2;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/T/T/T2/T3J;

    invoke-direct {v1, p1}, Lcom/T/T/T2/T3J;-><init>(Lcom/T/T/TN/T2;)V

    goto :goto_0
.end method

.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    return-void
.end method

.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v14

    if-nez p2, :cond_0

    invoke-virtual {v14}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T2/T33;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v17, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/T/T/T2/T33;->T3:[Lcom/T/T/T2/TZ;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v17, 0x7b

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_2

    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TN()V

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/T/T/T2/T33;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p4

    if-eq v12, v0, :cond_3

    sget-object v17, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    const/4 v5, 0x1

    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    aget-object v8, v9, v10

    sget-object v17, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T3()Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/T/T/T2/T33;->T:[Lcom/T/T/T2/TZ;

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/T/T/T2/TZ;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, v16

    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T()Z

    move-result v17

    if-nez v17, :cond_7

    sget-object v17, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_7
    if-eqz v5, :cond_8

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_8
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_9

    invoke-virtual {v14, v11}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, v16

    if-eq v13, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/T/T/T2/TZ;->T(Lcom/T/T/T2/TS;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v17, Lcom/T/T/TN;

    const-string v18, "write javaBean error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v17

    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/T/T/T2/TZ;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_c

    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Te()V

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_c
    const/16 v17, 0x7d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0
.end method

.method protected T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p3, p2}, Lcom/T/T/T2/TS;->T(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
