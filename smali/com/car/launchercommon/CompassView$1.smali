.class Lcom/car/launchercommon/CompassView$1;
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

    iput-object p1, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$000(Lcom/car/launchercommon/CompassView;)Lcom/car/launchercommon/RotateImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$100(Lcom/car/launchercommon/CompassView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v2

    iget-object v3, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v3}, Lcom/car/launchercommon/CompassView;->access$300(Lcom/car/launchercommon/CompassView;)F

    move-result v3

    sub-float/2addr v2, v3

    rem-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$300(Lcom/car/launchercommon/CompassView;)F

    move-result v1

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v2

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v2, v0, v7

    if-lez v2, :cond_4

    sub-float v2, v6, v0

    neg-float v0, v2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    iget-object v3, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v3}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v4}, Lcom/car/launchercommon/CompassView;->access$400(Lcom/car/launchercommon/CompassView;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/launchercommon/CompassView;->access$202(Lcom/car/launchercommon/CompassView;F)F

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2, v6}, Lcom/car/launchercommon/CompassView;->access$216(Lcom/car/launchercommon/CompassView;F)F

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v2

    const v3, 0x43b3f333    # 359.9f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2, v7}, Lcom/car/launchercommon/CompassView;->access$202(Lcom/car/launchercommon/CompassView;F)F

    :cond_2
    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v2}, Lcom/car/launchercommon/CompassView;->access$000(Lcom/car/launchercommon/CompassView;)Lcom/car/launchercommon/RotateImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v3}, Lcom/car/launchercommon/CompassView;->access$200(Lcom/car/launchercommon/CompassView;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/car/launchercommon/RotateImageView;->updateDirection(F)V

    :goto_1
    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    iget-object v2, v2, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    invoke-static {v3}, Lcom/car/launchercommon/CompassView;->access$500(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    add-float/2addr v0, v6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/car/launchercommon/CompassView$1;->this$0:Lcom/car/launchercommon/CompassView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/car/launchercommon/CompassView;->access$102(Lcom/car/launchercommon/CompassView;Z)Z

    goto :goto_1
.end method
