.class Lcom/baidu/speech/AsrSession$OutfileFilter;
.super Ljava/lang/Object;
.source "AsrSession.java"

# interfaces
.implements Lcom/baidu/speech/AbsSession$MsgFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AsrSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutfileFilter"
.end annotation


# instance fields
.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/baidu/speech/Console$Msg;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, "asr.audio"

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    const-string v1, "exit"

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/AsrSession$OutfileFilter;->out:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method
