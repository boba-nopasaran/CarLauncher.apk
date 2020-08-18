.class public Lcom/T/T/T3/T/T6;
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

    iput-object v0, p0, Lcom/T/T/T3/T/T6;->T2:Lcom/T/T/T3/T/TS;

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T/T6;->T2:Lcom/T/T/T3/T/TS;

    invoke-interface {v0}, Lcom/T/T/T3/T/TS;->T()I

    move-result v0

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 8
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

    const/16 v7, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v2

    invoke-virtual {v0, v7}, Lcom/T/T/T3/Te;->T(I)V

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/T/T/T3/T/T6;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2, v2, v3}, Lcom/T/T/T3/T/T6;->T(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v0, v7}, Lcom/T/T/T3/Te;->T(I)V

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/T/T6;->TN()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    :cond_3
    if-nez p2, :cond_5

    iget-object v5, p0, Lcom/T/T/T3/T/T6;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/T/T/TN/Ty;->TJ(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2, v4}, Lcom/T/T/T3/T/T6;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
