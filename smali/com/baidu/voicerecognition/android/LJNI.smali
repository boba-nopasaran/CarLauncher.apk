.class public Lcom/baidu/voicerecognition/android/LJNI;
.super Ljava/lang/Object;
.source "LJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native lwDetect()I
.end method

.method public native lwExit()I
.end method

.method public native lwGetCallbackData([BI)I
.end method

.method public native lwGetVADVersion()I
.end method

.method public native lwInit()I
.end method

.method public native lwSendData([SI)I
.end method

.method public native lwSetParam(II)I
.end method
