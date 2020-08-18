.class Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;
.super Landroid/os/Handler;
.source "BaiduASRDigitalDialog.java"


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

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/16 v6, 0x3c

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$900(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1000(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const-string v2, "tips.wait.net"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->mMessage:Landroid/os/Message;

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setProgress(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$900(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$900(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1100(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    if-ge v0, v6, :cond_6

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    const/16 v1, 0x3a98

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->cancleRecognition()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    const/4 v1, 0x2

    const/high16 v2, 0x90000

    invoke-virtual {v0, v1, v2}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->onFinish(II)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0, v6}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$400(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$300(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$302(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0, v4}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$402(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;I)I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$800(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$500(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->access$1200(Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->finish()V

    :cond_a
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog$4;->this$0:Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;

    iget-object v0, v0, Lcom/baidu/voicerecognition/android/ui/BaiduASRDigitalDialog;->barHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3
.end method
