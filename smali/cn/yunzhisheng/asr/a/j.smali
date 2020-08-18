.class public Lcn/yunzhisheng/asr/a/j;
.super Ljava/lang/Object;


# instance fields
.field a:Lcn/yunzhisheng/asr/a/k;

.field b:Lcn/yunzhisheng/asr/a/l;

.field private c:[Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/a/j;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    iput-object p1, p0, Lcn/yunzhisheng/asr/a/j;->a:Lcn/yunzhisheng/asr/a/k;

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/asr/a/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a/j;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/j;->b()V

    new-instance v0, Lcn/yunzhisheng/asr/a/l;

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/j;->a:Lcn/yunzhisheng/asr/a/k;

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/a/l;-><init>(Lcn/yunzhisheng/asr/a/j;Lcn/yunzhisheng/asr/a/k;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/j;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/j;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/a/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a/j;->c:[Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/j;->b:Lcn/yunzhisheng/asr/a/l;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a/j;->d:Z

    return v0
.end method
