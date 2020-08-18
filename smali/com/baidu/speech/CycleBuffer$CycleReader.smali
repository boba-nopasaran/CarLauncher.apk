.class public Lcom/baidu/speech/CycleBuffer$CycleReader;
.super Ljava/lang/Object;
.source "CycleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/CycleBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleReader"
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/baidu/speech/CycleBuffer;


# direct methods
.method public constructor <init>(Lcom/baidu/speech/CycleBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;

    invoke-direct {v0, p0}, Lcom/baidu/speech/CycleBuffer$CycleReader$1;-><init>(Lcom/baidu/speech/CycleBuffer$CycleReader;)V

    return-object v0
.end method

.method public available()I
    .locals 3

    iget-object v1, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget v1, v1, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    iget v2, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    sub-int v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getBuffer()Lcom/baidu/speech/CycleBuffer;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    return v0
.end method

.method public read([BII)I
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget v5, v5, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    iget v6, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    if-ge v5, v6, :cond_0

    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget v5, v5, Lcom/baidu/speech/CycleBuffer;->mLimit:I

    iget v6, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget v5, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    add-int v5, p2, v2

    iget-object v6, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget-object v6, v6, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    iget-object v7, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget-object v7, v7, Lcom/baidu/speech/CycleBuffer;->mBuffer:[B

    array-length v7, v7

    rem-int v7, v3, v7

    aget-byte v6, v6, v7

    aput-byte v6, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    :goto_2
    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_2
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    return-void
.end method
