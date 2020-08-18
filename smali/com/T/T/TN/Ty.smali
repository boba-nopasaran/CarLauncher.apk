.class public Lcom/T/T/TN/Ty;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lcom/T/T/TN/Ty;->T()V

    return-void
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/T/T/T/T3;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/T/T/T/T3;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v8, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v9, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v11, v12, :cond_0

    const/4 v10, 0x1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-ge v3, v11, :cond_2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v10, 0x0

    :cond_2
    if-eqz v10, :cond_0

    const-class v11, Lcom/T/T/T/T3;

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T3;

    if-eqz v0, :cond_0

    :goto_3
    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "L"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static T(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final T(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/T/T/T3/TJ;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p1, :cond_2

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "clazz is null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    instance-of v12, p0, Ljava/util/Map;

    if-eqz v12, :cond_4

    const-class v12, Ljava/util/Map;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    move-object v9, p0

    check-cast v9, Ljava/util/Map;

    const-class v12, Ljava/lang/Object;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    sget-object v12, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_3
    check-cast p0, Ljava/util/Map;

    invoke-static/range {p0 .. p2}, Lcom/T/T/TN/Ty;->T(Ljava/util/Map;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_6

    instance-of v12, p0, Ljava/util/Collection;

    if-eqz v12, :cond_6

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v8, v12, v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v1, v7, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_7

    const-class v12, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_8

    :cond_7
    invoke-static {p0}, Lcom/T/T/TN/Ty;->TP(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_9

    const-class v12, Ljava/lang/Byte;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_a

    :cond_9
    invoke-static {p0}, Lcom/T/T/TN/Ty;->T3(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_b

    const-class v12, Ljava/lang/Short;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_c

    :cond_b
    invoke-static {p0}, Lcom/T/T/TN/Ty;->TN(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_d

    const-class v12, Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e

    :cond_d
    invoke-static {p0}, Lcom/T/T/TN/Ty;->TB(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    :cond_e
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_f

    const-class v12, Ljava/lang/Long;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_10

    :cond_f
    invoke-static {p0}, Lcom/T/T/TN/Ty;->TJ(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    :cond_10
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_11

    const-class v12, Ljava/lang/Float;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_12

    :cond_11
    invoke-static {p0}, Lcom/T/T/TN/Ty;->Ty(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    :cond_12
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_13

    const-class v12, Ljava/lang/Double;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_14

    :cond_13
    invoke-static {p0}, Lcom/T/T/TN/Ty;->Tn(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    :cond_14
    const-class v12, Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_15

    invoke-static {p0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_15
    const-class v12, Ljava/math/BigDecimal;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_16

    invoke-static {p0}, Lcom/T/T/TN/Ty;->Te(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :cond_16
    const-class v12, Ljava/math/BigInteger;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_17

    invoke-static {p0}, Lcom/T/T/TN/Ty;->Tw(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    :cond_17
    const-class v12, Ljava/util/Date;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_18

    invoke-static {p0}, Lcom/T/T/TN/Ty;->TG(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    :cond_18
    const-class v12, Ljava/sql/Date;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_19

    invoke-static {p0}, Lcom/T/T/TN/Ty;->TR(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    goto/16 :goto_0

    :cond_19
    const-class v12, Ljava/sql/Timestamp;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1a

    invoke-static {p0}, Lcom/T/T/TN/Ty;->TW(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-static/range {p0 .. p2}, Lcom/T/T/TN/Ty;->T3(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    :cond_1b
    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {p0}, Lcom/T/T/TN/Ty;->TG(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1c

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v2

    goto/16 :goto_0

    :cond_1c
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v12, Lcom/T/T/TN;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not cast to : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_1d
    instance-of v12, p0, Ljava/lang/String;

    if-eqz v12, :cond_1e

    move-object v10, p0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1e

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_1e
    new-instance v12, Lcom/T/T/TN;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not cast to : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final T(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/T/T/T3/TJ;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/T/T/T3/TJ;",
            ")TT;"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    const-class v16, Ljava/util/List;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    const-class v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_1

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v7, v16, v17

    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-class v16, Ljava/util/Map;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_2

    const-class v16, Ljava/util/HashMap;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_5

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v9, v16, v17

    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v15, v16, v17

    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v10, v11

    :cond_4
    :goto_2
    return-object v10

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v13, p0

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v2, v16, v17

    instance-of v0, v2, Ljava/lang/reflect/WildcardType;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_7
    new-instance v16, Lcom/T/T/TN;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "can not cast to : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public static final T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/T/T/T3/TJ;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object p0, v1

    goto :goto_0

    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final T(Ljava/util/Map;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/T/T/T3/TJ;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    const-class v23, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    const-string v23, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v23, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v23, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v23, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Number;

    if-nez v22, :cond_1

    const/4 v14, 0x0

    :goto_0
    new-instance v19, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1, v10, v14}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_1
    return-object v19

    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v14

    goto :goto_0

    :cond_2
    sget-object v23, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    if-nez v15, :cond_3

    new-instance v23, Ljava/lang/ClassNotFoundException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " not found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v6

    new-instance v23, Lcom/T/T/TN;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/T/T/TN/Ty;->T(Ljava/util/Map;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/T/T/Te;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    check-cast v0, Lcom/T/T/Te;

    move-object/from16 v18, v0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p1, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_1

    :cond_5
    new-instance v18, Lcom/T/T/Te;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/T/T/Te;-><init>(Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object p2

    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v21

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v23

    if-nez v23, :cond_8

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/T/T/T3/T/T0;

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual {v9}, Lcom/T/T/T3/T/T0;->T3()Ljava/lang/reflect/Method;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v20, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v22, v23, v24

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Lcom/T/T/T3/T/T0;->T2()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static final T(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static T(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/TN/T2;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_10

    aget-object v18, v5, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    sget-object v23, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    const-class v23, Ljava/lang/ClassLoader;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "getMetaClass"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "groovy.lang.MetaClass"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    :cond_2
    const-class v22, Lcom/T/T/T/T3;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/T/T/T/T3;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/T/T/T/T3;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/T/T/T/T3;->T2()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v4}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v4}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v21

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    :cond_4
    new-instance v22, Lcom/T/T/TN/T2;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const-string v22, "get"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const-string v22, "getClass"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v22

    if-eqz v22, :cond_c

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    :cond_6
    if-eqz v9, :cond_7

    const-class v22, Lcom/T/T/T/T3;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/T/T/T/T3;

    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcom/T/T/T/T3;->T2()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v21

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    :cond_7
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    :cond_8
    new-instance v22, Lcom/T/T/TN/T2;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v22, "is"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v22

    if-eqz v22, :cond_e

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-eqz v9, :cond_a

    const-class v22, Lcom/T/T/T/T3;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/T/T/T/T3;

    if-eqz v10, :cond_a

    invoke-interface {v10}, Lcom/T/T/T/T3;->T2()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v21

    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    :cond_a
    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    :cond_b
    new-instance v22, Lcom/T/T/TN/T2;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    const/16 v22, 0x5f

    move/from16 v0, v22

    if-ne v7, v0, :cond_d

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_d
    const/16 v22, 0x66

    move/from16 v0, v22

    if-ne v7, v0, :cond_0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_e
    const/16 v22, 0x5f

    move/from16 v0, v22

    if-ne v6, v0, :cond_f

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    :cond_f
    const/16 v22, 0x66

    move/from16 v0, v22

    if-ne v6, v0, :cond_0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_15

    aget-object v9, v5, v14

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    if-eqz v22, :cond_12

    :cond_11
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_12
    const-class v22, Lcom/T/T/T/T3;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/T/T/T/T3;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v21

    if-eqz v10, :cond_13

    invoke-interface {v10}, Lcom/T/T/T/T3;->T2()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface {v10}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v21

    :cond_13
    if-eqz p1, :cond_14

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_11

    :cond_14
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    new-instance v22, Lcom/T/T/TN/T2;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_15
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/16 v20, 0x0

    const-class v22, Lcom/T/T/T/T2;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/T/T/T/T2;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Lcom/T/T/T/T2;->T()[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_18

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const/4 v8, 0x1

    move-object/from16 v5, v20

    array-length v0, v5

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v14, v0, :cond_16

    aget-object v16, v5, v14

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const/4 v8, 0x0

    :cond_16
    :goto_7
    if-eqz v8, :cond_19

    move-object/from16 v5, v20

    array-length v0, v5

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v14, v0, :cond_1b

    aget-object v16, v5, v14

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/T/T/TN/T2;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_18
    const/4 v8, 0x0

    goto :goto_7

    :cond_19
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/T/T/TN/T2;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1b
    return-object v12
.end method

.method public static T()V
    .locals 3

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/T/T/TN/Ty;->T:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static T(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    const-class v6, Lcom/T/T/T/T2;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/T/T/T/T2;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/T/T/T/T2;->T3()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Lcom/T/T/T/T2;->T3()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final T2(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final T3(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final T3(Ljava/lang/Object;Ljava/lang/Class;Lcom/T/T/T3/TJ;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/T/T/T3/TJ;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    instance-of v11, p0, Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_0

    :cond_2
    instance-of v11, p0, Ljava/lang/Number;

    if-eqz v11, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v8

    const-string v11, "values"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {p1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    move-object v1, v10

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v9, v1, v4

    move-object v0, v9

    check-cast v0, Ljava/lang/Enum;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eq v11, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_3
    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static final TB(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final TG(Ljava/lang/Object;)Ljava/util/Date;
    .locals 9

    const/4 v7, 0x0

    if-nez p0, :cond_0

    move-object p0, v7

    :goto_0
    return-object p0

    :cond_0
    instance-of v6, p0, Ljava/util/Calendar;

    if-eqz v6, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v6, p0, Ljava/util/Date;

    if-eqz v6, :cond_2

    check-cast p0, Ljava/util/Date;

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    :cond_3
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_9

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/T/T/T;->T2:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_4

    sget-object v2, Lcom/T/T/T;->T2:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    const-string v2, "yyyy-MM-dd"

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_6

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    goto :goto_1

    :cond_6
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Lcom/T/T/TN;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to Date, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    move-object p0, v7

    goto/16 :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    new-instance v6, Lcom/T/T/TN;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to Date, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final TJ(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_2
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v1, Lcom/T/T/T3/Tw;

    invoke-direct {v1, v2}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/T/T/T3/Tw;->T3(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->close()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to long, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final TN(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final TP(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move-object p0, v2

    :goto_0
    return-object p0

    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    move-object p0, v2

    goto :goto_0

    :cond_4
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final TR(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object p0, v4

    :goto_0
    return-object p0

    :cond_0
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    :cond_1
    instance-of v3, p0, Ljava/sql/Date;

    if-eqz v3, :cond_2

    check-cast p0, Ljava/sql/Date;

    goto :goto_0

    :cond_2
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object p0, v4

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_7

    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static final TW(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object p0, v4

    :goto_0
    return-object p0

    :cond_0
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    :cond_1
    instance-of v3, p0, Ljava/sql/Timestamp;

    if-eqz v3, :cond_2

    check-cast p0, Ljava/sql/Timestamp;

    goto :goto_0

    :cond_2
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object p0, v4

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_7

    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance p0, Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0
.end method

.method public static final Te(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final Tn(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final Tw(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object p0, v1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final Ty(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/T/T/TN;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method
