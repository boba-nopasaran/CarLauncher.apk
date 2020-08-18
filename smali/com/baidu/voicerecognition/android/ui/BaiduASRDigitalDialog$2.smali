.class Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;
.super Ljava/lang/Object;
.source "BaiduASRDigitalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;


# direct methods
.method constructor <init>(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v2, "speak_complete"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const-string v3, "btn.start"

    invoke-static {v2, v3}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startRecognition()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const-string v3, "btn.done"

    invoke-static {v2, v3}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget v2, v2, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->status:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->speakFinish()V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->onEndOfSpeech()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->cancleRecognition()V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v2, v2, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMyRecognitionListener:Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialog$MyRecognitionListener;->onError(I)V

    goto :goto_0

    :cond_3
    const-string v2, "cancel_text_btn"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$600(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const-string v3, "btn.help"

    invoke-static {v2, v3}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$700(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->finish()V

    goto :goto_0

    :cond_5
    const-string v2, "retry_text_btn"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startRecognition()V

    goto/16 :goto_0

    :cond_6
    const-string v2, "cancel_btn"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->finish()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "help_btn"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$700(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "logo_1"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "logo_2"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://developer.baidu.com/static/community/servers/voice/sdk.html"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$2;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method
