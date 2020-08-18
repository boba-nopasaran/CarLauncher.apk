.class public final Lcom/TN/T/T3/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/T3/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# static fields
.field private static volatile Tn:[Lcom/TN/T/T3/T$T;


# instance fields
.field public T2:[Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TN:Ljava/lang/Integer;

.field public Te:Ljava/lang/Integer;

.field public Tw:Ljava/lang/Integer;

.field public Ty:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/T3/T$T;->Te()Lcom/TN/T/T3/T$T;

    return-void
.end method

.method public static TN()[Lcom/TN/T/T3/T$T;
    .locals 2

    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    if-nez v0, :cond_1

    sget-object v1, Lcom/T3/T/T/T2;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/TN/T/T3/T$T;

    sput-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/TN/T/T3/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T;

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

    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    :cond_3
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_4
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_5
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_6
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 7

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v4

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_3
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    return v4
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T;
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

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public Te()Lcom/TN/T/T3/T$T;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    sget-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/T3/T$T;->T:I

    return-object p0
.end method
