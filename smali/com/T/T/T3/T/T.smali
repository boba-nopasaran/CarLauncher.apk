.class public abstract Lcom/T/T/T3/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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

    move-result-object v2

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Lcom/T/T/T3/Te;->T(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v8}, Lcom/T/T/T3/T/T;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    const/16 v9, 0x10

    invoke-virtual {v2, v9}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v9, Lcom/T/T/T3/TN;->Tw:Lcom/T/T/T3/TN;

    invoke-virtual {v2, v9}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v0, Lcom/T/T/T3/Tw;

    invoke-direct {v0, v3}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_9

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    const/16 v9, 0x11

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object p2, v6

    :cond_5
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    const/16 v9, 0x10

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    :cond_6
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    goto/16 :goto_0

    :cond_7
    new-instance v9, Lcom/T/T/TN;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    new-instance v9, Lcom/T/T/TN;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Te()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TN()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T(I)V

    const/16 v9, 0x10

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b

    const-string v9, "val"

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Lcom/T/T/TN;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    const/16 v9, 0x11

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lcom/T/T/T3/T2;->T3(I)V

    goto/16 :goto_0

    :cond_b
    new-instance v9, Lcom/T/T/TN;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_c
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0
.end method

.method protected abstract T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method
