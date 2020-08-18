.class public abstract Lcom/txznet/comm/ui/Tw/TG;
.super Landroid/app/Dialog;
.source "Proguard"


# instance fields
.field protected T:Landroid/view/View;

.field protected T2:Z

.field protected T3:Z

.field protected TN:Lcom/txznet/comm/TN/T3;

.field private Te:Z

.field private Tw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style_Full:I

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->T2:Z

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    iput-boolean p2, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->requestWindowFeature(I)Z

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->T([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method public varargs constructor <init>(Landroid/content/Context;Z[Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style_Full:I

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->T2:Z

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    iput-boolean p2, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->requestWindowFeature(I)Z

    invoke-virtual {p0, p3}, Lcom/txznet/comm/ui/Tw/TG;->T([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TG;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    sget v2, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TG;->T:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs constructor <init>(ZZ[Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/txznet/comm/ui/Tw/TG;-><init>(Landroid/content/Context;Z[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T2()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs abstract T([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public T(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsFullScreenDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/TG;->T3:Z

    return-void
.end method

.method protected T2()V
    .locals 0

    return-void
.end method

.method protected TN()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->T2()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_DISMISS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onWindowFocusChanged: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->TN()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->T2()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Te:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TG;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TG;->Tw:Z

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->TN()V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.txznet.txz.action.FLOAT_WIN_SHOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
