.class final Lcom/iflytek/cloud/thirdparty/an$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/an;

.field private b:Lcom/iflytek/cloud/RecognizerListener;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/an;Lcom/iflytek/cloud/RecognizerListener;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->a:Lcom/iflytek/cloud/thirdparty/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->b:Lcom/iflytek/cloud/RecognizerListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->c:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/an$c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/an$c$1;-><init>(Lcom/iflytek/cloud/thirdparty/an$c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/an$c;->b:Lcom/iflytek/cloud/RecognizerListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/an$c;)Lcom/iflytek/cloud/RecognizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->b:Lcom/iflytek/cloud/RecognizerListener;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/an$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/an$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->c:Z

    return v0
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "onBeginOfSpeech"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->a:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/an;->f()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an$c;->a:Lcom/iflytek/cloud/thirdparty/an;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/an;->f()V

    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v3, 0x4

    if-ne p2, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onVolumeChanged(I[B)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an$c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
