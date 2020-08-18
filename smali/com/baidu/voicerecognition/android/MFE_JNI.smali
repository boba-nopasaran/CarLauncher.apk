.class Lcom/baidu/voicerecognition/android/MFE_JNI;
.super Ljava/lang/Object;
.source "LibFactory.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/LibFactory$JNI;


# static fields
.field private static final TAG:Ljava/lang/String; = "MFE_JNI"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private mEngine:Lcom/baidu/voicerecognition/android/MJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MFE_JNI"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling new MJNI()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/voicerecognition/android/MJNI;

    invoke-direct {v0}, Lcom/baidu/voicerecognition/android/MJNI;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    sget-object v0, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v1, "called  new MJNI()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Detect()I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeDetect()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeDetect()I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeDetect() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public EnableNoiseDetection(Z)I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling mfeEnableNoiseDetection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1, p1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeEnableNoiseDetection(Z)I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeEnableNoiseDetection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public Exit()I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeExit()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeExit()I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeExit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public GetCallbackData([BI)I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeGetCallbackData()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/voicerecognition/android/MJNI;->mfeGetCallbackData([BI)I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeGetCallbackData() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public GetParam(I)I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeGetParam()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1, p1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeGetParam(I)I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeGetParam()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public GetVADVersion()I
    .locals 2

    const-string v0, "MFE"

    const-string v1, "The method is invalid in MFE LIB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public Init()I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeInit()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeInit()I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeInit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public SendData([SI)I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeSendData()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/voicerecognition/android/MJNI;->mfeSendData([SI)I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeSendData() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method public SetLogLevel(I)V
    .locals 3

    sget-object v0, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling mfeSetLogLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v0, p1}, Lcom/baidu/voicerecognition/android/MJNI;->mfeSetLogLevel(I)V

    sget-object v0, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called  mfeSetLogLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public SetParam(II)I
    .locals 4

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    const-string v2, "calling mfeSetParam()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/MFE_JNI;->mEngine:Lcom/baidu/voicerecognition/android/MJNI;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/voicerecognition/android/MJNI;->mfeSetParam(II)I

    move-result v0

    sget-object v1, Lcom/baidu/voicerecognition/android/MFE_JNI;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  mfeSetParam() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method
