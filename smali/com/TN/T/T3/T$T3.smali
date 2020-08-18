.class public final Lcom/TN/T/T3/T$T3;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/T3/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T3"
.end annotation


# instance fields
.field public T3:[Lcom/TN/T/T3/T$T;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/T3/T$T3;->TN()Lcom/TN/T/T3/T$T3;

    return-void
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/TN/T/T3/T$T3;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T3;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 4

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v2

    iget-object v3, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T3;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/TN/T/T3/T$T;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/TN/T/T3/T$T;

    invoke-direct {v5}, Lcom/TN/T/T3/T$T;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/TN/T/T3/T$T;

    invoke-direct {v5}, Lcom/TN/T/T3/T$T;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    iput-object v2, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/T3/T$T3;
    .locals 1

    invoke-static {}, Lcom/TN/T/T3/T$T;->TN()[Lcom/TN/T/T3/T$T;

    move-result-object v0

    iput-object v0, p0, Lcom/TN/T/T3/T$T3;->T3:[Lcom/TN/T/T3/T$T;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/T3/T$T3;->T:I

    return-object p0
.end method
