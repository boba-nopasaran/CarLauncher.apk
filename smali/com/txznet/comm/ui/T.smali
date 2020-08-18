.class public Lcom/txznet/comm/ui/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/T3;

.field private static T2:Lcom/txznet/comm/ui/Tw;

.field private static T3:Lcom/txznet/comm/ui/T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/T3;
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/comm/ui/T3;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/txznet/comm/ui/T3;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T:Lcom/txznet/comm/ui/T3;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static T2()Lcom/txznet/comm/ui/Tw;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/comm/ui/Tw;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T2:Lcom/txznet/comm/ui/Tw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static T3()Lcom/txznet/comm/ui/T2;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/comm/ui/T;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/comm/ui/T2;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T2;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/T;->T3:Lcom/txznet/comm/ui/T2;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
