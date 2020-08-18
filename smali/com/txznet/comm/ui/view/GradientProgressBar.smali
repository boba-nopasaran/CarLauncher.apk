.class public Lcom/txznet/comm/ui/view/GradientProgressBar;
.super Landroid/view/View;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field private T:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/GradientProgressBar;->T:I

    invoke-direct {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/GradientProgressBar;->T:I

    invoke-direct {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->T()V

    return-void
.end method

.method private T()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v4, v3

    iget v5, p0, Lcom/txznet/comm/ui/view/GradientProgressBar;->T:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v2, v4

    const-string v4, "gradient_bg"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v4, 0x461c4000    # 10000.0f

    iget v5, p0, Lcom/txznet/comm/ui/view/GradientProgressBar;->T:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/txznet/comm/ui/view/GradientProgressBar;->T:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/GradientProgressBar;->postInvalidate()V

    goto :goto_0
.end method
