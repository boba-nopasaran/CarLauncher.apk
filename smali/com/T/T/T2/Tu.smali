.class public Lcom/T/T/T2/Tu;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/Tu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Tu;

    invoke-direct {v0}, Lcom/T/T/T2/Tu;-><init>()V

    sput-object v0, Lcom/T/T/T2/Tu;->T:Lcom/T/T/T2/Tu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v9

    if-nez p2, :cond_1

    sget-object v11, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v9, v11}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "[]"

    invoke-virtual {v9, v11}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v9}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    sget-object v11, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v11}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p4

    instance-of v11, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_2

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v4, v11, v12

    :cond_2
    move-object v3, p2

    check-cast v3, Ljava/util/Enumeration;

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {p1, v2, p2, v0}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/16 v11, 0x5b

    :try_start_0
    invoke-virtual {v9, v11}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    add-int/lit8 v5, v6, 0x1

    if-eqz v6, :cond_3

    const/16 v11, 0x2c

    :try_start_2
    invoke-virtual {v9, v11}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    :cond_3
    if-nez v7, :cond_4

    invoke-virtual {v9}, Lcom/T/T/T2/T30;->T()V

    move v6, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v8

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, p1, v7, v11, v4}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v5

    goto :goto_1

    :cond_5
    const/16 v11, 0x5d

    :try_start_3
    invoke-virtual {v9, v11}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto :goto_0

    :catchall_0
    move-exception v11

    :goto_2
    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v11

    :catchall_1
    move-exception v11

    move v5, v6

    goto :goto_2
.end method
