.class public Lcom/txznet/txz/util/recordcenter/T/T2;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:I

.field private T2:I

.field private T3:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    iput p1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T:I

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/txz/util/recordcenter/T/T;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TraceCacheBuffer readBySize, dataLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-gtz p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    if-nez v2, :cond_1

    const-string v2, "TraceCacheBuffer readBySize null buffer"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TraceCacheBuffer readBySize buffer length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", write="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget v0, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    if-gt p2, v0, :cond_2

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    sub-int v2, v0, p2

    invoke-interface {p1, v1, v2, p2}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v2, v2

    if-le p2, v2, :cond_3

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length p2, v2

    :cond_3
    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v3, v3

    sub-int v4, p2, v0

    sub-int/2addr v3, v4

    sub-int v4, p2, v0

    invoke-interface {p1, v2, v3, v4}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v2

    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    invoke-interface {p1, v3, v1, v0}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public T([BII)V
    .locals 5

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    if-nez v1, :cond_0

    iget v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    :cond_0
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v1, v1

    if-le p3, v1, :cond_1

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v1, v1

    sub-int v1, p3, v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length p3, v1

    :cond_1
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v1, v1

    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_2

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    array-length v1, v1

    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T2:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/T/T2;->T3:[B

    const/4 v3, 0x0

    sub-int v4, p3, v0

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
