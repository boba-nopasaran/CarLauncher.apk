.class public Lcom/iflytek/cloud/thirdparty/am;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/am$a;
    }
.end annotation


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/am;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "ise_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/thirdparty/j;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/am;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/am;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/j;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/j;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/am$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/thirdparty/am$a;-><init>(Lcom/iflytek/cloud/thirdparty/am;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v0, p1, p2, v3}, Lcom/iflytek/cloud/thirdparty/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    :try_start_1
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/am;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "ise_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/thirdparty/j;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/am;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/am;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/am;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/j;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/j;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/am$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/thirdparty/am$a;-><init>(Lcom/iflytek/cloud/thirdparty/am;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v0, p1, p2, v3}, Lcom/iflytek/cloud/thirdparty/j;->a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    :try_start_1
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a([BII)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/am;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-nez v2, :cond_0

    const-string v2, "writeAudio error, no active session."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-gtz v2, :cond_2

    :cond_1
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_3

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/j;->onRecordBuffer([BII)V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected b_()Z
    .locals 1

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/E;->b_()Z

    move-result v0

    return v0
.end method

.method public cancel(Z)V
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/am;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/am;->f()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/am;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/j;->a(Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected f()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "ise_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/j;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/j;->d()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v2, "audio_format"

    invoke-virtual {v0, v2, v5}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/A;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "sample_rate"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/am;->e:Lcom/iflytek/cloud/thirdparty/A;

    iget v4, v4, Lcom/iflytek/cloud/thirdparty/A;->x:I

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/am;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/am;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/am;->d()Z

    move-result v0

    return v0
.end method
