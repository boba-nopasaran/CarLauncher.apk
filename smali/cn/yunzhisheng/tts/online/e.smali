.class public Lcn/yunzhisheng/tts/online/e;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcn/yunzhisheng/tts/online/f;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/tts/online/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/e;->a:Lcn/yunzhisheng/tts/online/f;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/tts/online/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/yunzhisheng/tts/online/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcn/yunzhisheng/tts/online/f;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/e;->a:Lcn/yunzhisheng/tts/online/f;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/e;->a:Lcn/yunzhisheng/tts/online/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/tts/online/f;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
