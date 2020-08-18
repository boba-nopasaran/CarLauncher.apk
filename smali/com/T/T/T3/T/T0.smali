.class public abstract Lcom/T/T/T3/T/T0;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected final T:Lcom/T/T/TN/T2;

.field protected final T3:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T/T/T3/T/T0;->T3:Ljava/lang/Class;

    iput-object p2, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
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
.end method

.method public T(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public T(Ljava/lang/Object;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->TN()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_6

    :try_start_0
    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->Tw()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Lcom/T/T/TN;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set property error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v8}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_3
    const-class v6, Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    check-cast p2, Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v6}, Lcom/T/T/TN/T2;->Te()Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    new-instance v6, Lcom/T/T/TN;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set property error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v8}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public T(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public T(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public T2()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->Te()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public T3()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->TN()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public TN()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public Te()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T/T0;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->T3()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
