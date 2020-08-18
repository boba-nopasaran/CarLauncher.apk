.class public Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;
.super Landroid/view/View;
.source "SDKProgressBar.java"


# instance fields
.field private final COLOR_BLUE_DEEPBG:[I

.field private final COLOR_BLUE_LIGHTBG:[I

.field private barLength:I

.field private barX:I

.field private barY:I

.field private colors:[I

.field private mHsvFilter:Landroid/graphics/ColorFilter;

.field private mProgress:I

.field private paint:Landroid/graphics/Paint;

.field private rectHeight:I

.field private rectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0xd

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_LIGHTBG:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_DEEPBG:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->initView()V

    return-void

    :array_0
    .array-data 4
        -0x481c02
        -0x692a03
        -0x7c3003
        -0x893603
        -0x9a3e04
        -0x9e4205    # -3.0006273E38f
        -0xa34a06
        -0xa85207
        -0xad5908    # -2.8000483E38f
        -0xae600a
        -0xb16c0e
        -0xb3720e
        -0xb5760f
    .end array-data

    :array_1
    .array-data 4
        -0xedcc9e
        -0xeeba8b
        -0xefb081
        -0xf0a575
        -0xf19766
        -0xf18b5a
        -0xf27f4e
        -0xf37341
        -0xf46a38
        -0xf45e2c
        -0xf55320
        -0xf64713
        -0xf64713
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0xd

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_LIGHTBG:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_DEEPBG:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->initView()V

    return-void

    :array_0
    .array-data 4
        -0x481c02
        -0x692a03
        -0x7c3003
        -0x893603
        -0x9a3e04
        -0x9e4205    # -3.0006273E38f
        -0xa34a06
        -0xa85207
        -0xad5908    # -2.8000483E38f
        -0xae600a
        -0xb16c0e
        -0xb3720e
        -0xb5760f
    .end array-data

    :array_1
    .array-data 4
        -0xedcc9e
        -0xeeba8b
        -0xefb081
        -0xf0a575
        -0xf19766
        -0xf18b5a
        -0xf27f4e
        -0xf37341
        -0xf46a38
        -0xf45e2c
        -0xf55320
        -0xf64713
        -0xf64713
    .end array-data
.end method

.method private initView()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barX:I

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->getTop()I

    move-result v0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barY:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mHsvFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    if-gt v6, v0, :cond_2

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->colors:[I

    iget v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    sub-int/2addr v2, v6

    rsub-int/lit8 v2, v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barX:I

    iget v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectWidth:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barX:I

    iget v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectWidth:I

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    add-int/2addr v0, v6

    iget v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barY:I

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    add-int/lit8 v0, v0, -0xc

    if-gt v6, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->colors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->colors:[I

    iget v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    sub-int/2addr v2, v6

    rsub-int/lit8 v2, v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barLength:I

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barLength:I

    div-int/lit8 v0, v0, 0x50

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectHeight:I

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectHeight:I

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectWidth:I

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->barLength:I

    iget v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->rectHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHsvFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mHsvFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x50

    if-le p1, v0, :cond_1

    const/16 p1, 0x50

    :cond_1
    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->mProgress:I

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->invalidate()V

    return-void
.end method

.method public setTheme(I)V
    .locals 2

    invoke-static {p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialogTheme;->isDeepStyle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_DEEPBG:[I

    :goto_0
    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->colors:[I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKProgressBar;->COLOR_BLUE_LIGHTBG:[I

    goto :goto_0
.end method
