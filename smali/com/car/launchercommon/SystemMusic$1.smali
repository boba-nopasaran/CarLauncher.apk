.class Lcom/car/launchercommon/SystemMusic$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/SystemMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/SystemMusic;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/SystemMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/SystemMusic$1;->this$0:Lcom/car/launchercommon/SystemMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LC.SystemMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic$1;->this$0:Lcom/car/launchercommon/SystemMusic;

    invoke-static {v1}, Lcom/car/launchercommon/SystemMusic;->access$000(Lcom/car/launchercommon/SystemMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/SystemMusic$1;->this$0:Lcom/car/launchercommon/SystemMusic;

    invoke-static {v1}, Lcom/car/launchercommon/SystemMusic;->access$000(Lcom/car/launchercommon/SystemMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/launchercommon/MusicTool$Callback;->onStateChanged()V

    :cond_0
    return-void
.end method
