.class public final Lcom/T/T/T2/T32;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T32;

    invoke-direct {v0}, Lcom/T/T/T2/T32;-><init>()V

    sput-object v0, Lcom/T/T/T2/T32;->T:Lcom/T/T/T2/T32;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v19, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v13

    const/4 v6, 0x0

    if-eqz v18, :cond_0

    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v14, p4

    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v6, v19, v20

    :cond_0
    if-nez p2, :cond_2

    sget-object v19, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v13}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_2
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    const-string v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_8

    :try_start_0
    sget-object v19, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x5b

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TN()V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v15, :cond_7

    if-eqz v8, :cond_4

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v11

    new-instance v10, Lcom/T/T/T2/T3L;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v5, v0, v1}, Lcom/T/T/T2/T3L;-><init>(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v9, v1, v6}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v19

    :cond_6
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/T/T/T2/T30;->T()V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Te()V

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    const/16 v19, 0x5d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0

    :cond_8
    const/16 v19, 0x5b

    :try_start_2
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_e

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v19, "null,"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_a

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x2c

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/T/T/T2/T30;->T(IC)V

    goto :goto_4

    :cond_a
    const-class v19, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_c

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    if-eqz v18, :cond_b

    const/16 v19, 0x4c

    move-wide/from16 v0, v16

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/T/T/T2/T30;->T(JC)V

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_4

    :cond_b
    const/16 v19, 0x2c

    move-wide/from16 v0, v16

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/T/T/T2/T30;->T(JC)V

    goto :goto_4

    :cond_c
    new-instance v10, Lcom/T/T/T2/T3L;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v5, v0, v1}, Lcom/T/T/T2/T3L;-><init>(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    :goto_5
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_4

    :cond_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v9, v1, v6}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_5

    :cond_e
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_f

    const-string v19, "null]"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0

    :cond_f
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_10

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/T/T/T2/T30;->T(IC)V

    goto :goto_6

    :cond_10
    const-class v19, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_12

    if-eqz v18, :cond_11

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v19, 0x4c

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/T/T/T2/T30;->T(JC)V

    const/16 v19, 0x5d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_6

    :cond_11
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/16 v19, 0x5d

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Lcom/T/T/T2/T30;->T(JC)V

    goto :goto_6

    :cond_12
    new-instance v10, Lcom/T/T/T2/T3L;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v5, v0, v1}, Lcom/T/T/T2/T3L;-><init>(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    :goto_7
    const/16 v19, 0x5d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_6

    :cond_13
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v9, v1, v6}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7
.end method
