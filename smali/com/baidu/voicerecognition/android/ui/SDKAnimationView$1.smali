.class Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;
.super Ljava/lang/Object;
.source "SDKAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;


# direct methods
.method constructor <init>(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v0, 0x0

    int-to-float v3, v0

    const/high16 v4, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v5}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$000(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v3}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I

    move-result v3

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v3, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$102(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)I

    :goto_0
    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v5}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$102(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)I

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v3}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$102(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)I

    :cond_0
    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$200(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)V

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$300(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$300(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-static {v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->access$102(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)I

    goto :goto_0
.end method
