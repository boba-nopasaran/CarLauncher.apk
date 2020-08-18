.class public Lcn/yunzhisheng/asr/f;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Lcn/yunzhisheng/asr/g;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/g;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcn/yunzhisheng/asr/f;->a:I

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/f;->c:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/f;->d:Z

    iput-object p1, p0, Lcn/yunzhisheng/asr/f;->b:Lcn/yunzhisheng/asr/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/f;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/f;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/f;->c:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/f;->e()V

    iget v0, p0, Lcn/yunzhisheng/asr/f;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcn/yunzhisheng/asr/f;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/f;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/f;->d:Z

    const-string v0, "OnTimer:start"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/f;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/f;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "OnTimer:cancel"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcn/yunzhisheng/asr/f;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/f;->d:Z

    :cond_0
    iput-boolean v1, p0, Lcn/yunzhisheng/asr/f;->c:Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/f;->c:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/f;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/f;->b:Lcn/yunzhisheng/asr/g;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/g;->a()V

    :cond_0
    return-void
.end method
