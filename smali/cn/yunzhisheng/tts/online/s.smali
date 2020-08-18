.class public Lcn/yunzhisheng/tts/online/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static g:Z

.field public static h:Z

.field private static u:Lcn/yunzhisheng/tts/online/s;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lcn/yunzhisheng/tts/online/b;

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field r:Ljava/lang/String;

.field private s:Lcn/yunzhisheng/tts/online/a;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ttsService/Authentication"

    sput-object v0, Lcn/yunzhisheng/tts/online/s;->a:Ljava/lang/String;

    const-string v0, "ttsService/TTSServiceApi"

    sput-object v0, Lcn/yunzhisheng/tts/online/s;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/yunzhisheng/tts/online/s;->g:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/yunzhisheng/tts/online/s;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x50

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->f:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/tts/online/a;

    const-string v1, "tr.hivoice.cn"

    const-string v2, "tr.hivoice.cn"

    invoke-direct {v0, v1, v5, v2, v5}, Lcn/yunzhisheng/tts/online/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    iput-boolean v4, p0, Lcn/yunzhisheng/tts/online/s;->t:Z

    iput v3, p0, Lcn/yunzhisheng/tts/online/s;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->j:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/tts/online/b;

    invoke-direct {v0}, Lcn/yunzhisheng/tts/online/b;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->k:Lcn/yunzhisheng/tts/online/b;

    const/16 v0, 0x8

    iput v0, p0, Lcn/yunzhisheng/tts/online/s;->l:I

    const/16 v0, 0x14

    iput v0, p0, Lcn/yunzhisheng/tts/online/s;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/yunzhisheng/tts/online/s;->n:I

    iput-boolean v3, p0, Lcn/yunzhisheng/tts/online/s;->o:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/tts/online/s;->p:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/tts/online/s;->q:Z

    const-string v0, "0"

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/s;->r:Ljava/lang/String;

    sput-object p0, Lcn/yunzhisheng/tts/online/s;->u:Lcn/yunzhisheng/tts/online/s;

    return-void
.end method

.method public static a()Lcn/yunzhisheng/tts/online/s;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/tts/online/s;->u:Lcn/yunzhisheng/tts/online/s;

    if-nez v0, :cond_0

    new-instance v0, Lcn/yunzhisheng/tts/online/s;

    invoke-direct {v0}, Lcn/yunzhisheng/tts/online/s;-><init>()V

    sput-object v0, Lcn/yunzhisheng/tts/online/s;->u:Lcn/yunzhisheng/tts/online/s;

    :cond_0
    sget-object v0, Lcn/yunzhisheng/tts/online/s;->u:Lcn/yunzhisheng/tts/online/s;

    return-object v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->r:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/tts/online/a;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/tts/online/a;->b(I)V

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcn/yunzhisheng/tts/online/b;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->k:Lcn/yunzhisheng/tts/online/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/yunzhisheng/tts/online/s;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/a;->c()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/tts/online/s;->t:Z

    if-nez v0, :cond_0

    const-string v0, "&user-agent=MIPlayer"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->e:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/a;->e()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/s;->j:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcn/yunzhisheng/tts/online/a;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/s;->s:Lcn/yunzhisheng/tts/online/a;

    return-object v0
.end method
