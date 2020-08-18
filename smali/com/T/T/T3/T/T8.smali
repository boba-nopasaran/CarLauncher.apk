.class public Lcom/T/T/T3/T/T8;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T8;

    invoke-direct {v0}, Lcom/T/T/T3/T/T8;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_0

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_0

    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, expect {, actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Te()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v10

    invoke-interface {v3}, Lcom/T/T/T3/T/TS;->T()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    :goto_1
    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TL()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v5, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v7

    const-string v11, ".."

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v6

    invoke-virtual {v6}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v5

    :goto_2
    const/16 v11, 0xd

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_7

    new-instance v11, Lcom/T/T/TN;

    const-string v12, "illegal ref"

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    invoke-virtual {p0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v11

    :cond_3
    :try_start_2
    const-string v11, "$"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v8, v1

    :goto_3
    invoke-virtual {v8}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v8}, Lcom/T/T/T3/TR;->T2()Lcom/T/T/T3/TR;

    move-result-object v8

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-instance v11, Lcom/T/T/T3/T2$T;

    invoke-direct {v11, v1, v7}, Lcom/T/T/T3/T2$T;-><init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/T2$T;)V

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/T/T/T3/T2;->T(I)V

    goto :goto_2

    :cond_6
    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "illegal ref, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    invoke-static {v13}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object p1, v5

    goto/16 :goto_1

    :cond_8
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_a

    sget-object v11, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T3(I)V

    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_9

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->T()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    invoke-interface {v3}, Lcom/T/T/T3/T/TS;->T()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, p0, v0, v11}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0x11

    if-eq v11, v12, :cond_b

    new-instance v11, Lcom/T/T/TN;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, expect :, actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_b
    invoke-interface {v10}, Lcom/T/T/T3/T/TS;->T()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V

    move-object/from16 v0, p3

    invoke-interface {v10, p0, v0, v2}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_1

    invoke-interface {v3}, Lcom/T/T/T3/T/TS;->T()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static T(Lcom/T/T/T3/T2;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v5

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_0

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, expect {, actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TN()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v2

    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    sget-object v9, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v9}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_0
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_2

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v9, 0x22

    if-ne v0, v9, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    const/16 v9, 0x3a

    if-eq v0, v9, :cond_8

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expect \':\' at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tw()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v9

    :cond_3
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_4

    :try_start_1
    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tr()V

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    :goto_1
    return-object p1

    :cond_4
    const/16 v9, 0x27

    if-ne v0, v9, :cond_6

    :try_start_2
    sget-object v9, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v9}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Lcom/T/T/TN;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v9

    const/16 v10, 0x27

    invoke-virtual {v5, v9, v10}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    const/16 v9, 0x3a

    if-eq v0, v9, :cond_8

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expect \':\' at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tw()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    sget-object v9, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    invoke-virtual {p0, v9}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TN;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Lcom/T/T/TN;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/T/T/T3/Te;->T3(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    const/16 v9, 0x3a

    if-eq v0, v9, :cond_8

    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expect \':\' at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tw()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TP()C

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tu()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TB()C

    move-result v0

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->Tr()V

    sget-object v9, Lcom/T/T/T;->T:Ljava/lang/String;

    if-ne v4, v9, :cond_b

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v1, v9, :cond_9

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/T/T/T3/Te;->T(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_1

    :cond_9
    :try_start_3
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/T/T/T3/T2;->T(I)V

    if-eqz v2, :cond_a

    instance-of v9, p3, Ljava/lang/Integer;

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TG()V

    :cond_a
    invoke-interface {v3, p0, v1, p3}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    move-object p1, v9

    goto/16 :goto_1

    :cond_b
    :try_start_4
    invoke-virtual {v5}, Lcom/T/T/T3/Te;->T()V

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_d

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->T()V

    :goto_2
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v8, v4}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->TN()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    const/16 v9, 0x14

    if-eq v6, v9, :cond_c

    const/16 v9, 0xf

    if-ne v6, v9, :cond_e

    :cond_c
    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_1

    :cond_d
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    :cond_e
    const/16 v9, 0xd

    if-ne v6, v9, :cond_1

    invoke-virtual {v5}, Lcom/T/T/T3/Te;->T()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v2}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/T/T/T3/T/T8;->T(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, v0, v2, p3}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)Lcom/T/T/T3/TR;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/T/T/T3/T/T8;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p1, v0}, Lcom/T/T/T3/T2;->T(Lcom/T/T/T3/TR;)V

    throw v3
.end method

.method protected T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    const-class v3, Ljava/lang/String;

    if-ne v3, v0, :cond_0

    invoke-static {p1, p4, v2, p3}, Lcom/T/T/T3/T/T8;->T(Lcom/T/T/T3/T2;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p1, p4, v0, v2, p3}, Lcom/T/T/T3/T/T8;->T(Lcom/T/T/T3/T2;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4, p3}, Lcom/T/T/T3/T2;->T(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method protected T(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v3, Ljava/util/Properties;

    if-ne p1, v3, :cond_0

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    :goto_0
    return-object v3

    :cond_0
    const-class v3, Ljava/util/Hashtable;

    if-ne p1, v3, :cond_1

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_1
    const-class v3, Ljava/util/IdentityHashMap;

    if-ne p1, v3, :cond_2

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_0

    :cond_2
    const-class v3, Ljava/util/SortedMap;

    if-eq p1, v3, :cond_3

    const-class v3, Ljava/util/TreeMap;

    if-ne p1, v3, :cond_4

    :cond_3
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_4
    const-class v3, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v3, :cond_5

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v3, :cond_6

    :cond_5
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_6
    const-class v3, Ljava/util/Map;

    if-eq p1, v3, :cond_7

    const-class v3, Ljava/util/HashMap;

    if-ne p1, v3, :cond_8

    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_8
    const-class v3, Ljava/util/LinkedHashMap;

    if-ne p1, v3, :cond_9

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_9
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_a

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/T/T/T3/T/T8;->T(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupport type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/T/T/TN;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupport type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
