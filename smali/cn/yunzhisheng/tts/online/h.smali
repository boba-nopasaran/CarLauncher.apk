.class public Lcn/yunzhisheng/tts/online/h;
.super Ljava/lang/Thread;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/yunzhisheng/tts/online/h;->a:I

    const/16 v0, -0x13

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/tts/online/h;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/tts/online/h;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/tts/online/h;->a:I

    return-void
.end method

.method public run()V
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/tts/online/h;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
