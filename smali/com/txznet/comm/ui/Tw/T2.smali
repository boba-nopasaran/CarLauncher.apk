.class public Lcom/txznet/comm/ui/Tw/T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/Tw/T;


# instance fields
.field T:Ljava/lang/Runnable;

.field private T2:Ljava/lang/Object;

.field private T3:Lcom/txznet/comm/ui/Tw/Tw;

.field private TN:Ljava/lang/Boolean;

.field private Te:Ljava/lang/Float;

.field private Tw:Lcom/txznet/comm/ui/Te/T2;

.field private Ty:Lcom/txznet/comm/ui/Tw$T;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    new-instance v0, Lcom/txznet/comm/ui/Tw/T2$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/T2$1;-><init>(Lcom/txznet/comm/ui/Tw/T2;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/T2;)Lcom/txznet/comm/ui/Tw/Tw;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    return-object v0
.end method

.method private T(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordWin2Impl1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    return-void
.end method

.method private T2()V
    .locals 1

    const-string v0, "releaseWinRecord"

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Tw/T2;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T3()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/TN;->Tw()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private T3()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-direct {v2, v1, v3}, Lcom/txznet/comm/ui/Tw/Tw;-><init>(ZLcom/txznet/comm/ui/Te/T2;)V

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    :goto_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Ty:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw/Tw;->T(Lcom/txznet/comm/ui/Tw$T;)V

    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->Te:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw/Tw;->T(Ljava/lang/Float;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v0

    new-instance v2, Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v3, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    :goto_2
    invoke-direct {v2, v1, v0}, Lcom/txznet/comm/ui/Tw/Tw;-><init>(ZLcom/txznet/comm/ui/Te/T2;)V

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/T2;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T2()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 2

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T3()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 2

    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw/Tw;->T(Lcom/txznet/comm/ui/Te/T2;)V

    :cond_0
    return-void
.end method

.method public T(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->TN:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Tw/Tw;->T(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/T2;->T2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/TN;->TN()V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/T2;->T3()V

    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2;->T3:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->show()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
