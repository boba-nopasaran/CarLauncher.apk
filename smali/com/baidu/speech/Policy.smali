.class Lcom/baidu/speech/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pfm(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/Util;->pfm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sample(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/Utility;->is2G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1f40

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x3e80

    goto :goto_0
.end method

.method public static taskTimeout()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method

.method public static uiRetryFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bd_asr_ui_repeat.pcm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/Device;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ver(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
