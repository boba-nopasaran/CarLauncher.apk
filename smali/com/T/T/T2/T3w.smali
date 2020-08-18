.class public Lcom/T/T/T2/T3w;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T3w;

    invoke-direct {v0}, Lcom/T/T/T2/T3w;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3w;->T:Lcom/T/T/T2/T3w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v11

    if-nez p2, :cond_0

    invoke-virtual {v11}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v9, p2

    check-cast v9, Ljava/util/Map;

    sget-object v16, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_1

    instance-of v0, v9, Ljava/util/SortedMap;

    move/from16 v16, v0

    if-nez v16, :cond_1

    instance-of v0, v9, Ljava/util/LinkedHashMap;

    move/from16 v16, v0

    if-nez v16, :cond_1

    :try_start_0
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v12

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x7b

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TN()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x1

    sget-object v16, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_3

    sget-object v16, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    instance-of v0, v5, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    :cond_5
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    sget-object v16, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_6
    if-nez v6, :cond_7

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    :cond_7
    sget-object v16, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v8, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;Z)V

    :goto_3
    const/4 v6, 0x0

    if-nez v15, :cond_b

    invoke-virtual {v11}, Lcom/T/T/T2/T30;->T()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v16

    :cond_9
    if-nez v6, :cond_a

    const/16 v16, 0x2c

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_3

    :cond_b
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v13, :cond_c

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v5, v1}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_2

    :cond_c
    move-object v13, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v5, v1}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Te()V

    sget-object v16, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_e
    const/16 v16, 0x7d

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_0

    :catch_0
    move-exception v16

    goto/16 :goto_1
.end method
