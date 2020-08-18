.class public Lcom/txznet/sdk/TXZWheelControlManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;,
        Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;,
        Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;
    }
.end annotation


# static fields
.field private static final T:Lcom/txznet/sdk/TXZWheelControlManager;


# instance fields
.field private T2:Z

.field private T3:Ljava/lang/Boolean;

.field private TN:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private Te:J

.field private Tn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

.field private Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZWheelControlManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZWheelControlManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZWheelControlManager;->T:Lcom/txznet/sdk/TXZWheelControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    return-void
.end method

.method private T(I)Z
    .locals 2

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    invoke-interface {v0, p1}, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;->onKeyEvent(I)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZWheelControlManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZWheelControlManager;->T:Lcom/txznet/sdk/TXZWheelControlManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.enable"

    iget-object v4, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.connectionstatus"

    invoke-virtual {v1, v2, v3, v8, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setlistener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_2
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "globalevent"

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setgloballistener"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_3
    return-void
.end method

.method public enableWheelControl(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.enable"

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T3:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public isWheelControlConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    return v0
.end method

.method public notifyCallback(Ljava/lang/String;[B)[B
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : notify callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string v3, "WheelControl : data == null"

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const-string v3, "txz.wheelcontrol.notify.connected"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : connection state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->T2:Z

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    invoke-interface {v3, v0}, Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;->isConnected(Z)V

    goto :goto_0

    :cond_2
    const-string v3, "txz.wheelcontrol.notify.event"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p2}, Lcom/txznet/comm/TN/T;-><init>([B)V

    if-eqz v2, :cond_0

    const-string v3, "evnetid"

    const-class v4, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WheelControl : onKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;

    invoke-interface {v3, v1}, Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;->onKeyEvent(I)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "txz.wheelcontrol.notify.globalevent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p2}, Lcom/txznet/comm/TN/T;-><init>([B)V

    if-eqz v2, :cond_0

    const-string v3, "evnetid"

    const-class v4, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/txznet/sdk/TXZWheelControlManager;->T(I)Z

    goto/16 :goto_0
.end method

.method public regGlobalEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public registerWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.setlistener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Te:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public removeGlobalWheelControlListener()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    iput-object v3, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.removegloballistener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public scanLEDevice(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.startlescan"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.stoplescan"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setConnectionStatusLinstener(Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tw:Lcom/txznet/sdk/TXZWheelControlManager$OnConnectionStatusLinstener;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.connectionstatus"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setGlobalWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Ty:Lcom/txznet/sdk/TXZWheelControlManager$OnTXZGlobalWheelControlListener;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "globalevent"

    iget-object v2, p0, Lcom/txznet/sdk/TXZWheelControlManager;->Tn:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "comm.wheelcontrol.setgloballistener"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterWheelControlListener(Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/txznet/sdk/TXZWheelControlManager;->TN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.wheelcontrol.removelistener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method
