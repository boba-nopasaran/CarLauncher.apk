.class Lcom/car/launchercommon/CompassView$2;
.super Ljava/lang/Object;
.source "CompassView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/CompassView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/CompassView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/CompassView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x0

    const-string v8, "0.0"

    const-string v10, "sys.current.gpsinfo"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v10}, Lcom/car/launchercommon/CompassView;->access$600(Lcom/car/launchercommon/CompassView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    iget-object v10, v10, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v11}, Lcom/car/launchercommon/CompassView;->access$700(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v10, v6}, Lcom/car/launchercommon/CompassView;->access$602(Lcom/car/launchercommon/CompassView;Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "LC.CompassView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gpsinfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x3

    if-lt v10, v11, :cond_1

    const/4 v10, 0x2

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x2

    :try_start_0
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v10, 0xffff

    and-int/2addr v10, v4

    ushr-int/lit8 v0, v10, 0x7

    and-int/lit8 v7, v4, 0x7f

    rem-int/lit16 v10, v0, 0x168

    rsub-int v2, v10, 0x168

    int-to-float v10, v7

    const v11, 0x40666666    # 3.6f

    mul-float v5, v10, v11

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v10, "0.0"

    invoke-direct {v1, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v10, v5

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    int-to-float v11, v2

    invoke-static {v10, v11}, Lcom/car/launchercommon/CompassView;->access$302(Lcom/car/launchercommon/CompassView;F)F

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v10}, Lcom/car/launchercommon/CompassView;->access$800(Lcom/car/launchercommon/CompassView;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_2
    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v10}, Lcom/car/launchercommon/CompassView;->access$900(Lcom/car/launchercommon/CompassView;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v10}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v10

    iget-object v11, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v11}, Lcom/car/launchercommon/CompassView;->access$300(Lcom/car/launchercommon/CompassView;)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/car/launchercommon/CompassView;->access$102(Lcom/car/launchercommon/CompassView;Z)Z

    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    iget-object v10, v10, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v11}, Lcom/car/launchercommon/CompassView;->access$500(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v10, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    iget-object v10, v10, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/car/launchercommon/CompassView$2;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v11}, Lcom/car/launchercommon/CompassView;->access$700(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
