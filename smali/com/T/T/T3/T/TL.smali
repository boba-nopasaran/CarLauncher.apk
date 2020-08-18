.class public Lcom/T/T/T3/T/TL;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private T2:Lcom/T/T/T3/T/TS;


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

    iget-object v0, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    invoke-interface {v0}, Lcom/T/T/T3/T/TS;->T()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6
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

    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v3

    iget-object v4, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3, v4}, Lcom/T/T/T3/TJ;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    iput-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    :cond_0
    instance-of v3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/T/T/T3/TR;->T(Ljava/lang/reflect/Type;)V

    :cond_1
    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    invoke-virtual {p0}, Lcom/T/T/T3/T/TL;->Te()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TN()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tn()Lcom/T/T/T3/T2$T;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/T/T0;)V

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/TR;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/T/T/T3/T2;->T(I)V

    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/TL;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
