.class public Lcom/T/T/T3/T/TM;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# instance fields
.field private final T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/T/T/T3/T/T0;",
            ">;"
        }
    .end annotation
.end field

.field private final T2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final T3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T3/T/T0;",
            ">;"
        }
    .end annotation
.end field

.field private TN:Lcom/T/T/TN/T3;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p2}, Lcom/T/T/T3/T/TM;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/T/T/T3/T/TM;->T:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/T/T/T3/T/TM;->T3:Ljava/util/List;

    iput-object p2, p0, Lcom/T/T/T3/T/TM;->T2:Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/T/T/TN/T3;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/TN/T3;

    move-result-object v2

    iput-object v2, p0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    iget-object v2, p0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v2}, Lcom/T/T/TN/T3;->TN()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/TN/T2;

    invoke-direct {p0, p1, p2, v0}, Lcom/T/T/T3/T/TM;->T3(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T3(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/T0;

    move-result-object v0

    iget-object v1, p0, Lcom/T/T/T3/T/TM;->T:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/T/T/T3/T/TM;->T3:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/T0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")",
            "Lcom/T/T/T3/T/T0;"
        }
    .end annotation

    invoke-virtual {p1, p1, p2, p3}, Lcom/T/T/T3/TJ;->T(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/T0;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    instance-of v9, p2, Ljava/lang/Class;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/T/T/T3/T/TM;->T2:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Lcom/T/T/Te;

    invoke-direct {v6}, Lcom/T/T/Te;-><init>()V

    new-array v9, v11, [Ljava/lang/Class;

    aput-object v0, v9, v10

    invoke-static {v5, v9, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    iget-object v9, p0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v9}, Lcom/T/T/TN/T3;->T()Ljava/lang/reflect/Constructor;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v9}, Lcom/T/T/TN/T3;->T()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    :goto_1
    sget-object v9, Lcom/T/T/T3/TN;->TB:Lcom/T/T/T3/TN;

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v9}, Lcom/T/T/TN/T3;->TN()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    if-ne v9, v10, :cond_2

    :try_start_1
    const-string v9, ""

    invoke-virtual {v3, v7, v9}, Lcom/T/T/TN/T2;->T(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create instance error, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/T/T/T3/T/TM;->T2:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_3
    const/4 v9, 0x1

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v11

    invoke-virtual {v11}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create instance error, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/T/T/T3/T/TM;->T2:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_4
    move-object v8, v7

    goto/16 :goto_0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v11

    if-eqz p4, :cond_1

    invoke-virtual {v11}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v11

    :cond_1
    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    if-nez p4, :cond_2

    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    :cond_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "syntax error, expect {, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->Te()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->Tw()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, ", fieldName "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_5
    new-instance v3, Lcom/T/T/TN;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v3

    :cond_7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TN()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    move-object/from16 v16, v8

    :cond_9
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_b

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v8, v16

    :goto_3
    if-nez p4, :cond_22

    if-nez v8, :cond_20

    :try_start_4
    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p4

    if-eqz v10, :cond_a

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_c

    sget-object v3, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_c
    const-string v3, "$ref"

    if-ne v3, v5, :cond_16

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v22

    const-string v3, "@"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v11}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object p4

    :goto_4
    const/16 v3, 0xd

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_14

    new-instance v3, Lcom/T/T/TN;

    const-string v4, "illegal ref"

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object/from16 v8, v16

    goto/16 :goto_1

    :cond_d
    const-string v3, ".."

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v11}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object p4

    goto :goto_4

    :cond_e
    new-instance v3, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(I)V

    goto :goto_4

    :cond_f
    const-string v3, "$"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v23, v11

    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual/range {v23 .. v23}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v23

    goto :goto_5

    :cond_10
    invoke-virtual/range {v23 .. v23}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v23 .. v23}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object p4

    goto :goto_4

    :cond_11
    new-instance v3, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(I)V

    goto :goto_4

    :cond_12
    new-instance v3, Lcom/T/T/T3/T2$T;

    move-object/from16 v0, v22

    invoke-direct {v3, v11, v0}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T3/T2;->T(I)V

    goto/16 :goto_4

    :cond_13
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal ref, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    invoke-static {v6}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_15

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_16
    :try_start_6
    sget-object v3, Lcom/T/T/T;->T:Ljava/lang/String;

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v25

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_17

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->T()V

    move-object/from16 v8, v16

    goto/16 :goto_3

    :cond_17
    invoke-static/range {v25 .. v25}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v12

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v12, v0, v1, v2}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    if-eqz v10, :cond_18

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_0

    :cond_19
    :try_start_7
    new-instance v3, Lcom/T/T/TN;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    if-nez p4, :cond_26

    if-nez v16, :cond_26

    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_25

    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->T3:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    :try_start_8
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    move-result-object v10

    :goto_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/T/T/T3/T/TM;->T(Lcom/T/T/T3/T2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v19

    if-nez v19, :cond_1b

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->T()V

    goto/16 :goto_3

    :cond_1b
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1c

    move-object/from16 v16, v8

    goto/16 :goto_2

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1d

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    goto/16 :goto_3

    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1e

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    :cond_1e
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, unexpect token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    invoke-static {v6}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1f
    move-object/from16 v16, v8

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v3}, Lcom/T/T/TN/T3;->TN()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/T/T/TN/T2;

    invoke-virtual {v14}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v20, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v3}, Lcom/T/T/TN/T3;->T3()Ljava/lang/reflect/Constructor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_24

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v3}, Lcom/T/T/TN/T3;->T3()Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object p4

    :cond_22
    :goto_9
    if-eqz v10, :cond_23

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/T/T/T3/TR;->T(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    :catch_0
    move-exception v13

    :try_start_a
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v6}, Lcom/T/T/TN/T3;->T3()Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v3}, Lcom/T/T/TN/T3;->T2()Ljava/lang/reflect/Method;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_22

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v3}, Lcom/T/T/TN/T3;->T2()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object p4

    goto :goto_9

    :catch_1
    move-exception v13

    :try_start_c
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/T/T/T3/T/TM;->TN:Lcom/T/T/TN/T3;

    invoke-virtual {v6}, Lcom/T/T/TN/T3;->T2()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_25
    move-object/from16 v8, v16

    goto/16 :goto_6

    :cond_26
    move-object/from16 v8, v16

    goto/16 :goto_7
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v3

    iget-object v4, p0, Lcom/T/T/T3/T/TM;->T:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/T0;

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/T/T/T3/T/TM;->T:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/T0;

    :cond_1
    if-nez v1, :cond_3

    sget-object v4, Lcom/T/T/T3/TN;->TG:Lcom/T/T/T3/TN;

    invoke-virtual {p1, v4}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/T/T/TN;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setter not found, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/T/T/T3/T/TM;->T2:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v3}, Lcom/T/T/T3/Te;->T2()V

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    invoke-virtual {v1}, Lcom/T/T/T3/T/T0;->T()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/T/T/T3/T/T0;->T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public T3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/T/T/T3/T/T0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T3/T/TM;->T:Ljava/util/Map;

    return-object v0
.end method
