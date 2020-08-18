.class public Lcn/yunzhisheng/asr/m;
.super Lcn/yunzhisheng/utils/e;

# interfaces
.implements Lcn/yunzhisheng/asr/j;
.implements Lcn/yunzhisheng/asr/t;
.implements Lcn/yunzhisheng/asr/y;


# static fields
.field private static final A:I = 0x17

.field private static final B:I = 0x18

.field public static a:I = 0x0

.field public static b:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x3

.field private static final r:I = 0x5

.field private static final s:I = 0xb

.field private static final t:I = 0xc

.field private static final u:I = 0xd

.field private static final v:I = 0xe

.field private static final w:I = 0xf

.field private static final x:I = 0x10

.field private static final y:I = 0x15

.field private static final z:I = 0x16


# instance fields
.field protected c:Lcn/yunzhisheng/common/USCSpeakerInformation;

.field private d:Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

.field private e:Lcn/yunzhisheng/asr/v;

.field private f:Lcn/yunzhisheng/asr/v;

.field private g:Lcn/yunzhisheng/asr/l;

.field private h:Lcn/yunzhisheng/asr/e;

.field private i:Lcn/yunzhisheng/asr/q;

.field private j:Lcn/yunzhisheng/asr/RecognizerParams;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcn/yunzhisheng/asr/g;

