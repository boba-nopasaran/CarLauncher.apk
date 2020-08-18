.class final Lcom/car/launchercommon/localapp/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarL.Launcher.Utilities"

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    sput v0, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    sput v0, Lcom/car/launchercommon/localapp/Utilities;->sIconHeight:I

    sput v0, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureWidth:I

    sput v0, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    sget-object v0, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/launchercommon/localapp/Utilities;->sColors:[I

    const/4 v0, 0x0

    sput v0, Lcom/car/launchercommon/localapp/Utilities;->sColorIndex:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    sget v4, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureWidth:I

    sget v3, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureHeight:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v2, v4, :cond_1

    if-le v1, v3, :cond_1

    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {p0, v5, v6, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v1, v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v5, p1}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 21

    sget-object v18, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    :try_start_0
    sget v17, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/car/launchercommon/localapp/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    sget v16, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    sget v7, Lcom/car/launchercommon/localapp/Utilities;->sIconHeight:I

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v9, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-lez v12, :cond_4

    if-lez v11, :cond_4

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v0, v16

    if-gt v12, v0, :cond_2

    if-le v11, v7, :cond_7

    :cond_2
    int-to-float v0, v12

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v17, v19

    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v19, v19, v20

    cmpl-float v17, v17, v19

    if-lez v17, :cond_6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v10, v17, v19

    :cond_3
    :goto_1
    int-to-float v0, v12

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    int-to-float v0, v11

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v7, v0

    :cond_4
    move/from16 v14, v16

    move v13, v7

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v17, v14, v16

    div-int/lit8 v8, v17, 0x2

    sub-int v17, v13, v7

    div-int/lit8 v15, v17, 0x2

    const/4 v6, 0x0

    sget-object v17, Lcom/car/launchercommon/localapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int v17, v8, v16

    add-int v19, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v17, Lcom/car/launchercommon/localapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    monitor-exit v18

    return-object v3

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    :cond_6
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v10, v17, v19

    goto/16 :goto_1

    :cond_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    if-ge v11, v7, :cond_3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v17, v17, v19

    int-to-float v0, v7

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    cmpg-float v17, v17, v19

    if-gez v17, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v10, v17, v19

    goto/16 :goto_1

    :cond_8
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v10, v17, v19

    goto/16 :goto_1
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v3, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    :try_start_0
    sget v2, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lcom/car/launchercommon/localapp/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v0, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/car/launchercommon/localapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8

    sget-object v5, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    :try_start_0
    sget v4, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x2

    new-array v3, v4, [I

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit v5

    return-void

    :cond_1
    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static generateRandomId()I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    sget v4, Lcom/car/launchercommon/R$dimen;->app_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/car/launchercommon/localapp/Utilities;->sIconHeight:I

    sput v4, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    sget v4, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    sput v4, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/car/launchercommon/localapp/Utilities;->sIconTextureWidth:I

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v4, Lcom/car/launchercommon/localapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v2, Lcom/car/launchercommon/localapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/car/launchercommon/localapp/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v3, Lcom/car/launchercommon/localapp/Utilities;->sIconWidth:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v3, Lcom/car/launchercommon/localapp/Utilities;->sIconHeight:I

    if-ne v1, v3, :cond_1

    monitor-exit v2

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static roundToPow2(I)I
    .locals 3

    move v1, p0

    shr-int/lit8 p0, p0, 0x1

    const/high16 v0, 0x8000000

    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    or-int/2addr p0, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    if-eq p0, v1, :cond_2

    shl-int/lit8 p0, p0, 0x1

    :cond_2
    return p0
.end method
