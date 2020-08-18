.class Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$3;
.super Landroid/text/style/URLSpan;
.source "BaiduASRDigitalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->onFinish(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;


# direct methods
.method constructor <init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$3;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$3;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startRecognition(Z)V

    return-void
.end method
