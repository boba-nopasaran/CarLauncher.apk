.class public Lcom/txznet/comm/ui/T3;
.super Landroid/database/Observable;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/T3$T;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/txznet/comm/ui/T3$T;",
        ">;"
    }
.end annotation


# instance fields
.field private T:Landroid/content/Context;

.field private T3:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    new-instance v1, Lcom/txznet/comm/ui/T3$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/T3$1;-><init>(Lcom/txznet/comm/ui/T3;)V

    iput-object v1, p0, Lcom/txznet/comm/ui/T3;->T3:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/txznet/comm/ui/T3;->T:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/txznet/comm/ui/T3;->T:Landroid/content/Context;

    iget-object v2, p0, Lcom/txznet/comm/ui/T3;->T3:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public T()V
    .locals 3

    iget-object v2, p0, Lcom/txznet/comm/ui/T3;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/T3;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/T3;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/T3$T;

    invoke-interface {v1}, Lcom/txznet/comm/ui/T3$T;->T()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
