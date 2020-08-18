.class public Lcom/T/T/T3/T/Tu;
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

    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
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

    const/16 v6, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->To()I

    move-result v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/T/T/T3/T/Tu;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v4}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/Tu;->T(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/T/Tu;->TN()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    :cond_3
    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/T/T/T3/T/Tu;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v4}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/T/T/TN/Ty;->TB(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2, v3}, Lcom/T/T/T3/T/Tu;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
