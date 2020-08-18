.class final Lcom/loc/b$b;
.super Landroid/os/HandlerThread;
.source "APSServiceCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/loc/b;


# direct methods
.method public constructor <init>(Lcom/loc/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    invoke-static {v0}, Lcom/loc/b;->a(Lcom/loc/b;)Lcom/loc/bu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    new-instance v1, Lcom/loc/bu;

    iget-object v2, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    iget-object v2, v2, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/loc/bu;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/loc/b;->a(Lcom/loc/b;Lcom/loc/bu;)Lcom/loc/bu;

    :cond_0
    iget-object v0, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    new-instance v1, Lcom/loc/bp;

    invoke-direct {v1}, Lcom/loc/bp;-><init>()V

    iput-object v1, v0, Lcom/loc/b;->b:Lcom/loc/bp;

    iget-object v0, p0, Lcom/loc/b$b;->a:Lcom/loc/b;

    invoke-static {v0}, Lcom/loc/b;->b(Lcom/loc/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
