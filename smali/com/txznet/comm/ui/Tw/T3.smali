.class public Lcom/txznet/comm/ui/Tw/T3;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/Tw/T3;


# instance fields
.field private T3:Lcom/txznet/comm/ui/Tw/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/comm/ui/Tw/T3;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/T3;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tw/T3;->T:Lcom/txznet/comm/ui/Tw/T3;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/txznet/comm/ui/Tw/T2;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/T2;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/Tw/T3;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/Tw/T3;->T:Lcom/txznet/comm/ui/Tw/T3;

    return-object v0
.end method


# virtual methods
.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0, p1}, Lcom/txznet/comm/ui/Tw/T;->T(Lcom/txznet/comm/ui/Te/T2;)V

    return-void
.end method

.method public T(Z)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0, p1}, Lcom/txznet/comm/ui/Tw/T;->T(Z)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    instance-of v0, v0, Lcom/txznet/comm/ui/Tw/TN;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Tw/TN;->T3()Lcom/txznet/comm/ui/Tw/TN;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    :cond_0
    return-void
.end method

.method public T2()Z
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->isShowing()Z

    move-result v0

    return v0
.end method

.method public T3()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->T()V

    return-void
.end method

.method public TN()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->show()V

    return-void
.end method

.method public Te()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T3;->T3:Lcom/txznet/comm/ui/Tw/T;

    invoke-interface {v0}, Lcom/txznet/comm/ui/Tw/T;->dismiss()V

    return-void
.end method
