.class public abstract Lcom/iflytek/cloud/thirdparty/E;
.super Lcom/iflytek/cloud/thirdparty/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/E$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected d:Ljava/lang/Object;

.field protected volatile e:Lcom/iflytek/cloud/thirdparty/A;

.field protected volatile f:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/E;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->a:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    return-object v0
.end method

.method protected b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected b_()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :cond_0
    return-void
.end method

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/E;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/E;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/E;->e:Lcom/iflytek/cloud/thirdparty/A;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/D;->destroy()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/E;->b_()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/E;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "destory ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/E;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finalize called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSampleRate()I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/E;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "sample_rate"

    const/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
