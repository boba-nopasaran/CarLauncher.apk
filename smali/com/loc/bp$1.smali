.class final Lcom/loc/bp$1;
.super Ljava/util/TimerTask;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/loc/bp;


# direct methods
.method constructor <init>(Lcom/loc/bp;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    iput p2, p0, Lcom/loc/bp$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v2}, Lcom/loc/bp;->g(Lcom/loc/bp;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v2}, Lcom/loc/bp;->h(Lcom/loc/bp;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v2}, Lcom/loc/bp;->i(Lcom/loc/bp;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v2}, Lcom/loc/bp;->j(Lcom/loc/bp;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v0}, Lcom/loc/bp;->f(Lcom/loc/bp;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    iget v1, p0, Lcom/loc/bp$1;->a:I

    invoke-static {v0, v1}, Lcom/loc/bp;->a(Lcom/loc/bp;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp$1;->b:Lcom/loc/bp;

    invoke-static {v0}, Lcom/loc/bp;->j(Lcom/loc/bp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
