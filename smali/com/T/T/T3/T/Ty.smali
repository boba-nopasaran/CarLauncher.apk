.class public Lcom/T/T/T3/T/Ty;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 0
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

    invoke-direct {p0, p2, p3}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/16 v8, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/T/T/T3/T/Ty;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/T/T/T3/T/Ty;->T(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->To()I

    move-result v3

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    if-ne v3, v0, :cond_3

    :goto_1
    if-nez p2, :cond_4

    iget-object v5, p0, Lcom/T/T/T3/T/Ty;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/T/T/T3/T/Ty;->T(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {p0}, Lcom/T/T/T3/T/Ty;->TN()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    if-eqz p2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/T/T/T3/T/Ty;->T(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_8

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    if-nez p2, :cond_7

    iget-object v5, p0, Lcom/T/T/T3/T/Ty;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p2, v5}, Lcom/T/T/T3/T/Ty;->T(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/T/T/TN/Ty;->TP(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/T/T/T3/T/Ty;->TN()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    :cond_9
    if-nez p2, :cond_a

    iget-object v5, p0, Lcom/T/T/T3/T/Ty;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p2, v4}, Lcom/T/T/T3/T/Ty;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
