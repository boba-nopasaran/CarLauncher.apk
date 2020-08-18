.class public abstract Lcn/yunzhisheng/asr/e;
.super Ljava/lang/Thread;


# static fields
.field public static final a:I = 0x3e80

.field protected static b:I

.field protected static c:I


# instance fields
.field protected volatile d:Z

.field protected e:Lcn/yunzhisheng/asr/t;

.field protected f:Lcn/yunzhisheng/asr/VADParams;

.field protected g:Lcn/yunzhisheng/asr/VAD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcn/yunzhisheng/asr/e;->b:I

    const/4 v0, 0x2

    sput v0, Lcn/yunzhisheng/asr/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/e;->d:Z

    iput-object v1, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    iput-object v1, p0, Lcn/yunzhisheng/asr/e;->f:Lcn/yunzhisheng/asr/VADParams;

    iput-object v1, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    iput-object p1, p0, Lcn/yunzhisheng/asr/e;->f:Lcn/yunzhisheng/asr/VADParams;

    iput-object p2, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    new-instance v0, Lcn/yunzhisheng/asr/VAD;

    invoke-direct {v0, p1, p2}, Lcn/yunzhisheng/asr/VAD;-><init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/z;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->b()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/t;->b(Z)V

    :cond_0
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()[B
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InputSourceThread::stopRecording"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/e;->d:Z

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/e;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->d()V

    const-string v0, "InputSourceThread::cancel"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/asr/t;->j()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/asr/t;->k()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/e;->d:Z

    return v0
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->g()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/e;->join(J)V

    const-string v0, "InputSourceThread::waitEnd()"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/yunzhisheng/asr/e;->a(Z)V

    :goto_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->f()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->b()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->e()V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->i()V

    :goto_2
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->f()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcn/yunzhisheng/asr/e;->e:Lcn/yunzhisheng/asr/t;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/VAD;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->b()V

    iget-object v1, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/VAD;->e()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v2}, Lcn/yunzhisheng/asr/e;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->b()V

    iget-object v1, p0, Lcn/yunzhisheng/asr/e;->g:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/VAD;->e()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/e;->h()V

    const-string v0, "recording stopped"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
