.class Lcom/txznet/sdk/TXZAsrManager$1;
.super Lcom/txznet/comm/T3/T/T$TN;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAsrManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrManager;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$1;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T/T$TN;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;[B)V
    .locals 3

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager$1;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZAsrManager;->T(Lcom/txznet/sdk/TXZAsrManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZAsrManager$CommandListener;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, p1, v2}, Lcom/txznet/sdk/TXZAsrManager$CommandListener;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
