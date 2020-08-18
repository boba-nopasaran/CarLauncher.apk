.class public abstract Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;
.super Landroid/app/Activity;
.source "BaiduASRDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;
    }
.end annotation


# static fields
.field protected static final ERROR_NONE:I = 0x0

.field public static final PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final PARAM_PORMPT_TEXT:Ljava/lang/String; = "prompt_text"

.field public static final STATUS_None:I = 0x0

.field public static final STATUS_Ready:I = 0x3

.field public static final STATUS_Recognition:I = 0x5

.field public static final STATUS_Speaking:I = 0x4

.field public static final STATUS_WaitingReady:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaiduASRDialog"


# instance fields
.field private VOLUME_INTERVAL:J

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field protected mMyRecognitionListener:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;

.field private mParams:Landroid/os/Bundle;

.field protected mPrompt:Ljava/lang/String;

.field private mRetryFile:Ljava/lang/String;

.field speechRecognizer:Landroid/speech/SpeechRecognizer;

.field protected status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mIsRunning:Z

    const-wide/16 v0, 0x8c

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->VOLUME_INTERVAL:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$002(Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mIsRunning:Z

    return p1
.end method


# virtual methods
.method protected cancleRecognition()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract onBeginningOfSpeech()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v1, :cond_1

    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'android:exported\' should be false, please modify AndroidManifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    new-instance v4, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;

    invoke-direct {v4, p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;-><init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;)V

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mMyRecognitionListener:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/baidu/speech/VoiceRecognitionService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mMyRecognitionListener:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;

    invoke-virtual {v4, v5}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mParams:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v4, "export"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    return-void
.end method

.method protected abstract onEndOfSpeech()V
.end method

.method protected abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method protected abstract onFinish(II)V
.end method

.method protected abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->finish()V

    :cond_0
    return-void
.end method

.method protected abstract onPrepared()V
.end method

.method protected abstract onRecognitionStart()V
.end method

.method protected abstract onVolumeChanged(F)V
.end method

.method protected speakFinish()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method

.method protected startRecognition()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->startRecognition(Z)V

    return-void
.end method

.method protected startRecognition(Z)V
    .locals 4

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mParams:Landroid/os/Bundle;

    const-string v2, "prompt_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mPrompt:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mIsRunning:Z

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onRecognitionStart()V

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "bd_asr_ui_retry_file.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mRetryFile:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "infile"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mRetryFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ui.retry-file"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "infile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "ui.retry-file"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->mRetryFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
