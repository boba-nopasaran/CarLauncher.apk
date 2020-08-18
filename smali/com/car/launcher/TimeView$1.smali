.class Lcom/car/launcher/TimeView$1;
.super Landroid/os/Handler;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/TimeView;


# direct methods
.method constructor <init>(Lcom/car/launcher/TimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/TimeView$1;->this$0:Lcom/car/launcher/TimeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/car/launcher/TimeView$1;->this$0:Lcom/car/launcher/TimeView;

    invoke-static {v1}, Lcom/car/launcher/TimeView;->access$000(Lcom/car/launcher/TimeView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/launcher/TimeView$1;->this$0:Lcom/car/launcher/TimeView;

    invoke-static {v1}, Lcom/car/launcher/TimeView;->access$000(Lcom/car/launcher/TimeView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :pswitch_1
    iget-object v1, p0, Lcom/car/launcher/TimeView$1;->this$0:Lcom/car/launcher/TimeView;

    invoke-static {v1}, Lcom/car/launcher/TimeView;->access$100(Lcom/car/launcher/TimeView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
