.class public Lcom/T/T/T2/T3L;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final T:Lcom/T/T/T2/T3L;

.field private final T2:Ljava/lang/Object;

.field private final T3:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T/T/T2/T3L;->T:Lcom/T/T/T2/T3L;

    iput-object p2, p0, Lcom/T/T/T2/T3L;->T3:Ljava/lang/Object;

    iput-object p3, p0, Lcom/T/T/T2/T3L;->T2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public T()Lcom/T/T/T2/T3L;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/T3L;->T:Lcom/T/T/T2/T3L;

    return-object v0
.end method

.method public T2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/T/T/T2/T3L;->T:Lcom/T/T/T2/T3L;

    if-nez v0, :cond_0

    const-string v0, "$"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/T/T/T2/T3L;->T2:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/T/T/T2/T3L;->T:Lcom/T/T/T2/T3L;

    invoke-virtual {v1}, Lcom/T/T/T2/T3L;->T2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/T/T/T2/T3L;->T2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/T/T/T2/T3L;->T:Lcom/T/T/T2/T3L;

    invoke-virtual {v1}, Lcom/T/T/T2/T3L;->T2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/T/T/T2/T3L;->T2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public T3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/T3L;->T3:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/T/T/T2/T3L;->T2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
