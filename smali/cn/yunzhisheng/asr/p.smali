.class Lcn/yunzhisheng/asr/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/asr/q;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/asr/o;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/asr/o;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-static {v0}, Lcn/yunzhisheng/asr/o;->a(Lcn/yunzhisheng/asr/o;)Lcn/yunzhisheng/asr/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/i;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/o;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-static {v0}, Lcn/yunzhisheng/asr/o;->a(Lcn/yunzhisheng/asr/o;)Lcn/yunzhisheng/asr/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/i;->b()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/o;->a(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1, p2, p3}, Lcn/yunzhisheng/asr/o;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/yunzhisheng/asr/o;->a(Z[BII)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    iget-object v0, v0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->isPlayStartBeep()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-static {v0}, Lcn/yunzhisheng/asr/o;->b(Lcn/yunzhisheng/asr/o;)Lcn/yunzhisheng/asr/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->a()Z

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/o;->e()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/o;->c(I)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/o;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public onRecognizerStart()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/o;->f()V

    return-void
.end method

.method public onResult(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/asr/o;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/o;->b(I)V

    return-void
.end method

.method public onVADTimeout()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/p;->a:Lcn/yunzhisheng/asr/o;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/o;->b()V

    return-void
.end method
