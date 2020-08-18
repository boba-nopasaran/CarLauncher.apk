.class public Lcom/T/T/T3/T/T3w;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private final T2:Lcom/T/T/T3/T/TS;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 1
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

    invoke-virtual {p1, p3}, Lcom/T/T/T3/TJ;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    iput-object v0, p0, Lcom/T/T/T3/T/T3w;->T2:Lcom/T/T/T3/T/TS;

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T/T3w;->T2:Lcom/T/T/T3/T/TS;

    invoke-interface {v0}, Lcom/T/T/T3/T/TS;->T()I

    move-result v0

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
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

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    :goto_0
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/T/T/T3/T/T3w;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/T3w;->T(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
