.class public Lcom/car/launchercommon/localapp/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    iput p2, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method
