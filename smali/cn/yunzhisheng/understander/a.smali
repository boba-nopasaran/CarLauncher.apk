.class public Lcn/yunzhisheng/understander/a;
.super Lcn/yunzhisheng/asr/o;


# static fields
.field private static final s:I = 0x64

.field private static final t:I = 0x65


# instance fields
.field private u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

.field private v:Ljava/lang/StringBuilder;

.field private w:Lcn/yunzhisheng/nlu/USCNluThread;

.field private x:Lcn/yunzhisheng/asr/c;

.field private y:Lcn/yunzhisheng/nlu/USCNluParams;

.field private z:Lcn/yunzhisheng/nlu/USCNluListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asr/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/c;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->x:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/understander/b;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/understander/b;-><init>(Lcn/yunzhisheng/understander/a;)V

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->z:Lcn/yunzhisheng/nlu/USCNluListener;

    new-instance v0, Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-direct {v0, p2, p3}, Lcn/yunzhisheng/nlu/USCNluParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    return-void
.end method

.method private a(Lcn/yunzhisheng/common/USCError;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onEnd(Lcn/yunzhisheng/common/USCError;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->getStartScene()Lcn/yunzhisheng/common/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/common/Scene;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/common/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/nlu/USCNluParams;->setViewid(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/common/Scene;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    invoke-virtual {v0}, Lcn/yunzhisheng/nlu/USCNluThread;->cancel()V

    :cond_0
    new-instance v0, Lcn/yunzhisheng/nlu/USCNluThread;

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/nlu/USCNluThread;-><init>(Lcn/yunzhisheng/nlu/USCNluParams;)V

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/USCNluThread;->setData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/yunzhisheng/understander/a;->i()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->z:Lcn/yunzhisheng/nlu/USCNluListener;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/USCNluThread;->setNluListener(Lcn/yunzhisheng/nlu/USCNluListener;)V

    invoke-direct {p0}, Lcn/yunzhisheng/understander/a;->g()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    invoke-virtual {v0}, Lcn/yunzhisheng/nlu/USCNluThread;->start()V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    invoke-super {p0, p1}, Lcn/yunzhisheng/asr/o;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->x:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/c;->f(I)Lcn/yunzhisheng/common/USCError;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcn/yunzhisheng/understander/a;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcn/yunzhisheng/understander/a;->a(Lcn/yunzhisheng/common/USCError;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcn/yunzhisheng/understander/a;->a(Lcn/yunzhisheng/common/USCError;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/yunzhisheng/asr/o;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0, p1, p2}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onRecognizerResult(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->b()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onVADTimeout()V

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 1

    invoke-super {p0, p1}, Lcn/yunzhisheng/asr/o;->b(I)V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onUpdateVolume(I)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->c()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onRecordingStop()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->cancel()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    invoke-virtual {v0}, Lcn/yunzhisheng/nlu/USCNluThread;->cancel()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 0

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->d()V

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->e()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onRecordingStart()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->f()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    invoke-interface {v0}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onRecordingStart()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    new-instance v2, Lcn/yunzhisheng/understander/USCUnderstanderResult;

    invoke-direct {v2, v0}, Lcn/yunzhisheng/understander/USCUnderstanderResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onUnderstanderResult(Lcn/yunzhisheng/understander/USCUnderstanderResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    iget-object v2, p0, Lcn/yunzhisheng/understander/a;->x:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v2, v0}, Lcn/yunzhisheng/asr/c;->d(I)Lcn/yunzhisheng/common/USCError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;->onEnd(Lcn/yunzhisheng/common/USCError;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/understander/a;->u:Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;

    return-void
.end method

.method public setNluCity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setCity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNluGps(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setGps(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNluHistory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setHistory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNluScenario(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setScenario(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNluServer(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/nlu/USCNluParams;->setNluServer(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setNluUdid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setUdid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNluVoiceId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->y:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/nlu/USCNluParams;->setVoiceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOption(ILjava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/yunzhisheng/asr/o;->setOption(ILjava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->start()V

    return-void
.end method

.method protected stop()V
    .locals 1

    invoke-super {p0}, Lcn/yunzhisheng/asr/o;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/understander/a;->w:Lcn/yunzhisheng/nlu/USCNluThread;

    return-void
.end method

.method public textUnderstander(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcn/yunzhisheng/understander/a;->i()V

    iget-object v0, p0, Lcn/yunzhisheng/understander/a;->v:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/yunzhisheng/understander/a;->h()V

    return-void
.end method
