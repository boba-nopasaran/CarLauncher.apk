.class Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSysManager$AppMgrTool;->closeApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field T:I

.field final synthetic T2:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

.field final synthetic T3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSysManager$AppMgrTool;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T2:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    iput-object p2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T3:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/txznet/sdk/TXZSysManager;->T(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/txznet/sdk/TXZSysManager$AppMgrTool$1;->T:I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
