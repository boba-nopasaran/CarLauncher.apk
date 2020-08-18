.class public Lcom/txznet/comm/ui/Tw/Tw;
.super Lcom/txznet/comm/ui/Tw/Ty;
.source "Proguard"


# instance fields
.field private TG:Lcom/txznet/comm/ui/T2$T;

.field private TR:Lcom/txznet/comm/ui/Tw$T;

.field private Te:Lcom/txznet/comm/ui/Te/T2;

.field private Tn:Lcom/txznet/comm/ui/T3$T;

.field private Tw:Z

.field private Ty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Ty;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$2;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$3;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Te()V

    return-void
.end method

.method public constructor <init>(ZLcom/txznet/comm/ui/Te/T2;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/txznet/comm/ui/Tw/Ty;-><init>(ZZLcom/txznet/comm/ui/Te/T2;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$2;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$3;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Te()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0

    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/TG;->dismiss()V

    return-void
.end method

.method static synthetic T2(Lcom/txznet/comm/ui/Tw/Tw;)Lcom/txznet/comm/ui/Te/T2;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Ty()V

    return-void
.end method

.method private Te()V
    .locals 4

    const/16 v3, 0x400

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10000040

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$1;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Tw/Tw;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private Tw()V
    .locals 0

    return-void
.end method

.method private Ty()V
    .locals 2

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T2()V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T2;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs T([Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lcom/txznet/comm/ui/Te/T2;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    :cond_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public T()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "[UI2.0] init RecordWin2True"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    return-void
.end method

.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 5

    const/4 v4, -0x1

    const-string v2, "[UI2.0] update winLayout"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/Tw;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public T(Lcom/txznet/comm/ui/Tw$T;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    return-void
.end method

.method public T(Ljava/lang/Float;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWinBgAlpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T3(Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
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

    goto :goto_0
.end method

.method protected T2()V
    .locals 1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T3()V

    return-void
.end method

.method public T3()V
    .locals 3

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T2;->T3()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Tw/Tw;->setContentView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T2;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    :cond_1
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->T3()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->TN()V

    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/T2/T/T3/T2;->T2()V

    :cond_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T3;->T()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected TN()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Tw;->T()V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T3:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->T:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "RecordWin2True dismiss"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->Te()V

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.ui.event.dismiss"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/txznet/comm/ui/Tw/Tw$4;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Tw$4;-><init>(Lcom/txznet/comm/ui/Tw/Tw;)V

    invoke-static {v0, v3}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->dismiss()V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Ty()V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw;->Te:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T2;->T()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T(I)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "RecordWin2True show"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tw:Z

    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->Tn:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T3;->registerObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TG:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/T2;->registerObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/Tw;->TR:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v1, v2}, Lcom/txznet/comm/ui/Tw;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    if-nez v1, :cond_1

    new-instance v1, Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txznet/comm/TN/T3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/Tw;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T3;->T()V

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/Tw;->Ty:Z

    :cond_2
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/Tw;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "dialog_bg"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->show()V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Tw;->Tw()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
