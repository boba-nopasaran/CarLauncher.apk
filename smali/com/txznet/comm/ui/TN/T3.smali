.class public Lcom/txznet/comm/ui/TN/T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TN/T3$T;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/comm/ui/TN/T3;


# instance fields
.field private T2:I

.field private T3:Lcom/txznet/comm/ui/TN/T;

.field private TN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/comm/ui/TN/T3$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/comm/ui/TN/T3;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TN/T3;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/TN/T3;->T:Lcom/txznet/comm/ui/TN/T3;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/TN/T3;->T2:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->TN:Ljava/util/Set;

    return-void
.end method

.method public static T()Lcom/txznet/comm/ui/TN/T3;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/TN/T3;->T:Lcom/txznet/comm/ui/TN/T3;

    return-object v0
.end method

.method private T2(I)Z
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T;->T(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UI2.0] mKeyEventDispatcher is null,ingore keyEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public T(II)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/TN/T;->T(II)V

    :cond_0
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/TR/T2;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T;->T(Lcom/txznet/comm/ui/TR/T2;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[UI2.0] mKeyEventDispatcher is null,update content view failed"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public T(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "[UI2.0] on KEYCODE_BACK pressed"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->cancel()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TN/T3;->T2(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TN/T3;->T2(I)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TN/T3;->T2(I)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TN/T3;->T2(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_4
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x17 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
    .end sparse-switch
.end method

.method public T3()V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->Tw()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/txznet/comm/ui/Ty/T;->T3(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/ui/TN/T;

    iput-object v2, p0, Lcom/txznet/comm/ui/TN/T3;->T3:Lcom/txznet/comm/ui/TN/T;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "[UI2.0] get keyEventDispatcher error"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public T3(I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UI2.0] onWheelControlStateChanged :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget v2, p0, Lcom/txznet/comm/ui/TN/T3;->T2:I

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/txznet/comm/ui/TN/T3;->T2:I

    iget-object v2, p0, Lcom/txznet/comm/ui/TN/T3;->TN:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/TN/T3$T;

    if-ne p1, v4, :cond_3

    invoke-interface {v1, v4}, Lcom/txznet/comm/ui/TN/T3$T;->T(Z)V

    :cond_3
    if-nez p1, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/txznet/comm/ui/TN/T3$T;->T(Z)V

    goto :goto_0
.end method
