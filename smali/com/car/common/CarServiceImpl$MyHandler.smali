.class final Lcom/car/common/CarServiceImpl$MyHandler;
.super Landroid/os/Handler;
.source "CarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/CarServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/CarServiceImpl;


# direct methods
.method private constructor <init>(Lcom/car/common/CarServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/CarServiceImpl$MyHandler;->this$0:Lcom/car/common/CarServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/common/CarServiceImpl;Lcom/car/common/CarServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/common/CarServiceImpl$MyHandler;-><init>(Lcom/car/common/CarServiceImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyHandler;->this$0:Lcom/car/common/CarServiceImpl;

    iget-object v0, v0, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/common/CarServiceImpl$MyHandler;->this$0:Lcom/car/common/CarServiceImpl;

    invoke-virtual {v0}, Lcom/car/common/CarServiceImpl;->bindService()V

    goto :goto_0

    :cond_0
    const-string v0, "CarSvc_CarServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is avaliable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/CarServiceImpl$MyHandler;->this$0:Lcom/car/common/CarServiceImpl;

    iget-object v2, v2, Lcom/car/common/CarServiceImpl;->mService:Lcom/car/common/ICarService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
