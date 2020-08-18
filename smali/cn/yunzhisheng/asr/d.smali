.class public Lcn/yunzhisheng/asr/d;
.super Lcn/yunzhisheng/asr/e;


# static fields
.field private static final i:I = 0x32


# instance fields
.field private h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asr/e;-><init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/d;->h:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/d;->g:Lcn/yunzhisheng/asr/VAD;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lcn/yunzhisheng/asr/VAD;->a([BII)I

    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/d;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()[B
    .locals 5

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/d;->h:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x32

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
