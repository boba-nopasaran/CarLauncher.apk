.class Lcom/baidu/speech/CycleBuffer$CycleReader$1;
.super Ljava/io/InputStream;
.source "CycleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/CycleBuffer$CycleReader;->asInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;


# direct methods
.method constructor <init>(Lcom/baidu/speech/CycleBuffer$CycleReader;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;->this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;->this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;

    iget v2, v2, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;->this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;

    iget v3, v2, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/baidu/speech/CycleBuffer$CycleReader;->position:I

    :cond_0
    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;->this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;

    invoke-virtual {v2, p1, p2, p3}, Lcom/baidu/speech/CycleBuffer$CycleReader;->read([BII)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/speech/CycleBuffer$CycleReader$1;->this$1:Lcom/baidu/speech/CycleBuffer$CycleReader;

    iget-object v2, v2, Lcom/baidu/speech/CycleBuffer$CycleReader;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget-boolean v2, v2, Lcom/baidu/speech/CycleBuffer;->finished:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
