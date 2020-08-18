.class public Lcom/txznet/sdk/bean/WechatContact;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected T:Ljava/lang/String;

.field protected T2:Ljava/lang/String;

.field protected T3:Ljava/lang/String;

.field protected TN:Z

.field protected Te:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v1, "id"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/txznet/sdk/bean/WechatContact;->setId(Ljava/lang/String;)V

    const-string v1, "icon"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/txznet/sdk/bean/WechatContact;->setIcon(Ljava/lang/String;)V

    const-string v1, "nick"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/txznet/sdk/bean/WechatContact;->setNick(Ljava/lang/String;)V

    const-string v1, "blocked"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/txznet/sdk/bean/WechatContact;->setBlocked(Z)V

    const-string v1, "isgroup"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/txznet/sdk/bean/WechatContact;->setIsGroup(Z)V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatContact;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatContact;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatContact;->T2:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/WechatContact;->TN:Z

    return v0
.end method

.method public isIsGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/WechatContact;->Te:Z

    return v0
.end method

.method public setBlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/WechatContact;->TN:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatContact;->T3:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatContact;->T:Ljava/lang/String;

    return-void
.end method

.method public setIsGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/WechatContact;->Te:Z

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatContact;->T2:Ljava/lang/String;

    return-void
.end method
