.class public final Lcom/TN/T/Ty/T$T2;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Ty/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T2"
.end annotation


# instance fields
.field public T2:Ljava/lang/Integer;

.field public T3:Ljava/lang/String;

.field public TN:[Lcom/TN/T/Ty/T$T3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/Ty/T$T2;->TN()Lcom/TN/T/Ty/T$T2;

    return-void
.end method

.method public static T([B)Lcom/TN/T/Ty/T$T2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    new-instance v0, Lcom/TN/T/Ty/T$T2;

    invoke-direct {v0}, Lcom/TN/T/Ty/T$T2;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/Ty/T$T2;

    return-object v0
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/TN/T/Ty/T$T2;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Ty/T$T2;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_1
    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 5

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v2

    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    array-length v3, v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    aget-object v0, v3, v1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Ty/T$T2;
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
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/TN/T/Ty/T$T3;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/TN/T/Ty/T$T3;

    invoke-direct {v5}, Lcom/TN/T/Ty/T$T3;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/TN/T/Ty/T$T3;

    invoke-direct {v5}, Lcom/TN/T/Ty/T$T3;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    iput-object v2, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Ty/T$T2;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    invoke-static {}, Lcom/TN/T/Ty/T$T3;->TN()[Lcom/TN/T/Ty/T$T3;

    move-result-object v0

    iput-object v0, p0, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Ty/T$T2;->T:I

    return-object p0
.end method
