.class Lcom/car/launchercommon/TXZMusic$1;
.super Ljava/lang/Object;
.source "TXZMusic.java"

# interfaces
.implements Lcom/txznet/sdk/TXZConfigManager$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/TXZMusic;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TXZMusic;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TXZMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TXZMusic$1;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    const-string v0, "LC.TXZMusic"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "LC.TXZMusic"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic$1;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-static {v0}, Lcom/car/launchercommon/TXZMusic;->access$100(Lcom/car/launchercommon/TXZMusic;)V

    return-void
.end method
