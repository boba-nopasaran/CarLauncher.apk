.class public Lcom/txznet/comm/TN/T3;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Landroid/content/Context;

.field private T2:Landroid/app/KeyguardManager;

.field private T3:Landroid/os/PowerManager;

.field private TN:Landroid/os/PowerManager$WakeLock;

.field private Te:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/comm/TN/T3;->T:Landroid/content/Context;

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->T:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/txznet/comm/TN/T3;->T3:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->T:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/txznet/comm/TN/T3;->T2:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public T()V
    .locals 3

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/TN/T3;->T3()V

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->T3:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "TXZ_WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->T2:Landroid/app/KeyguardManager;

    const-string v1, "KeyguardLock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    return-void
.end method

.method public T3()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iput-object v1, p0, Lcom/txznet/comm/TN/T3;->TN:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    iput-object v1, p0, Lcom/txznet/comm/TN/T3;->Te:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_2
    return-void
.end method
