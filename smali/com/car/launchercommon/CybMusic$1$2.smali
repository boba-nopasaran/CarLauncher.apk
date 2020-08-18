.class Lcom/car/launchercommon/CybMusic$1$2;
.super Ljava/lang/Object;
.source "CybMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/CybMusic$1;->OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/CybMusic$1;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/CybMusic$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CybMusic$1$2;->this$1:Lcom/car/launchercommon/CybMusic$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1$2;->this$1:Lcom/car/launchercommon/CybMusic$1;

    iget-object v0, v0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v0}, Lcom/car/launchercommon/CybMusic;->access$000(Lcom/car/launchercommon/CybMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/CybMusic$1$2;->this$1:Lcom/car/launchercommon/CybMusic$1;

    iget-object v0, v0, Lcom/car/launchercommon/CybMusic$1;->this$0:Lcom/car/launchercommon/CybMusic;

    invoke-static {v0}, Lcom/car/launchercommon/CybMusic;->access$000(Lcom/car/launchercommon/CybMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/launchercommon/MusicTool$Callback;->onStateChanged()V

    :cond_0
    return-void
.end method
