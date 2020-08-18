.class Lcom/txznet/sdk/TXZWechatManager$1;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZWechatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZWechatManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZWechatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "img"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/txznet/comm/TN/T2;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZWechatManager$ImageListener;

    invoke-interface {v2, v0, v1}, Lcom/txznet/sdk/TXZWechatManager$ImageListener;->onImageReady(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
