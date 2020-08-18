.class public Lcom/iflytek/cloud/thirdparty/s;
.super Lcom/iflytek/cloud/thirdparty/A;

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/s$a;
    }
.end annotation


# instance fields
.field private E:I

.field public a:Ljava/lang/String;

.field protected volatile b:Lcom/iflytek/cloud/WakeuperListener;

.field protected c:Z

.field protected d:I

.field protected e:Lcom/iflytek/cloud/thirdparty/r;

.field protected f:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field protected final j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected final k:I

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected final p:I

.field protected q:I

.field protected r:J

.field protected s:J

.field protected t:J

.field protected final u:I

.field protected v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/A;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/r;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/r;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->k:I

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->o:Z

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->p:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->q:I

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->u:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->v:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->E:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/thirdparty/af;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Z[BILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x2786

    const/4 v2, 0x0

    if-ne p3, v1, :cond_7

    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "rec_result"

    new-instance v6, Lcom/iflytek/cloud/RecognizerResult;

    invoke-direct {v6, v0}, Lcom/iflytek/cloud/RecognizerResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v6, 0x55f1

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    invoke-interface {v5, v6, v0, v2, v4}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "local_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "sms.irf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_4
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-nez p3, :cond_a

    if-eqz p2, :cond_9

    array-length v0, p2

    if-lez v0, :cond_9

    new-instance v1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p4, :cond_f

    const-string v0, "ivw_audio"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v2, v1, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;[B)V

    const-string v0, "GetNotifyResult"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, v2}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->C:Lcom/iflytek/cloud/thirdparty/as;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/thirdparty/as;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_a
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    if-eqz p2, :cond_d

    array-length v0, p2

    if-lez v0, :cond_d

    new-instance v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v0, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v5, "enroll"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v4, :cond_b

    new-instance v4, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v4, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v5, v4}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    :cond_b
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "suc_times"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "total_times"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v5, v4, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_2

    :cond_d
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_e
    move v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_f
    move-object v0, v3

    goto/16 :goto_3
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "recording stop"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/r;->a()V

    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    :cond_0
    return-void
.end method


# virtual methods
.method MsgProcCallBack([CIII[B)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur rec buf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cur sync auw size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cur writen size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v0, "MscWakeuper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/s$a;->values()[Lcom/iflytek/cloud/thirdparty/s$a;

    move-result-object v0

    aget-object v0, v0, p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/s$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_2
    return v4

    :cond_1
    const-string v0, "MscWakeuper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "unmatched ivw message!"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v5, v4, v4, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/s;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v5, v0, v4, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v5, p3, v6, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/s;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_2

    :pswitch_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->i()V

    goto/16 :goto_2

    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, p3}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :pswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v5, v4, v0, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a([BII)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/s;->onRecordBuffer([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    if-nez v0, :cond_0

    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->y:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/A;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    const-string v1, "MsgProcCallBack"

    invoke-static {v0, v1, p0}, Lcom/iflytek/msc/MSC;->QIVWRegisterNotify([CLjava/lang/String;Ljava/lang/Object;)I

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->E:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->E:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current csid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->b()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->a()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->k()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->c(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "audio_format"

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->t()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save ivw audio succeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "asr_nomatch_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_1
    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    :goto_1
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->z:Z

    if-eqz v0, :cond_6

    const-string v0, "WakeuperListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save ivw audio failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "WakeuperListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_2
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/WakeuperListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->a_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/r;->a([BI)V

    return-void
.end method

.method public declared-synchronized a(Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListening, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "notify_record_data"

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/s;->o:Z

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->o:Z

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "ivw_audio_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0xea60

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->t()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    :cond_0
    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->t()I

    move-result v0

    mul-int/lit16 v0, v0, 0x7d0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max saved buf byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max auw buf byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    :cond_2
    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void

    :cond_3
    iput v4, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    goto :goto_0
.end method

.method protected b(Landroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

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
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/s;->a([BZ)V

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    array-length v1, v0

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    array-length v1, v0

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    :cond_2
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->v:I

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    sub-long/2addr v4, v6

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->q:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur rec buf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cur sync auw size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cur writen size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", diff match max buf size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cur bufs in msg will be ignored!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->e(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/s;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    if-lez v1, :cond_7

    :goto_2
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->m:I

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    if-eqz v1, :cond_5

    array-length v1, v1

    :goto_3
    sub-int v1, v3, v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    goto :goto_2

    :cond_4
    const/16 v1, 0x64

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->v:I

    if-gt v1, v3, :cond_3

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/s;->v:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur rec buf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cur sync auw size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->r:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cur writen size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/s;->t:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    array-length v3, v0

    add-int/2addr v1, v3

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->n:I

    :cond_7
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->o:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v3, 0x520b

    invoke-interface {v0, v3, v2, v2, v1}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    const-string v0, "cancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    return-void
.end method

.method protected c()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "sst"

    const-string v2, "wakeup"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "keep_alive"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v0

    const-string v1, "ivw_netval"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "ivw_netval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void
.end method

.method c(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Z[BILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_3
    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Z[BILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "ivw"

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    return v0
.end method

.method public i()V
    .locals 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "ivw msc vadEndCall"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(Z)Z

    :cond_0
    return-void
.end method

.method public j()Lcom/iflytek/cloud/WakeuperListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    return-object v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 4

    array-length v0, p1

    if-lt v0, p3, :cond_0

    if-eqz p1, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/s;->s:J

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->d(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onRecordReleased()V
    .locals 0

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 0

    return-void
.end method
