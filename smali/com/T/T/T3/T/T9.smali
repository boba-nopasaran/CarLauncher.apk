.class public final Lcom/T/T/T3/T/T9;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private final T2:I

.field private final TN:Ljava/util/List;

.field private final Te:Lcom/T/T/T3/T2;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/T2;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    iput-object p1, p0, Lcom/T/T/T3/T/T9;->Te:Lcom/T/T/T3/T2;

    iput p3, p0, Lcom/T/T/T3/T/T9;->T2:I

    iput-object p2, p0, Lcom/T/T/T3/T/T9;->TN:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
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

    return-void
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v4, p0, Lcom/T/T/T3/T/T9;->TN:Ljava/util/List;

    iget v5, p0, Lcom/T/T/T3/T/T9;->T2:I

    invoke-interface {v4, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/T/T/T3/T/T9;->TN:Ljava/util/List;

    instance-of v4, v4, Lcom/T/T/T3;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/T/T/T3/T/T9;->TN:Ljava/util/List;

    check-cast v3, Lcom/T/T/T3;

    invoke-virtual {v3}, Lcom/T/T/T3;->T3()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget v4, p0, Lcom/T/T/T3/T/T9;->T2:I

    if-le v1, v4, :cond_0

    invoke-virtual {v3}, Lcom/T/T/T3;->T2()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/T/T/T3;->T2()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/T/T/T3/T/T9;->Te:Lcom/T/T/T3/T2;

    invoke-virtual {v5}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    iget v4, p0, Lcom/T/T/T3/T/T9;->T2:I

    invoke-static {v0, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method
