.class public Lcom/iflytek/cloud/thirdparty/m;
.super Lcom/iflytek/cloud/thirdparty/l;


# instance fields
.field q:Z

.field private r:I

.field private s:Lcom/iflytek/cloud/util/AudioDetector;

.field private t:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x3e80

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/l;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/m;->r:I

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/m;->q:Z

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "sample_rate"

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/iflytek/cloud/thirdparty/m;->r:I

    const-string v0, "vad_enable"

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/iflytek/cloud/util/AudioDetector;->getDetector()Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "sample_rate"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/m;->r:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "vad_engine"

    const-string v4, "meta"

    invoke-virtual {v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "vad_engine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    const-string v0, "vad_res_path"

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "vad_res_path"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/cloud/util/AudioDetector;->createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    :cond_2
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    :goto_1
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v3, "vad_bos"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vad_eos"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/ah;->b(Lcom/iflytek/cloud/thirdparty/A;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta vad eos on recog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v2, "vad_eos"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v1, "speech_timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method private C()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->o:Lcom/iflytek/cloud/thirdparty/C;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/C;->a(Ljava/lang/String;)V

    const-string v0, "begin session"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->i()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "not init while begin session"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2f

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/m;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method private a([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const v10, 0x8000

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    if-eqz v0, :cond_a

    array-length v0, p1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v0

    move v2, v6

    move v7, v6

    move-object v4, v3

    move v0, v6

    :goto_0
    if-lez v5, :cond_b

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v4, p1, v7, v5, v6}, Lcom/iflytek/cloud/util/AudioDetector;->detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    move-result-object v4

    iget v8, v4, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-eqz v8, :cond_0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    iget v1, v4, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_0
    const/4 v8, 0x3

    iget v9, v4, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v8}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    :cond_1
    add-int/2addr v7, v5

    array-length v5, p1

    sub-int/2addr v5, v7

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_2
    iget v8, v4, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/iflytek/cloud/thirdparty/m;->q:Z

    if-nez v8, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v0, v0

    sub-int v0, v7, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/m;->q:Z

    const-string v2, "detectAudioData find start and begin session"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/m;->C()V

    move v2, v0

    move v0, v1

    :cond_3
    iget v8, v4, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-eq v1, v8, :cond_1

    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_4

    iget v4, v1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    invoke-virtual {p0, p1, v4}, Lcom/iflytek/cloud/thirdparty/m;->a([BI)V

    :cond_4
    if-eqz v1, :cond_9

    iget-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/m;->q:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_5

    array-length v0, p1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v3, v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v3, v3

    if-gt v3, v2, :cond_8

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {p1, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    move-object p1, v0

    :cond_5
    const/4 v0, 0x2

    iget v2, v1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-eq v0, v2, :cond_6

    const/4 v0, 0x4

    iget v1, v1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-ne v0, v1, :cond_7

    :cond_6
    const-string v0, "detectAudioData find eos or timeout"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->l()V

    :cond_7
    :goto_3
    return-object p1

    :cond_8
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v3, v3

    sub-int v2, v3, v2

    array-length v3, p1

    invoke-static {p1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x55f1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_b
    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method protected a([BZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->o:Lcom/iflytek/cloud/thirdparty/C;

    const-string v1, "app_fau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/C;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v1, 0x55f2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->h:Lcom/iflytek/cloud/thirdparty/k;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/k;->a([BI)V

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/m;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/m;->a([BZ)V

    goto :goto_0
.end method

.method protected h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, -0x1

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "net_check"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/V;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/m;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/m;->r:I

    mul-int/lit16 v1, v1, 0x12c

    mul-int/lit8 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MscRecognizerMeta last buffer len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->t:[B

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/m;->f:I

    if-eq v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/m;->f:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "asr_source_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->t()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/m;->f:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/m;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->o:Lcom/iflytek/cloud/thirdparty/C;

    const-string v1, "rec_open"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/C;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "speech_timeout"

    invoke-virtual {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    if-eq v5, v0, :cond_2

    const/16 v0, 0x9

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v2, 0x0

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/m;->w:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/m;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/m;->f:I

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onBeginOfSpeech()V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    if-nez v0, :cond_7

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_4
    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/V;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "engine_type"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/m;->f:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->i:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/m;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->s:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    return-void
.end method

.method protected j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/m;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->o:Lcom/iflytek/cloud/thirdparty/C;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/C;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->h:Lcom/iflytek/cloud/thirdparty/k;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/k;->a()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->p()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "exit with no speech audio"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/m;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method
