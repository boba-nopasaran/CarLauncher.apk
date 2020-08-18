.class public Lcom/iflytek/cloud/thirdparty/J;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/J$a;
    }
.end annotation


# instance fields
.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Lcom/iflytek/cloud/SpeechError;

.field final k:Landroid/os/Handler;

.field private l:Lcom/iflytek/cloud/record/c;

.field private m:Lcom/iflytek/cloud/record/b;

.field private n:Lcom/iflytek/cloud/SynthesizerListener;

.field private o:Lcom/iflytek/cloud/SynthesizerListener;

.field private p:Lcom/iflytek/cloud/thirdparty/J$a;

.field private q:I

.field private r:Z

.field private s:Lcom/iflytek/cloud/thirdparty/I;

.field private t:Lcom/iflytek/cloud/record/c$a;

.field private u:Landroid/os/Handler;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->p:Lcom/iflytek/cloud/thirdparty/J$a;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/J;->q:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/J;->r:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/J;->g:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/J;->h:Z

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->j:Lcom/iflytek/cloud/SpeechError;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/J$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/J$1;-><init>(Lcom/iflytek/cloud/thirdparty/J;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->s:Lcom/iflytek/cloud/thirdparty/I;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/J$2;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/J$2;-><init>(Lcom/iflytek/cloud/thirdparty/J;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->t:Lcom/iflytek/cloud/record/c$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/J$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/J$3;-><init>(Lcom/iflytek/cloud/thirdparty/J;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->u:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->v:Z

    new-instance v0, Lcom/iflytek/cloud/thirdparty/J$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/J$5;-><init>(Lcom/iflytek/cloud/thirdparty/J;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/J;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/J;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/J;->j()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/J$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->p:Lcom/iflytek/cloud/thirdparty/J$a;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/c;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/SynthesizerListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/J;->q:I

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/J;->r:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J;->t:Lcom/iflytek/cloud/record/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/record/c;->a(Lcom/iflytek/cloud/record/b;Lcom/iflytek/cloud/record/c$a;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->u:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/iflytek/cloud/thirdparty/J;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic s(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/af;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/J;->i:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/J;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    const-string v0, "stream_type"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "request_audio_focus"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "tts_buf_fading"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "tts_fading"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v0, Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;IZZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/thirdparty/H;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/J;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/iflytek/cloud/thirdparty/H;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    const/4 v0, 0x1

    const-string v1, "tts_min_audio_len"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v0

    :goto_0
    const-string v0, "tts_proc_scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Lcom/iflytek/cloud/record/b;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/A;->t()I

    move-result v2

    add-int/2addr v3, v4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "end_with_null"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/record/b;->a(Z)V

    const-string v0, "tts_buffer_time"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/J;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minPlaySec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/J;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->r:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/H;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->s:Lcom/iflytek/cloud/thirdparty/I;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/H;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/I;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->g:Z
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v3, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    :try_start_2
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/af;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "message_main_thread"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->v:Z

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/H;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    const-string v2, "tts"

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/J;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lcom/iflytek/cloud/thirdparty/H;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    const/4 v0, 0x1

    const-string v1, "tts_min_audio_len"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v0

    :goto_0
    const-string v0, "tts_proc_scale"

    const/16 v1, 0x64

    invoke-virtual {p3, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Lcom/iflytek/cloud/record/b;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/A;->t()I

    move-result v2

    add-int/2addr v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/cloud/record/b;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    new-instance v1, Lcom/iflytek/cloud/thirdparty/J$4;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/cloud/thirdparty/J$4;-><init>(Lcom/iflytek/cloud/thirdparty/J;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/H;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/H;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/I;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    move v3, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/J$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/J;->p:Lcom/iflytek/cloud/thirdparty/J$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/af;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/J;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/J;->i:Ljava/lang/String;

    return-void
.end method

.method public cancel(Z)V
    .locals 6

    const/16 v5, 0x520a

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakSession cancel notifyError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/J;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v0, v5, v2, v2, v3}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_3

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e31

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_2

    const-string v1, "tts-onCompleted-cancel"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->u:Landroid/os/Handler;

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/J;->v:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->k:Landroid/os/Handler;

    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/J;->n:Lcom/iflytek/cloud/SynthesizerListener;

    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-super {p0, v2}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->e()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->o:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/E;->d()Z

    move-result v0

    return v0
.end method

.method public destroy()Z
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/J;->cancel(Z)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 6

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/J;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "tts_next_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J;->c:Lcom/iflytek/cloud/thirdparty/af;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/J;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/af;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->c()Z

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/J;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/J;->f()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/J;->f()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->m:Lcom/iflytek/cloud/record/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->d()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/record/c;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/record/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/J;->l:Lcom/iflytek/cloud/record/c;

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/J;->j()V

    goto :goto_0
.end method
