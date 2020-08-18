.class Lcom/car/launchercommon/KuwoMusic$1;
.super Ljava/lang/Object;
.source "KuwoMusic.java"

# interfaces
.implements Lcn/kuwo/autosdk/api/OnPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/KuwoMusic;->initKwApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/KuwoMusic;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/KuwoMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStatus(Lcn/kuwo/autosdk/api/PlayerStatus;Lcn/kuwo/autosdk/bean/Music;)V
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-static {v0, p1}, Lcom/car/launchercommon/KuwoMusic;->access$002(Lcom/car/launchercommon/KuwoMusic;Lcn/kuwo/autosdk/api/PlayerStatus;)Lcn/kuwo/autosdk/api/PlayerStatus;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    iget-object v1, p2, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/car/launchercommon/KuwoMusic;->access$102(Lcom/car/launchercommon/KuwoMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    iget-object v1, p2, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/car/launchercommon/KuwoMusic;->access$202(Lcom/car/launchercommon/KuwoMusic;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "LC.KuwoMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTrackName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-static {v2}, Lcom/car/launchercommon/KuwoMusic;->access$100(Lcom/car/launchercommon/KuwoMusic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mArtistName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-static {v2}, Lcom/car/launchercommon/KuwoMusic;->access$200(Lcom/car/launchercommon/KuwoMusic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-static {v0}, Lcom/car/launchercommon/KuwoMusic;->access$300(Lcom/car/launchercommon/KuwoMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/KuwoMusic$1;->this$0:Lcom/car/launchercommon/KuwoMusic;

    invoke-static {v0}, Lcom/car/launchercommon/KuwoMusic;->access$300(Lcom/car/launchercommon/KuwoMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/launchercommon/MusicTool$Callback;->onStateChanged()V

    :cond_1
    return-void
.end method
