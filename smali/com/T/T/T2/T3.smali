.class public Lcom/T/T/T2/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# instance fields
.field private final T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final T3:Lcom/T/T/T2/T3B;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/T/T/T2/T3B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/T2/T3B;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T/T/T2/T3;->T:Ljava/lang/Class;

    iput-object p2, p0, Lcom/T/T/T2/T3;->T3:Lcom/T/T/T2/T3B;

    return-void
.end method


# virtual methods
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v5

    if-nez p2, :cond_1

    sget-object v7, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "[]"

    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    move-object v7, p2

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    array-length v6, v0

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0x5b

    :try_start_0
    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_5

    if-eqz v2, :cond_2

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    :cond_2
    aget-object v3, v0, v2

    if-nez v3, :cond_3

    const-string v7, "null"

    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/T/T/T2/T3;->T:Ljava/lang/Class;

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/T/T/T2/T3;->T3:Lcom/T/T/T2/T3B;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, p1, v3, v8, v9}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v7

    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, p1, v3, v7, v8}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_2

    :cond_5
    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto :goto_0
.end method