.field private n:Lcn/yunzhisheng/asr/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0xea60

    sput v0, Lcn/yunzhisheng/asr/m;->a:I

    const/16 v0, 0x2710

    sput v0, Lcn/yunzhisheng/asr/m;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/yunzhisheng/asr/RecognizerParams;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/yunzhisheng/utils/e;-><init>()V

    new-instance v0, Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    invoke-direct {v0}, Lcn/yunzhisheng/common/USCSpeakerInfoSetting;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->d:Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->e:Lcn/yunzhisheng/asr/v;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->f:Lcn/yunzhisheng/asr/v;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    new-instance v0, Lcn/yunzhisheng/asr/n;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/asr/n;-><init>(Lcn/yunzhisheng/asr/m;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->m:Lcn/yunzhisheng/asr/g;

    new-instance v0, Lcn/yunzhisheng/asr/f;

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->m:Lcn/yunzhisheng/asr/g;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/asr/f;-><init>(Lcn/yunzhisheng/asr/g;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    iput-object v2, p0, Lcn/yunzhisheng/asr/m;->c:Lcn/yunzhisheng/common/USCSpeakerInformation;

    invoke-static {p1}, Lcn/yunzhisheng/utils/a;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/asr/m;)Lcn/yunzhisheng/asr/f;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    return-object v0
.end method

.method static synthetic b(Lcn/yunzhisheng/asr/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->t()V

    return-void
.end method

.method static synthetic c(Lcn/yunzhisheng/asr/m;)Lcn/yunzhisheng/asr/q;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    return-object v0
.end method

.method private f(I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcn/yunzhisheng/common/USCSpeakerInformation;

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v1, v1, Lcn/yunzhisheng/asr/RecognizerParams;->asrRspSpeakerInfo:I

    iget-object v2, p0, Lcn/yunzhisheng/asr/m;->d:Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    invoke-virtual {v2}, Lcn/yunzhisheng/common/USCSpeakerInfoSetting;->getReqInfo()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/common/USCSpeakerInformation;-><init>(II)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->c:Lcn/yunzhisheng/common/USCSpeakerInformation;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->k:Ljava/lang/String;

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->k:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->e()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/q;->a(I)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->t()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->d:Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    invoke-virtual {v1}, Lcn/yunzhisheng/common/USCSpeakerInfoSetting;->getReqInfo()I

    move-result v1

    iput v1, v0, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-static {}, Lcn/yunzhisheng/utils/a;->b()I

    move-result v1

    iput v1, v0, Lcn/yunzhisheng/asr/RecognizerParams;->a:I

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->f:Lcn/yunzhisheng/asr/v;

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->e:Lcn/yunzhisheng/asr/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->c:Lcn/yunzhisheng/common/USCSpeakerInformation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->k:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/asr/l;

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/asr/l;-><init>(Lcn/yunzhisheng/asr/RecognizerParams;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/asr/l;->a(Lcn/yunzhisheng/asr/j;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->start()V

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/e;->d()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->b()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->c()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/e;->g()V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->q()V

    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0, p1, p2, p3}, Lcn/yunzhisheng/asr/q;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcn/yunzhisheng/asr/x;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/x;-><init>()V

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/asr/x;->a(Lcn/yunzhisheng/asr/y;)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/yunzhisheng/asr/x;->a(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/e;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->d()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->p()V

    iput-object p1, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/e;->start()V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/q;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/v;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/m;->f:Lcn/yunzhisheng/asr/v;

    iput-object p1, p0, Lcn/yunzhisheng/asr/m;->e:Lcn/yunzhisheng/asr/v;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcn/yunzhisheng/asr/RecognizerParams;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcn/yunzhisheng/asr/k;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/k;-><init>()V

    iput-object p1, v0, Lcn/yunzhisheng/asr/k;->a:Ljava/lang/String;

    iput-boolean p2, v0, Lcn/yunzhisheng/asr/k;->b:Z

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->p()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/l;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/l;->b()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcn/yunzhisheng/asr/x;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/x;-><init>()V

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/asr/x;->a(Lcn/yunzhisheng/asr/y;)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/yunzhisheng/asr/x;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setPunctuation(Z)V

    return-void
.end method

.method public a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->g:Lcn/yunzhisheng/asr/l;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/asr/l;->a([B)V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/yunzhisheng/asr/q;->a(Z[BII)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/q;->b()V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v0, -0xee49

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->t()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->r()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/q;->a()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->t()V

    const v0, -0xee4a

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/m;->h()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/yunzhisheng/asr/k;

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    iget-object v2, v0, Lcn/yunzhisheng/asr/k;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/k;->b:Z

    invoke-interface {v1, v2, v0}, Lcn/yunzhisheng/asr/q;->onResult(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->s()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    goto :goto_1

    :pswitch_8
    const-string v0, "recognizer cancel"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/q;->d()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->s()V

    const v0, -0xf231

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    goto :goto_1

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->c(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/q;->onVADTimeout()V

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v1, v0}, Lcn/yunzhisheng/asr/q;->onUpdateVolume(I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/m;->g()V

    const/16 v0, -0x7532

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/m;->f(I)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v1, v0}, Lcn/yunzhisheng/asr/q;->b(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    sget v0, Lcn/yunzhisheng/asr/m;->a:I

    if-le p1, v0, :cond_1

    sget p1, Lcn/yunzhisheng/asr/m;->a:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/f;->a(I)V

    return-void

    :cond_1
    sget v0, Lcn/yunzhisheng/asr/m;->b:I

    if-ge p1, v0, :cond_0

    sget p1, Lcn/yunzhisheng/asr/m;->b:I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/yunzhisheng/asr/x;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/x;-><init>()V

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/asr/x;->a(Lcn/yunzhisheng/asr/y;)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/RecognizerParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/yunzhisheng/asr/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->j:Lcn/yunzhisheng/asr/RecognizerParams;

    iput p1, v0, Lcn/yunzhisheng/asr/RecognizerParams;->e:I

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->e:Lcn/yunzhisheng/asr/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/v;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.29"

    return-object v0
.end method

.method public d(I)V
    .locals 2

    const/16 v0, 0x18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->a()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 2

    const/16 v0, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/m;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->q()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->r()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->e:Lcn/yunzhisheng/asr/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->n:Lcn/yunzhisheng/asr/f;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/f;->e()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->s()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/m;->t()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/m;->removeSendMessage()V

    return-void
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->i:Lcn/yunzhisheng/asr/q;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/q;->c()V

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/m;->h:Lcn/yunzhisheng/asr/e;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/m;->sendMessage(I)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/m;->l:Z

    return v0
.end method

.method public n()Lcn/yunzhisheng/common/USCSpeakerInfoSetting;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->d:Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    return-object v0
.end method

.method public o()Lcn/yunzhisheng/common/USCSpeakerInformation;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/m;->c:Lcn/yunzhisheng/common/USCSpeakerInformation;

    return-object v0
.end method
