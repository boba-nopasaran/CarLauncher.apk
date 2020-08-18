.class public Lcom/car/launchercommon/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.RotateImageView"


# instance fields
.field private compass:Landroid/graphics/drawable/Drawable;

.field private mDirection:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/RotateImageView;->mDirection:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/RotateImageView;->mDirection:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/launchercommon/RotateImageView;->mDirection:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/car/launchercommon/RotateImageView;->mDirection:F

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/car/launchercommon/RotateImageView;->compass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public updateDirection(F)V
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/RotateImageView;->mDirection:F

    invoke-virtual {p0}, Lcom/car/launchercommon/RotateImageView;->invalidate()V

    return-void
.end method
