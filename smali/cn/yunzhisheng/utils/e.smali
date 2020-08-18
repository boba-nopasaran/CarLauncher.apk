.class public Lcn/yunzhisheng/utils/e;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcn/yunzhisheng/utils/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/utils/e;->a(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/utils/e;->a:Lcn/yunzhisheng/utils/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/utils/e;->a:Lcn/yunzhisheng/utils/f;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/utils/f;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public removeSendMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/utils/e;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/utils/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/yunzhisheng/utils/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMessageLisenter(Lcn/yunzhisheng/utils/f;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/utils/e;->a:Lcn/yunzhisheng/utils/f;

    return-void
.end method
