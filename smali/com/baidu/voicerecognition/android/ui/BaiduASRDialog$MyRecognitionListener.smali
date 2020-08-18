.class public Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;
.super Ljava/lang/Object;
.source "BaiduASRDialog.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyRecognitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;


# direct methods
.method protected constructor <init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    const/4 v1, 0x4

    iput v1, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onBeginningOfSpeech()V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    const/4 v1, 0x5

    iput v1, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onEndOfSpeech()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    iput v1, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->access$002(Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;Z)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0, p1, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onFinish(II)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onPartialResults(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onPrepared()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    const/4 v1, 0x3

    iput v1, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    iput v2, v1, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->status:I

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->access$002(Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;Z)Z

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v1, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onPartialResults(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v1, v2, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onFinish(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->finish()V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;

    invoke-virtual {v0, p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog;->onVolumeChanged(F)V

    return-void
.end method
