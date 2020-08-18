.class public Lcom/car/launchercommon/IrregularButton;
.super Landroid/widget/ImageView;
.source "IrregularButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.IrregularButton"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mIsTouchDownInArea:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    invoke-direct {p0, p1}, Lcom/car/launchercommon/IrregularButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    invoke-direct {p0, p1}, Lcom/car/launchercommon/IrregularButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    invoke-direct {p0, p1}, Lcom/car/launchercommon/IrregularButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/IrregularButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/launchercommon/IrregularButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/IrregularButton;->setMaskBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isInTouchArea(II)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/launchercommon/IrregularButton;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/IrregularButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/IrregularButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/IrregularButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v2, v7, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v6

    aget v4, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    if-lt p3, v4, :cond_0

    if-gt p3, v0, :cond_0

    if-lt p2, v1, :cond_0

    if-gt p2, v3, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/car/launchercommon/IrregularButton;->isInTouchArea(II)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    iput-boolean v0, p0, Lcom/car/launchercommon/IrregularButton;->mIsTouchDownInArea:Z

    goto :goto_1
.end method

.method public setMaskBitmap(I)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/IrregularButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/IrregularButton;->setMaskBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/IrregularButton;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
