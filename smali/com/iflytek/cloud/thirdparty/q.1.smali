.class public Lcom/iflytek/cloud/thirdparty/q;
.super Lcom/iflytek/cloud/thirdparty/s;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/u$a;
.implements Lcom/iflytek/cloud/thirdparty/u$b;


# instance fields
.field private final E:Ljava/lang/String;

.field private final F:I

.field private final G:I

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private M:I

.field private N:Lcom/iflytek/cloud/thirdparty/u;

.field private final O:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/s;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    const-string v0, "ivw_caller"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->E:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/q;->F:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/q;->G:I

    const-string v0, "sid"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->H:Ljava/lang/String;

    const-string v0, "msg"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->I:Ljava/lang/String;

    const-string v0, "arg1"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->J:Ljava/lang/String;

    const-string v0, "arg2"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->K:Ljava/lang/String;

    const-string v0, "result"

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->L:Ljava/lang/String;

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/q;->M:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/q;->O:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "ivw_channel_num"

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/q;->M:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "ivw_caller"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->a()Lcom/iflytek/cloud/thirdparty/u;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "aimic_init_param"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/u;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/u;->a(Lcom/iflytek/cloud/thirdparty/u$b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/u;->a(Lcom/iflytek/cloud/thirdparty/u$a;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/iflytek/cloud/SpeechError;)Lcom/iflytek/cloud/SpeechError;
    .locals 5

    const-string v0, "AIMicEnd enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/u;->b(Lcom/iflytek/cloud/thirdparty/u$b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/thirdparty/u;->b(Lcom/iflytek/cloud/thirdparty/u$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/u;->e()V

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "success"

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/q;->z:Z

    if-eqz v2, :cond_3

    const-string v0, "user abort"

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v3, "ivw_sse"

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    if-nez p1, :cond_2

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v2, "AIMicEnd error!"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    :cond_2
    const-string v0, "AIMicEnd leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x4e35

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v1, 0x5207

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method private d(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/q;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method private e(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-string v0, "proc_Wakeup_Angle enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/s$a;->values()[Lcom/iflytek/cloud/thirdparty/s$a;

    move-result-object v3

    aget-object v0, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "arg1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/iflytek/cloud/thirdparty/q$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s$a;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup msg error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warn: unmatched ivw message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/s$a;->a:Lcom/iflytek/cloud/thirdparty/s$a;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/q;->a(Landroid/os/Bundle;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    const-string v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v6, v3, v0, v2}, Lcom/iflytek/cloud/thirdparty/q;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/thirdparty/q;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    :goto_2
    invoke-virtual {p0, v2, v0, v5, v5}, Lcom/iflytek/cloud/thirdparty/q;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->d:Lcom/iflytek/cloud/thirdparty/ag$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ag$a;->ordinal()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->i()V

    move-object v0, v1

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, v3}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V

    move-object v0, v1

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v6, v5, v0, v2}, Lcom/iflytek/cloud/thirdparty/q;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v2, v5, v5}, Lcom/iflytek/cloud/thirdparty/q;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "proc_Wakeup_Msg reset msg"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_2
    const-string v0, "proc_Wakeup_Angle error: listener is null"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto/16 :goto_1

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/q;->n()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "It\'s not running while start aimic listening!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private l()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/q;->M:I

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/q;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is less than 1 !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2c

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-nez v1, :cond_1

    const-string v0, "create AIMIC failed!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-static {}, Lcom/iflytek/cloud/Setting;->getShowLog()Z

    move-result v2

    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/u;->a(ZI)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/u;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->c()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIMicBegin param count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "aimic_ssb_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "aimic_ssb_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIMicBegin for count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v1, "ivw_thread_num"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/q;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v1, "ivw_ssb"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->y:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/iflytek/cloud/thirdparty/ah;->b(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/A;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic init error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_4
    return-void

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method private n()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v1, -0x3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "alsa_card"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v3, "alsa_card"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "alsa_rate"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v3, "alsa_rate"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "alsa_save"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v3, "alsa_save"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    if-ne v1, v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    const-string v2, "audio_source"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/u;->d()I

    move-result v0

    :cond_4
    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start aimic listening failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    const/16 v0, 0x55f1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/u;->a([BII)I

    move-result v0

    :cond_0
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

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/q;->l()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/q;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v1, 0x271a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_0
    const/16 v0, 0x17

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/q;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public a(I)V
    .locals 1

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/q;->onError(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public a(III[BI[BI[BI)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/s$a;->b:Lcom/iflytek/cloud/thirdparty/s$a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/s$a;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    new-array v0, p9, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p8, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakeupMsg audio length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_0
    const-string v2, "ivw_audio"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    if-eqz p4, :cond_1

    new-array v0, p5, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p4, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "sid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    if-eqz p6, :cond_2

    new-array v0, p7, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p6, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    const-string v0, "msg"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "arg1"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "arg2"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/q;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/q;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/q;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/q;->d(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/q;->h:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/B$a;->f:Lcom/iflytek/cloud/thirdparty/B$a;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/q;->i:Z

    if-nez v1, :cond_0

    const-string v1, "oneshot"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/B$a;->a:Lcom/iflytek/cloud/thirdparty/B$a;

    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/B$a;->ordinal()I

    move-result v0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v4, v0, v3, v1}, Lcom/iflytek/cloud/thirdparty/q;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/q;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    :goto_0
    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/iflytek/cloud/thirdparty/q;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void

    :cond_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    goto :goto_0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/q;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/q;->k()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    const-string v0, "Aimic Wakeuper onEnd enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/q;->c(Lcom/iflytek/cloud/SpeechError;)Lcom/iflytek/cloud/SpeechError;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public a([BIILjava/lang/Object;)V
    .locals 0

    return-void
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

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/q;->h:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x3

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->N:Lcom/iflytek/cloud/thirdparty/u;

    if-nez v0, :cond_1

    const-string v0, "create AIMIC failed!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v1, :cond_1

    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/q;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/q;->d:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/q;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/q;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public b([BIILjava/lang/Object;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-array v1, p2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/q;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v2, 0x520b

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/q;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method
