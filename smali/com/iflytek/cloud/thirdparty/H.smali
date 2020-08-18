.class public Lcom/iflytek/cloud/thirdparty/H;
.super Lcom/iflytek/cloud/thirdparty/A;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/cloud/thirdparty/K;

.field private e:Lcom/iflytek/cloud/thirdparty/I;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Ljava/lang/StringBuilder;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/H;->a:I

    sput v0, Lcom/iflytek/cloud/thirdparty/H;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/A;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/H;->h:I

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/H;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->k:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/H;->m:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/K;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/K;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/H;->a(Lcom/iflytek/cloud/thirdparty/af;)V

    return-void
.end method

.method private i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/H;->h:I

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/I;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts msg start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "net_check"

    invoke-virtual {v1, v2, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "distributed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/V;->b(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/H;->b(I)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->a()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->b()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/H;->a:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/thirdparty/H;->b:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->f()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->a(Ljava/lang/String;)V

    :goto_0
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/H;->z:Z

    if-eqz v0, :cond_3

    const-string v0, "MscSynthesizer#onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

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

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QTts Error Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "MscSynthesizer#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/thirdparty/I;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/I;)V
    .locals 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e29

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/H;->b(Lcom/iflytek/cloud/SpeechError;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "tts_spell_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/H;->j:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->a_()V

    goto :goto_0
.end method

.method protected b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "SDKSessionBegin"

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/H;->y:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/K;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/A;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "unicode"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    const/4 v2, 0x2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/K;->a([B)V

    :goto_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->d:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/H;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/H;->b(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->p()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/K;->a([B)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/H;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/H;->m:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/H;->m:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_3

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/iflytek/cloud/thirdparty/H;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/thirdparty/I;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    return-void
.end method

.method protected c()V
    .locals 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "tts_buffer_time"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/H;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->k:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "tts_proc_scale"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/K;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/K;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "tts"

    return-object v0
.end method

.method protected h()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x0

    const-string v0, "GetNotifyResult"

    invoke-static {v0, v6}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/K;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/K;->a()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->f()Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/K;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get audio index value error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/H;->j:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/H;->d:Lcom/iflytek/cloud/thirdparty/K;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/K;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    const-string v4, "#\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v3, p0, Lcom/iflytek/cloud/thirdparty/H;->k:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts msc get audio beg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/H;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/H;->i()V

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->p()V

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/H;->g:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/H;->k:I

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/H;->i()V

    :cond_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v5, v0, v1, v1}, Lcom/iflytek/cloud/thirdparty/H;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/16 v2, 0xa

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/H;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_0

    :cond_5
    const-string v0, "tts msc get last audio"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/H;->e:Lcom/iflytek/cloud/thirdparty/I;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/H;->f:Ljava/util/ArrayList;

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/H;->l:I

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/H;->h:I

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/H;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/H;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/I;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v6}, Lcom/iflytek/cloud/thirdparty/H;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/H;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "text_encoding"

    const-string v2, "unicode"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
