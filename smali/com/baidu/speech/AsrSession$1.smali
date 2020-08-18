.class Lcom/baidu/speech/AsrSession$1;
.super Ljava/io/FilterInputStream;
.source "AsrSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/AsrSession;->onExecute(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/AsrSession;


# direct methods
.method constructor <init>(Lcom/baidu/speech/AsrSession;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    invoke-static {v4}, Lcom/baidu/speech/AsrSession;->access$000(Lcom/baidu/speech/AsrSession;)Ljava/io/OutputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    invoke-static {v4}, Lcom/baidu/speech/AsrSession;->access$000(Lcom/baidu/speech/AsrSession;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    if-lez v3, :cond_1

    :try_start_0
    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    const/16 v5, 0x50

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/baidu/speech/AsrSession;->computePower([BI)J

    move-result-wide v4

    long-to-float v2, v4

    iget-object v4, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    new-instance v5, Lcom/baidu/speech/Console$Msg;

    const-string v6, "asr.audio"

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v5, v6, v0, v7}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/logging/Level;)V

    invoke-virtual {v4, v5}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    iget-object v4, p0, Lcom/baidu/speech/AsrSession$1;->this$0:Lcom/baidu/speech/AsrSession;

    new-instance v5, Lcom/baidu/speech/Console$Msg;

    const-string v6, "asr.volume"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v5, v6, v7, v8}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/logging/Level;)V

    invoke-virtual {v4, v5}, Lcom/baidu/speech/AsrSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
