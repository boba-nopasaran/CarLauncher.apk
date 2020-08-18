.class final Lcom/baidu/speech/CycleBuffer;
.super Ljava/lang/Object;
.source "CycleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/CycleBuffer$CycleReader;
    }
.end annotation


# instance fields
.field volatile finished:Z

.field mBuffer:[B

.field volatile mLimit:I

.field mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x75300

    invoke-direct {p0, v0}, Lcom/baidu/speech/CycleBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/CycleBuffer$1;

    invoke-direct {v0, p0}, Lcom/baidu/speech/CycleBuffer$1;-><init>(Lcom/baidu/speech/CycleBuffer;)V

    iput-object v0, p0, Lcom/baidu/speech/CycleBuffer;->mOutputStream:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/CycleBuffer;->finished:Z

    return-void
.end method

.method public reader()Lcom/baidu/speech/CycleBuffer$CycleReader;
    .locals 1

    new-instance v0, Lcom/baidu/speech/CycleBuffer$CycleReader;

    invoke-direct {v0, p0}, Lcom/baidu/speech/CycleBuffer$CycleReader;-><init>(Lcom/baidu/speech/CycleBuffer;)V

    return-object v0
.end method

.method public write([BII)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    iget-object v4, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    array-length v4, v4

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v1, p3, v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    iget v3, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    iget-object v4, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    array-length v4, v4

    rem-int/2addr v3, v4

    invoke-static {p1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    :cond_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    invoke-static {p1, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    :cond_1
    return-void
.end method
