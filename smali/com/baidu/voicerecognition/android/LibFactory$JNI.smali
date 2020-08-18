.class public interface abstract Lcom/baidu/voicerecognition/android/LibFactory$JNI;
.super Ljava/lang/Object;
.source "LibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voicerecognition/android/LibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JNI"
.end annotation


# virtual methods
.method public abstract Detect()I
.end method

.method public abstract EnableNoiseDetection(Z)I
.end method

.method public abstract Exit()I
.end method

.method public abstract GetCallbackData([BI)I
.end method

.method public abstract GetParam(I)I
.end method

.method public abstract GetVADVersion()I
.end method

.method public abstract Init()I
.end method

.method public abstract SendData([SI)I
.end method

.method public abstract SetLogLevel(I)V
.end method

.method public abstract SetParam(II)I
.end method
