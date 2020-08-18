.class Lcom/baidu/speech/AsrSession$SpeechEndFilter;
.super Ljava/lang/Object;
.source "AsrSession.java"

# interfaces
.implements Lcom/baidu/speech/AbsSession$MsgFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AsrSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeechEndFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/AsrSession;


# direct methods
.method constructor <init>(Lcom/baidu/speech/AsrSession;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/AsrSession$SpeechEndFilter;->this$0:Lcom/baidu/speech/AsrSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v0, "asr.end"

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AsrSession$SpeechEndFilter;->this$0:Lcom/baidu/speech/AsrSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/speech/AsrSession;->access$102(Lcom/baidu/speech/AsrSession;J)J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
