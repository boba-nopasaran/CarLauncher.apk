.class public Lcn/yunzhisheng/tts/online/m;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcn/yunzhisheng/tts/online/e; = null

.field private static final m:I = 0x1

.field private static final n:I = 0x4

.field private static final o:I = 0x2

.field private static final p:I = 0x5

.field private static final q:I = 0xd

.field private static final r:I = 0xe

.field private static final s:I = 0x10


# instance fields
.field public a:Z

.field public b:Lcn/yunzhisheng/tts/online/f;

.field private c:Lcn/yunzhisheng/tts/online/u;

.field private d:Lcn/yunzhisheng/tts/online/t;

.field private e:Lcn/yunzhisheng/tts/online/r;

.field private f:Lcn/yunzhisheng/tts/online/s;

.field private g:Ljava/lang/String;

.field private h:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private t:Lcn/yunzhisheng/tts/online/g;

.field private u:Lcn/yunzhisheng/tts/online/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->e:Lcn/yunzhisheng/tts/online/r;

    invoke-static {}, Lcn/yunzhisheng/tts/online/s;->a()Lcn/yunzhisheng/tts/online/s;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->g:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcn/yunzhisheng/tts/online/m;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/m;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/m;->k:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcn/yunzhisheng/tts/online/m;->l:I

    new-instance v0, Lcn/yunzhisheng/tts/online/n;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/online/n;-><init>(Lcn/yunzhisheng/tts/online/m;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->b:Lcn/yunzhisheng/tts/online/f;

    new-instance v0, Lcn/yunzhisheng/tts/online/o;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/online/o;-><init>(Lcn/yunzhisheng/tts/online/m;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->t:Lcn/yunzhisheng/tts/online/g;

    new-instance v0, Lcn/yunzhisheng/tts/online/p;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/online/p;-><init>(Lcn/yunzhisheng/tts/online/m;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->u:Lcn/yunzhisheng/tts/online/v;

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/u;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    return-object v0
.end method

.method static synthetic a(Lcn/yunzhisheng/tts/online/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/m;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/tts/online/m;->i:Lcn/yunzhisheng/tts/online/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/tts/online/m;->i:Lcn/yunzhisheng/tts/online/e;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/tts/online/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/tts/online/m;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yunzhisheng/tts/online/m;->d(I)V

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/tts/online/m;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/tts/online/m;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->e:Lcn/yunzhisheng/tts/online/r;

    return-object v0
.end method

.method static synthetic c(Lcn/yunzhisheng/tts/online/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->i()V

    return-void
.end method

.method static synthetic d(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/t;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    return-object v0
.end method

.method private d(I)V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/tts/online/m;->i:Lcn/yunzhisheng/tts/online/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/tts/online/m;->i:Lcn/yunzhisheng/tts/online/e;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/e;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/yunzhisheng/tts/online/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->h()V

    return-void
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/tts/online/m;->k:Z

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/t;->d(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/t;->g()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/u;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.18"

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/tts/online/m;->l:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcn/yunzhisheng/tts/online/e;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->b:Lcn/yunzhisheng/tts/online/f;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/tts/online/e;-><init>(Lcn/yunzhisheng/tts/online/f;)V

    sput-object v0, Lcn/yunzhisheng/tts/online/m;->i:Lcn/yunzhisheng/tts/online/e;

    invoke-static {p1}, Lcn/yunzhisheng/tts/online/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/tts/online/r;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/m;->e:Lcn/yunzhisheng/tts/online/r;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/m;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;S)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcn/yunzhisheng/tts/online/s;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    invoke-static {}, Lcn/yunzhisheng/tts/online/d;->b()I

    move-result v1

    iput v1, v0, Lcn/yunzhisheng/tts/online/s;->i:I

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->i()V

    new-instance v0, Lcn/yunzhisheng/tts/online/u;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/tts/online/u;-><init>(Lcn/yunzhisheng/tts/online/s;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->u:Lcn/yunzhisheng/tts/online/v;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/u;->a(Lcn/yunzhisheng/tts/online/v;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/u;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/tts/online/m;->k:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/t;->b()V

    :cond_0
    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->i()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    iput p1, v0, Lcn/yunzhisheng/tts/online/s;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->i()V

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->g()V

    new-instance v0, Lcn/yunzhisheng/tts/online/t;

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->f()Z

    move-result v1

    iget v2, p0, Lcn/yunzhisheng/tts/online/m;->h:I

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/tts/online/t;-><init>(ZI)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iget-boolean v1, p0, Lcn/yunzhisheng/tts/online/m;->k:Z

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/t;->a(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iget v1, p0, Lcn/yunzhisheng/tts/online/m;->l:I

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/t;->b(I)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->t:Lcn/yunzhisheng/tts/online/g;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/t;->a(Lcn/yunzhisheng/tts/online/g;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->d:Lcn/yunzhisheng/tts/online/t;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/t;->start()V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    invoke-static {}, Lcn/yunzhisheng/tts/online/d;->b()I

    move-result v1

    iput v1, v0, Lcn/yunzhisheng/tts/online/s;->i:I

    new-instance v0, Lcn/yunzhisheng/tts/online/u;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/tts/online/u;-><init>(Lcn/yunzhisheng/tts/online/s;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/m;->u:Lcn/yunzhisheng/tts/online/v;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/u;->a(Lcn/yunzhisheng/tts/online/v;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->c:Lcn/yunzhisheng/tts/online/u;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->h()V

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/m;->i()V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/tts/online/m;->h:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/s;->g(Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcn/yunzhisheng/tts/online/s;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->f:Lcn/yunzhisheng/tts/online/s;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/m;->g:Ljava/lang/String;

    return-object v0
.end method
