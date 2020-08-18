.class public Lcom/txznet/sdk/TXZPowerManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZPowerManager$1;,
        Lcom/txznet/sdk/TXZPowerManager$PowerAction;
    }
.end annotation


# static fields
.field static T:Ljava/lang/Boolean;

.field private static T3:Lcom/txznet/sdk/TXZPowerManager;


# instance fields
.field private T2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZPowerManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZPowerManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T3:Lcom/txznet/sdk/TXZPowerManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZPowerManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T3:Lcom/txznet/sdk/TXZPowerManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 0

    return-void
.end method

.method T3()V
    .locals 5

    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method public notifyPowerAction(Lcom/txznet/sdk/TXZPowerManager$PowerAction;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager$1;->T:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.BEFORE_POWER_OFF"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.BEFORE_SLEEP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.POWER_OFF"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.POWER_ON"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.SLEEP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.WAKEUP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.power.SHOCK_WAKEUP"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public reinitTXZ()V
    .locals 3

    const-class v1, Lcom/txznet/sdk/TXZPowerManager;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/txznet/comm/T3/T2;->Te:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reinitTXZ(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZPowerManager;->T2:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZPowerManager;->reinitTXZ()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseTXZ()V
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/txznet/sdk/TXZPowerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/txznet/comm/T3/T2;->Te:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T2;->T()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.exitTXZ"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
