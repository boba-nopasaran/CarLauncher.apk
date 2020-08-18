.class public Lcom/T/T/TN/T3;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private T2:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private T3:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private TN:Ljava/lang/reflect/Method;

.field private final Te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/TN/T2;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/T/T/TN/T3;->Te:Ljava/util/List;

    iput-object p1, p0, Lcom/T/T/TN/T3;->T:Ljava/lang/Class;

    return-void
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/TN/T3;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/T/T/TN/T3;"
        }
    .end annotation

    new-instance v19, Lcom/T/T/TN/T3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/T/T/TN/T3;-><init>(Ljava/lang/Class;)V

    invoke-static/range {p0 .. p0}, Lcom/T/T/TN/T3;->T(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v23

    if-eqz v23, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/T/T/TN/T3;->T(Ljava/lang/reflect/Constructor;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    aget-object v10, v18, v27

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_b

    :cond_1
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_2
    if-nez v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/T/T/TN/T3;->T3(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v22

    if-eqz v22, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/T/T/TN/T3;->T3(Ljava/lang/reflect/Constructor;)V

    const/16 v26, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v33, v3, v26

    const/16 v25, 0x0

    move-object/from16 v18, v33

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v32, v18, v27

    move-object/from16 v0, v32

    instance-of v3, v0, Lcom/T/T/T/T3;

    if-eqz v3, :cond_4

    move-object/from16 v25, v32

    check-cast v25, Lcom/T/T/T/T3;

    :cond_3
    if-nez v25, :cond_5

    new-instance v3, Lcom/T/T/TN;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v26

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v26

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/T/T/TN/T3;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    new-instance v2, Lcom/T/T/TN/T2;

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/T/T/TN/T3;->T2(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    if-eqz v24, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/T/T/TN/T3;->T(Ljava/lang/reflect/Method;)V

    const/16 v26, 0x0

    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_1c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v33, v3, v26

    const/16 v25, 0x0

    move-object/from16 v18, v33

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    aget-object v32, v18, v27

    move-object/from16 v0, v32

    instance-of v3, v0, Lcom/T/T/T/T3;

    if-eqz v3, :cond_8

    move-object/from16 v25, v32

    check-cast v25, Lcom/T/T/T/T3;

    :cond_7
    if-nez v25, :cond_9

    new-instance v3, Lcom/T/T/TN;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v26

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v26

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/T/T/TN/T3;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    new-instance v2, Lcom/T/T/TN/T2;

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    :cond_a
    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default constructor not found. "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_c
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-class v3, Lcom/T/T/T/T3;

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    check-cast v17, Lcom/T/T/T/T3;

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/T/T/T/T3;

    move-result-object v17

    :cond_d
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Lcom/T/T/T/T3;->TN()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v17 .. v17}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Lcom/T/T/TN/T2;

    const/4 v11, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_1

    :cond_e
    const-string v3, "set"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/T/T/TN/T3;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_11

    const-class v3, Lcom/T/T/T/T3;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Lcom/T/T/T/T3;

    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Lcom/T/T/TN/T2;

    move-object v11, v7

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0x5f

    move/from16 v0, v20

    if-ne v0, v3, :cond_10

    const/4 v3, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_10
    const/16 v3, 0x66

    move/from16 v0, v20

    if-ne v0, v3, :cond_1

    const/4 v3, 0x3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_11
    new-instance v8, Lcom/T/T/TN/T2;

    const/4 v11, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    move/from16 v28, v27

    :goto_7
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    aget-object v7, v18, v28

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    :goto_8
    add-int/lit8 v27, v28, 0x1

    move/from16 v28, v27

    goto :goto_7

    :cond_14
    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/T/T/TN/T3;->TN()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_15
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/T/T/TN/T2;

    invoke-virtual/range {v29 .. v29}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v21, 0x1

    goto :goto_9

    :cond_16
    if-nez v21, :cond_13

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-class v3, Lcom/T/T/T/T3;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Lcom/T/T/T/T3;

    if-eqz v25, :cond_17

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v25 .. v25}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v9

    :cond_17
    new-instance v11, Lcom/T/T/TN/T2;

    const/4 v13, 0x0

    move-object v12, v9

    move-object v14, v7

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-direct/range {v11 .. v16}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    goto :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    aget-object v10, v18, v27

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1a

    :cond_19
    :goto_b
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    :cond_1a
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "get"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_19

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-class v3, Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1b

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1b

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_19

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/T/T/TN/T3;->T(Ljava/lang/String;)Lcom/T/T/TN/T2;

    move-result-object v2

    if-nez v2, :cond_19

    new-instance v8, Lcom/T/T/TN/T2;

    const/4 v11, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/T/T/TN/T3;->T(Lcom/T/T/TN/T2;)Z

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_b

    :cond_1c
    return-object v19
.end method

.method public static T(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    move-object v2, v1

    :cond_2
    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static T2(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lcom/T/T/T/T;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    new-instance v6, Lcom/T/T/TN;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object v2, v5

    :cond_3
    return-object v2
.end method

.method public static T3(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    const-class v6, Lcom/T/T/T/T;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_0

    new-instance v6, Lcom/T/T/TN;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v3, v2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/T/T/TN/T2;
    .locals 3

    iget-object v2, p0, Lcom/T/T/TN/T3;->Te:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/TN/T2;

    invoke-virtual {v1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public T()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T3;->T3:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public T(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/T/T/TN/T3;->T3:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public T(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/T/T/TN/T3;->TN:Ljava/lang/reflect/Method;

    return-void
.end method

.method public T(Lcom/T/T/TN/T2;)Z
    .locals 4

    iget-object v2, p0, Lcom/T/T/TN/T3;->Te:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/TN/T2;

    invoke-virtual {v1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/T/T/TN/T3;->Te:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public T2()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T3;->TN:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public T3()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T3;->T2:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public T3(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/T/T/TN/T3;->T2:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public TN()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/TN/T2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T3;->Te:Ljava/util/List;

    return-object v0
.end method
