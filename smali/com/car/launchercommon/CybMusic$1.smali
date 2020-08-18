.class Lcom/car/launchercommon/CybMusic$1;
.super Ljava/lang/Object;
.source "CybMusic.java"

# interfaces
.implements Lcom/hongfans/carmedia/OnPlayChangedListener;


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

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPlayListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V
    .locals 3

    const-string v0, "LC.CybMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPlayMusicChanged model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-virtual {p1}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/launchercommon/CybMusic;->access$102(Lcom/car/launchercommon/CybMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-virtual {p1}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/launchercommon/CybMusic;->access$202(Lcom/car/launchercommon/CybMusic;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v0}, Lcom/car/launchercommon/CybMusic;->access$200(Lcom/car/launchercommon/CybMusic;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v0}, Lcom/car/launchercommon/CybMusic;->access$200(Lcom/car/launchercommon/CybMusic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-virtual {p1}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/launchercommon/CybMusic;->access$202(Lcom/car/launchercommon/CybMusic;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v0, "LC.CybMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mArtistName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v2}, Lcom/car/launchercommon/CybMusic;->access$200(Lcom/car/launchercommon/CybMusic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    iget-object v0, v0, Lcom/car/launchercommon/CybMusic;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/launchercommon/CybMusic$1$2;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/CybMusic$1$2;-><init>(Lcom/car/launchercommon/CybMusic$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnPlayStateChanged(I)V
    .locals 3

    const-string v0, "LC.CybMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPlayStateChanged, state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    iget v2, v2, Lcom/car/launchercommon/CybMusic;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    iput p1, v0, Lcom/car/launchercommon/CybMusic;->mState:I

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    iget-object v0, v0, Lcom/car/launchercommon/CybMusic;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/launchercommon/CybMusic$1$1;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/CybMusic$1$1;-><init>(Lcom/car/launchercommon/CybMusic$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
