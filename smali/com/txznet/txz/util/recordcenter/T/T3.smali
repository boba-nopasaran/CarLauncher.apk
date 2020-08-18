.class public Lcom/txznet/txz/util/recordcenter/T/T3;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:[B

.field private T2:I

.field private T3:I

.field private TN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7d00

    invoke-direct {p0, v0}, Lcom/txznet/txz/util/recordcenter/T/T3;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    return-void
.end method


# virtual methods
.method public T([BII)I
    .locals 7

    const/16 v4, -0x3e7

    const/4 v3, -0x1

    iget v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    if-le v2, v5, :cond_3

    move v3, p3

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, -0x4

    if-le p3, v5, :cond_0

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v5, v2, v5

    add-int/lit8 v3, v5, -0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "discard record data size["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], read["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], write["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/txz/util/recordcenter/T/T3;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-eq v0, v5, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_5

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "discard record data size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], read["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], write["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/txz/util/recordcenter/T/T3;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v3, v5, v6

    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int v5, p2, v3

    sub-int v6, p3, v3

    invoke-virtual {p0, p1, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T3;->T([BII)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v4, v3

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, p3

    iget-object v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v6, v6

    rem-int v1, v5, v6

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    goto/16 :goto_1
.end method

.method public T()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/txznet/txz/util/recordcenter/T/T;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    iget v3, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    if-ne v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    sub-int v6, v3, v6

    invoke-interface {p1, v4, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v2

    :goto_1
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    rem-int v1, v4, v5

    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v4, :cond_0

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iget-object v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v6, v6

    iget v7, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    sub-int/2addr v6, v7

    invoke-interface {p1, v4, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v2

    goto :goto_1
.end method
