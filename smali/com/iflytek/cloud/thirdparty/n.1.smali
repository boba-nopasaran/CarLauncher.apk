.class public Lcom/iflytek/cloud/thirdparty/n;
.super Lcom/iflytek/cloud/thirdparty/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/p;

.field private b:Lcom/iflytek/cloud/SpeechListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/A;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/p;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/p;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Lcom/iflytek/cloud/thirdparty/p;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v1, Lcom/iflytek/cloud/thirdparty/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Lcom/iflytek/cloud/thirdparty/p;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/n;->y:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/iflytek/cloud/thirdparty/p;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/A;)I

    move-result v0

    const-string v2, "{\'ret\':%d,\'cmd\':%s}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/n;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v4

    const-string v5, "cmd"

    invoke-virtual {v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/n;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/n;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/n;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/n;->b(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/af;Lcom/iflytek/cloud/thirdparty/n$a;)V
    .locals 2

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/n;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/n;->a(Lcom/iflytek/cloud/thirdparty/af;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/n;->d(Landroid/os/Message;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/p;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/n;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/p;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "ivp"

    return-object v0
.end method
