.class public Lcn/yunzhisheng/asr/l;
.super Ljava/lang/Thread;


# static fields
.field private static final a:I = 0xc8


# instance fields
.field private b:Lcn/yunzhisheng/asr/j;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Lcn/yunzhisheng/asr/h;

.field private e:Lcn/yunzhisheng/asr/RecognizerParams;

.field private f:Ljava/lang/String;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/RecognizerParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcn/yunzhisheng/asr/h;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/h;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->d:Lcn/yunzhisheng/asr/h;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/l;->g:Z

    iput-object p1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/yunzhisheng/asr/h;->a:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->b()V

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/j;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Lcn/yunzhisheng/common/Scene;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcn/yunzhisheng/common/Scene;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p2}, Lcn/yunzhisheng/common/Scene;->getSceneId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAsrScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/yunzhisheng/common/Scene;->getSceneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionThread -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcn/yunzhisheng/asr/j;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g()Lcn/yunzhisheng/asr/JniUscClient;
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0x10

    const/4 v6, 0x0

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->a()Lcn/yunzhisheng/asr/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a/a;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a/a;->c()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "juc.create() returns "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->getEngineParams()Lcn/yunzhisheng/asr/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "initUscClient engineParams "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/RecognizerParams;->getStartScene()Lcn/yunzhisheng/common/Scene;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/yunzhisheng/asr/l;->a(Lcn/yunzhisheng/asr/JniUscClient;Lcn/yunzhisheng/common/Scene;)V

    :cond_1
    invoke-virtual {v1}, Lcn/yunzhisheng/asr/b;->f()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->ASR_USRDATA_PROTOCOL_ENABLED:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->ASR_USRDATA_ENABLED:Z

    if-eqz v1, :cond_9

    const-string v1, "open"

    invoke-virtual {v0, v8, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_3
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->c:I

    invoke-virtual {v0, v6, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->d:I

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v1, 0x6

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->b:I

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v1, 0x4

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->e:I

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v1, 0x9

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/RecognizerParams;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v1, 0x8

    sget-object v2, Lcn/yunzhisheng/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v1, 0xe

    sget-object v2, Lcn/yunzhisheng/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->ENABLED_REQ_RSP_ENTITY:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    const-string v2, "req_audio_url"

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/yunzhisheng/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/yunzhisheng/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/yunzhisheng/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.3.29"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/yunzhisheng/utils/c;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/yunzhisheng/asr/JniUscClient;->U:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/yunzhisheng/asr/JniUscClient;->V:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->isOralEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->oralText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x17

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->oralText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->oralTask:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x1a

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->oralTask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x1b

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x1c

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v2, v2, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_8
    sput v6, Lcn/yunzhisheng/utils/c;->m:I

    const-string v1, "juc init success"

    invoke-static {v1}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    return-object v0

    :sswitch_0
    const-string v1, "opus-nb"

    invoke-virtual {v0, v7, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v1, "ENCODE_OUPS_8K"

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "opus"

    invoke-virtual {v0, v7, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v1, "ENCODE_OUPS_16K"

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x13

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v1, "ENCODE_OUPS_SAMPLE_REAL_8K"

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "close"

    invoke-virtual {v0, v8, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_1
        0x13880 -> :sswitch_2
    .end sparse-switch
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->b()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/asr/j;->a()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->b()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/asr/j;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcn/yunzhisheng/asr/j;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcn/yunzhisheng/asr/l;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->d:Lcn/yunzhisheng/asr/h;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcn/yunzhisheng/asr/h;->a([BII)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->d:Lcn/yunzhisheng/asr/h;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/l;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/l;->g:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/l;->g:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->b:Lcn/yunzhisheng/asr/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->c()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x9858

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/l;->join(J)V

    const-string v0, "RecognitionThread::waitEnd()"

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
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, -0xf231

    invoke-direct {p0}, Lcn/yunzhisheng/asr/l;->g()Lcn/yunzhisheng/asr/JniUscClient;

    move-result-object v1

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->f:Ljava/lang/String;

    const-string v0, "recogniton -> run"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->a()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recogniton -> start error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/l;->a(I)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->b()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/l;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "recogniton -> start"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v0, "recogniton -> cancel(start)"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->createAsrResultFormat()Lcn/yunzhisheng/asr/a/b;

    move-result-object v2

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->c:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_4

    array-length v3, v0

    invoke-virtual {v1, v0, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a([BI)I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v8, :cond_5

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcn/yunzhisheng/asr/l;->g:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "recogniton -> break"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->b()I

    move-result v0

    if-gez v0, :cond_a

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/l;->a(I)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    :try_start_1
    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/yunzhisheng/asr/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recogniton -> partial="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/yunzhisheng/utils/c;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcn/yunzhisheng/asr/l;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "recogniton -> exception"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcn/yunzhisheng/asr/l;->a(I)V

    sput v6, Lcn/yunzhisheng/asr/JniUscClient;->U:I

    sput v7, Lcn/yunzhisheng/asr/JniUscClient;->V:I

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto/16 :goto_0

    :cond_6
    const/16 v3, -0x7532

    if-ne v0, v3, :cond_7

    :try_start_2
    const-string v0, "recogniton -> max speech timeout"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/l;->i()V

    goto :goto_1

    :cond_7
    const/16 v3, -0x7531

    if-ne v0, v3, :cond_8

    const-string v0, "recogniton -> vad timeout"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recogniton -> error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/l;->a(I)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->b()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/l;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v0, "recogniton -> cancel(recognizer)"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_a
    const-string v0, "recogniton -> stop"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/l;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v0, v0, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/yunzhisheng/utils/b;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcn/yunzhisheng/asr/RecognizerParams;->asrRspSpeakerInfo:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recogniton -> asrRspSpeakerInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/yunzhisheng/asr/l;->e:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v3, v3, Lcn/yunzhisheng/asr/RecognizerParams;->asrRspSpeakerInfo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/yunzhisheng/asr/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recogniton -> last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0, v8}, Lcn/yunzhisheng/asr/l;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/l;->h()V

    const-string v0, "recognition -> released"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto/16 :goto_0
.end method
