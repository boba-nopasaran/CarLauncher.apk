.class Lcn/yunzhisheng/tts/online/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/tts/online/v;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/tts/online/m;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/tts/online/m;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->d(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->d(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/t;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->e(Lcn/yunzhisheng/tts/online/m;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a([BII)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->d(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->d(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/t;->a([B)V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/p;->a:Lcn/yunzhisheng/tts/online/m;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;ILjava/lang/Object;)V

    return-void
.end method
