.class Lcom/txznet/sdk/TXZNavManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNavManager;->T3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZNavManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZNavManager;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const-string v2, "enter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onEnter()V

    goto :goto_0

    :cond_2
    const-string v2, "exit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onExit()V

    goto :goto_1

    :cond_3
    const-string v2, "foreground"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onForeground(Z)V

    goto :goto_2

    :cond_4
    const-string v2, "background"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onForeground(Z)V

    goto :goto_3

    :cond_5
    const-string v2, "start"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onStart(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v2, "end"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZNavManager$3;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZNavManager;->T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZNavManager$NavStatusListener;->onEnd(Ljava/lang/String;)V

    goto :goto_5
.end method
