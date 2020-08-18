.class Lcom/txznet/sdk/TXZWechatManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZWechatManager;->setNotificationTool(Lcom/txznet/sdk/TXZWechatManager$NotificationTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZWechatManager$NotificationTool;

.field final synthetic T3:Lcom/txznet/sdk/TXZWechatManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZWechatManager;Lcom/txznet/sdk/TXZWechatManager$NotificationTool;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZWechatManager$2;->T3:Lcom/txznet/sdk/TXZWechatManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZWechatManager$2;->T:Lcom/txznet/sdk/TXZWechatManager$NotificationTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 8

    const-string v0, "notify.show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/txznet/comm/TN/T;

    invoke-direct {v6, p3}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v0, "msgId"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "id"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "hasSpeak"

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "isGroup"

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v0, "nick"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/txznet/sdk/TXZWechatManager$2;->T:Lcom/txznet/sdk/TXZWechatManager$NotificationTool;

    invoke-interface/range {v0 .. v5}, Lcom/txznet/sdk/TXZWechatManager$NotificationTool;->updateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "notify.cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZWechatManager$2;->T:Lcom/txznet/sdk/TXZWechatManager$NotificationTool;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZWechatManager$NotificationTool;->dismissNotify()V

    goto :goto_0
.end method
