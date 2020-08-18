.class public Lcom/txznet/comm/ui/view/RoundImageView;
.super Landroid/widget/ImageView;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field private T:I

.field private T2:Landroid/graphics/Paint;

.field private T3:I

.field private TN:I

.field private Te:Landroid/graphics/Matrix;

.field private Tn:Landroid/graphics/RectF;

.field private Tw:Landroid/graphics/BitmapShader;

.field private Ty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Te:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T2:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    iput v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    return-void
.end method

.method private T(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private T()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/txznet/comm/ui/view/RoundImageView;->T(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Tw:Landroid/graphics/BitmapShader;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v5, v0

    div-float v3, v4, v5

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Te:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Tw:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Te:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T2:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Tw:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public dp2px(I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->T()V

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Tn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    int-to-float v1, v1

    iget v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->TN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->TN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->TN:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "onMeasure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->TN:I

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    iget v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    invoke-virtual {p0, v0, v1}, Lcom/txznet/comm/ui/view/RoundImageView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    iget v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Ty:I

    invoke-virtual {p0, v0, v1}, Lcom/txznet/comm/ui/view/RoundImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "state_instance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v1, "state_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    const-string v1, "state_border_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "state_instance"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "state_type"

    iget v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "state_border_radius"

    iget v2, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->Tn:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/view/RoundImageView;->dp2px(I)I

    move-result v0

    iget v1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T3:I

    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/RoundImageView;->T:I

    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RoundImageView;->requestLayout()V

    :cond_1
    return-void
.end method
