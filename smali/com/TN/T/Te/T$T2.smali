.class public final Lcom/TN/T/Te/T$T2;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Te/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T2"
.end annotation


# instance fields
.field public T2:Lcom/TN/T/Te/T$T3;

.field public T3:Ljava/lang/Integer;

.field public TN:Lcom/TN/T/Te/T$T;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/Te/T$T2;->TN()Lcom/TN/T/Te/T$T2;

    return-void
.end method

.method public static T([B)Lcom/TN/T/Te/T$T2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    new-instance v0, Lcom/TN/T/Te/T$T2;

    invoke-direct {v0}, Lcom/TN/T/Te/T$T2;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/Te/T$T2;

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

    invoke-virtual {p0, p1}, Lcom/TN/T/Te/T$T2;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T2;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_0
    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    :cond_1
    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 3

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-nez v1, :cond_1

    new-instance v1, Lcom/TN/T/Te/T$T3;

    invoke-direct {v1}, Lcom/TN/T/Te/T$T3;-><init>()V

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-virtual {p1, v1}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-nez v1, :cond_2

    new-instance v1, Lcom/TN/T/Te/T$T;

    invoke-direct {v1}, Lcom/TN/T/Te/T$T;-><init>()V

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    :cond_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-virtual {p1, v1}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Te/T$T2;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Te/T$T2;->T:I

    return-object p0
.end method
