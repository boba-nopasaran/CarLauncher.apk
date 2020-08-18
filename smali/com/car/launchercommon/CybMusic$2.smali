.class Lcom/car/launchercommon/CybMusic$2;
.super Landroid/content/BroadcastReceiver;
.source "CybMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/CybMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/CybMusic;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/CybMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic$2;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LC.CybMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "action_service_bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/CybMusic$2;->this$0:Lcom/car/launchercommon/CybMusic;

    iget-object v1, v1, Lcom/car/launchercommon/CybMusic;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/car/launchercommon/CybMusic$2;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v2}, Lcom/car/launchercommon/CybMusic;->access$300(Lcom/car/launchercommon/CybMusic;)Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    :cond_0
    return-void
.end method
