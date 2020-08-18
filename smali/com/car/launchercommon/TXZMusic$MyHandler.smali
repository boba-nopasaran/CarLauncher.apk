.class final Lcom/car/launchercommon/TXZMusic$MyHandler;
.super Landroid/os/Handler;
.source "TXZMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TXZMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TXZMusic;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TXZMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TXZMusic$MyHandler;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TXZMusic;Lcom/car/launchercommon/TXZMusic$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TXZMusic$MyHandler;-><init>(Lcom/car/launchercommon/TXZMusic;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LC.TXZMusic"

    const-string v1, "MSG_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic$MyHandler;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-static {v0}, Lcom/car/launchercommon/TXZMusic;->access$200(Lcom/car/launchercommon/TXZMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic$MyHandler;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-static {v0}, Lcom/car/launchercommon/TXZMusic;->access$200(Lcom/car/launchercommon/TXZMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/launchercommon/MusicTool$Callback;->onStateChanged()V

    goto :goto_0

    :pswitch_1
    const-string v0, "LC.TXZMusic"

    const-string v1, "MSG_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic$MyHandler;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-static {v0}, Lcom/car/launchercommon/TXZMusic;->access$200(Lcom/car/launchercommon/TXZMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TXZMusic$MyHandler;->this$0:Lcom/car/launchercommon/TXZMusic;

    invoke-static {v0}, Lcom/car/launchercommon/TXZMusic;->access$200(Lcom/car/launchercommon/TXZMusic;)Lcom/car/launchercommon/MusicTool$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/launchercommon/MusicTool$Callback;->onReady()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
