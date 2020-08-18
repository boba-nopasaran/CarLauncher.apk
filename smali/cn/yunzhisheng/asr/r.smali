.class public abstract Lcn/yunzhisheng/asr/r;
.super Ljava/lang/Object;


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2

.field protected static final c:I = 0x3

.field protected static final d:I = 0xb

.field protected static final e:I = 0xc

.field protected static final f:I = 0xd

.field protected static final g:I = 0xe

.field protected static final h:I = 0xf

.field protected static final i:I = 0x15

.field protected static final j:I = 0x16

.field protected static final k:I = 0x17

.field protected static final l:I = 0x18


# instance fields
.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/yunzhisheng/asr/s;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/asr/s;-><init>(Lcn/yunzhisheng/asr/r;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/r;->m:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/r;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/r;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/r;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/r;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/os/Message;)V
.end method

.method protected abstract a(Lcn/yunzhisheng/asr/k;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b()V
.end method

.method protected abstract b(I)V
.end method

.method protected abstract c()V
.end method

.method protected abstract c(I)V
.end method

.method protected abstract d()V
.end method

.method protected abstract d(I)V
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method
