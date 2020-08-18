.class Lcom/txznet/comm/T3/T2$2;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/T3/T2$2;->T:Lcom/txznet/comm/T3/T2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package installed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$2;->T:Lcom/txznet/comm/T3/T2;

    invoke-static {v1, v0}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V

    return-void
.end method
