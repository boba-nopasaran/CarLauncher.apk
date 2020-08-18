.class Lcom/baidu/voicerecognition/android/LW_JNI;
.super Ljava/lang/Object;
.source "LibFactory.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/LibFactory$JNI;


# instance fields
.field private mEngine:Lcom/baidu/voicerecognition/android/LJNI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/voicerecognition/android/LJNI;

    invoke-direct {v0}, Lcom/baidu/voicerecognition/android/LJNI;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    return-void
.end method


# virtual methods
.method public Detect()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/LJNI;->lwDetect()I

    move-result v0

    return v0
.end method

.method public EnableNoiseDetection(Z)I
    .locals 2

    const-string v0, "LW"

    const-string v1, "The method is invalid in MFE LIB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public Exit()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/LJNI;->lwExit()I

    move-result v0

    return v0
.end method

.method public GetCallbackData([BI)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/voicerecognition/android/LJNI;->lwGetCallbackData([BI)I

    move-result v0

    return v0
.end method

.method public GetParam(I)I
    .locals 2

    const-string v0, "LW"

    const-string v1, "The method is invalid in MFE LIB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public GetVADVersion()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/LJNI;->lwGetVADVersion()I

    move-result v0

    return v0
.end method

.method public Init()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/LJNI;->lwInit()I

    move-result v0

    return v0
.end method

.method public SendData([SI)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/voicerecognition/android/LJNI;->lwSendData([SI)I

    move-result v0

    return v0
.end method

.method public SetLogLevel(I)V
    .locals 2

    const-string v0, "LW"

    const-string v1, "The method is invalid in MFE LIB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SetParam(II)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/LW_JNI;->mEngine:Lcom/baidu/voicerecognition/android/LJNI;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/voicerecognition/android/LJNI;->lwSetParam(II)I

    move-result v0

    return v0
.end method
