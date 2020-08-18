.class public Lcom/T/T/T2/Tx;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->T2()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T31;

    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T31;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->Tn()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T2/T3O;

    invoke-interface {v0, p0, p1, p2}, Lcom/T/T/T2/T3O;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->TG()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T37;

    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T37;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->Ty()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T3y;

    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T3y;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method
