.class public interface abstract Lcom/baidu/speech/AsrSession$VadInputStream;
.super Ljava/lang/Object;
.source "AsrSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AsrSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VadInputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract detect()Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
.end method

.method public abstract finish()V
.end method

.method public abstract finished()Z
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
