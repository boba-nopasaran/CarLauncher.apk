.class public Lcom/T/T/T2/T0;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T0;

    invoke-direct {v0}, Lcom/T/T/T2/T0;-><init>()V

    sput-object v0, Lcom/T/T/T2/T0;->T:Lcom/T/T/T2/T0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v13

    if-nez p2, :cond_1

    sget-object v15, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "[]"

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v13}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    sget-object v15, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p4

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    move-object/from16 v14, p4

    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    :cond_2
    move-object/from16 v5, p2

    check-cast v5, Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v15, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-class v15, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    const-string v15, "Set"

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    :cond_3
    :goto_1
    const/4 v8, 0x0

    const/16 v15, 0x5b

    :try_start_0
    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move v9, v8

    :goto_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    add-int/lit8 v8, v9, 0x1

    if-eqz v9, :cond_4

    const/16 v15, 0x2c

    :try_start_2
    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    :cond_4
    if-nez v11, :cond_6

    invoke-virtual {v13}, Lcom/T/T/T2/T30;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v8

    goto :goto_2

    :cond_5
    const-class v15, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    const-string v15, "TreeSet"

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_1

    :cond_6
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v15, Ljava/lang/Integer;

    if-ne v4, v15, :cond_7

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T3(I)V

    move v9, v8

    goto :goto_2

    :cond_7
    const-class v15, Ljava/lang/Long;

    if-ne v4, v15, :cond_8

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/T/T/T2/T30;->T(J)V

    sget-object v15, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x4c

    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T(C)V

    move v9, v8

    goto :goto_2

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v12

    add-int/lit8 v15, v8, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v11, v15, v7}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v8

    goto :goto_2

    :cond_9
    const/16 v15, 0x5d

    :try_start_4
    invoke-virtual {v13, v15}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v15

    :catchall_1
    move-exception v15

    move v8, v9

    goto :goto_3

    :cond_a
    move v9, v8

    goto/16 :goto_2
.end method
