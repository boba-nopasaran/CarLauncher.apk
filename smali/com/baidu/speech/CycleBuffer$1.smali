.class Lcom/baidu/speech/CycleBuffer$1;
.super Ljava/io/OutputStream;
.source "CycleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/CycleBuffer;->asOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/CycleBuffer;


# direct methods
.method constructor <init>(Lcom/baidu/speech/CycleBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/CycleBuffer$1;->this$0:Lcom/baidu/speech/CycleBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer$1;->this$0:Lcom/baidu/speech/CycleBuffer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/speech/CycleBuffer;->finished:Z

    return-void
.end method

.method public write(I)V
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

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer$1;->this$0:Lcom/baidu/speech/CycleBuffer;

    iget-boolean v0, v0, Lcom/baidu/speech/CycleBuffer;->finished:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cycle buffer is closed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/CycleBuffer$1;->this$0:Lcom/baidu/speech/CycleBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/speech/CycleBuffer;->write([BII)V

    return-void
.end method
