.class public interface abstract Lcom/baidu/speech/AsrSession$Decoder;
.super Ljava/lang/Object;
.source "AsrSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AsrSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Decoder"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract read()Lcom/baidu/speech/Results$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract write([BIILcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
