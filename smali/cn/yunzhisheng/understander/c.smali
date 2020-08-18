.class public Lcn/yunzhisheng/understander/c;
.super Lcn/yunzhisheng/understander/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/yunzhisheng/understander/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/yunzhisheng/understander/a;->setEngine(Ljava/lang/String;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcn/yunzhisheng/understander/a;->cancel()V

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-super {p0, p1}, Lcn/yunzhisheng/understander/a;->setBandwidth(I)Z

    return-void
.end method

.method public setListener(Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/yunzhisheng/understander/a;->setListener(Lcn/yunzhisheng/understander/USCSpeechUnderstanderListener;)V

    return-void
.end method

.method public setNluScenario(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/yunzhisheng/understander/a;->setNluScenario(Ljava/lang/String;)V

    return-void
.end method

.method public setNluServer(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcn/yunzhisheng/understander/a;->setNluServer(Ljava/lang/String;I)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/yunzhisheng/understander/a;->setOption(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcn/yunzhisheng/understander/a;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcn/yunzhisheng/understander/a;->stop()V

    return-void
.end method

.method public textUnderstander(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/yunzhisheng/understander/a;->textUnderstander(Ljava/lang/String;)V

    return-void
.end method
