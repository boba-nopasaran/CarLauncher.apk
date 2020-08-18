.class Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;
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

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->invalidate()V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;->this$0:Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;

    invoke-virtual {v0, p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
