.class public Lcom/car/launchercommon/CompassView;
.super Landroid/widget/LinearLayout;
.source "CompassView.java"


# static fields
.field private static final BackgroundFile:Ljava/lang/String; = "/system/custom/launcher/compass/compass_bg.png"

.field private static final CompassFile:Ljava/lang/String; = "/system/custom/launcher/compass/compass.png"

.field private static final DirectionFile:Ljava/lang/String; = "/system/custom/launcher/compass/direction.png"

.field private static final TAG:Ljava/lang/String; = "LC.CompassView"


# instance fields
.field private mChinease:Z

.field private mCompassViewUpdater:Ljava/lang/Runnable;

.field private mDirection:F

.field private mDirectionTV:Landroid/widget/TextView;

.field private mGpsUpdater:Ljava/lang/Runnable;

.field protected final mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mLastGpsInfo:Ljava/lang/String;

.field private mPointer:Lcom/car/launchercommon/RotateImageView;

.field private mRootView:Landroid/view/View;

.field private mSpeedTV:Landroid/widget/TextView;

.field private mStopDrawing:Z

.field private mTargetDirection:F

#by boba 19.06.2020
#weather
.field private mAltTV:Landroid/widget/TextView;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launchercommon/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/launchercommon/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/car/launchercommon/CompassView$1;

    invoke-direct {v4, p0}, Lcom/car/launchercommon/CompassView$1;-><init>(Lcom/car/launchercommon/CompassView;)V

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mCompassViewUpdater:Ljava/lang/Runnable;

    const-string v4, ""

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mLastGpsInfo:Ljava/lang/String;

    new-instance v4, Lcom/car/launchercommon/CompassView$2;

    invoke-direct {v4, p0}, Lcom/car/launchercommon/CompassView$2;-><init>(Lcom/car/launchercommon/CompassView;)V

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mGpsUpdater:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/car/launchercommon/R$layout;->compass_view:I

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    sget v5, Lcom/car/launchercommon/R$id;->compass_pointer:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/car/launchercommon/RotateImageView;

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mPointer:Lcom/car/launchercommon/RotateImageView;

    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    sget v5, Lcom/car/launchercommon/R$id;->speed:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mSpeedTV:Landroid/widget/TextView;

#by boba 19.06.2020
#weather
iget-object v5, p0, Lcom/car/launchercommon/CompassView;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v5
const-string v2, "fonts/num.ttf"
invoke-static {v5, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
move-result-object v3
iget-object v5, p0, Lcom/car/launchercommon/CompassView;->mSpeedTV:Landroid/widget/TextView;
invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;
sget v5, Lcom/car/launchercommon/R$id;->alt:I
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mAltTV:Landroid/widget/TextView;

iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;
sget v5, Lcom/car/launchercommon/R$id;->weather_imageview:I
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
new-instance v2, Lcom/car/launchercommon/CompassView$weatherclick;
invoke-direct {v2, p0}, Lcom/car/launchercommon/CompassView$weatherclick;-><init>(Lcom/car/launchercommon/CompassView;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

const/16 v2, 3000
invoke-virtual {p0, v2}, Lcom/car/launchercommon/CompassView;->getWeather(I)V

#    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

#    sget v5, Lcom/car/launchercommon/R$id;->direction:I

#    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

#    move-result-object v4

#    check-cast v4, Landroid/widget/TextView;

#    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mDirectionTV:Landroid/widget/TextView;

#    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

#    sget v5, Lcom/car/launchercommon/R$id;->direction_imageview:I

#    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

#    move-result-object v1

#    check-cast v1, Landroid/widget/ImageView;

#    const-string v4, "/system/custom/launcher/compass/direction.png"

#    invoke-direct {p0, v4}, Lcom/car/launchercommon/CompassView;->isFileExist(Ljava/lang/String;)Z

#    move-result v4

#    if-eqz v4, :cond_0

#    const-string v4, "/system/custom/launcher/compass/direction.png"

#    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

#    move-result-object v3

#    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

#    const-string v4, "LC.CompassView"

#    const-string v5, "file exits : /system/custom/launcher/compass/direction.png"

#    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "/system/custom/launcher/compass/compass.png"

    invoke-direct {p0, v4}, Lcom/car/launchercommon/CompassView;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "/system/custom/launcher/compass/compass.png"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mPointer:Lcom/car/launchercommon/RotateImageView;

    invoke-virtual {v4, v0}, Lcom/car/launchercommon/RotateImageView;->setImageURI(Landroid/net/Uri;)V

    const-string v4, "LC.CompassView"

    const-string v5, "file exits : /system/custom/launcher/compass/compass.png"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v4, "/system/custom/launcher/compass/compass_bg.png"

    invoke-direct {p0, v4}, Lcom/car/launchercommon/CompassView;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/system/custom/launcher/compass/compass_bg.png"

    invoke-direct {p0, v4}, Lcom/car/launchercommon/CompassView;->bitmap2Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "LC.CompassView"

    const-string v5, "file exits : /system/custom/launcher/compass/compass_bg.png"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput v6, p0, Lcom/car/launchercommon/CompassView;->mDirection:F

    iput v6, p0, Lcom/car/launchercommon/CompassView;->mTargetDirection:F

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/car/launchercommon/CompassView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iput-boolean v7, p0, Lcom/car/launchercommon/CompassView;->mStopDrawing:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/car/launchercommon/CompassView;->mChinease:Z

    return-void

    :cond_2
    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    sget v5, Lcom/car/launchercommon/R$drawable;->compass_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/launchercommon/CompassView;->mRootView:Landroid/view/View;

    sget v5, Lcom/car/launchercommon/R$drawable;->compass_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/launchercommon/CompassView;)Lcom/car/launchercommon/RotateImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mPointer:Lcom/car/launchercommon/RotateImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launchercommon/CompassView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/CompassView;->mStopDrawing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/car/launchercommon/CompassView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/CompassView;->mStopDrawing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/car/launchercommon/CompassView;)F
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/CompassView;->mDirection:F

    return v0
.end method

.method static synthetic access$202(Lcom/car/launchercommon/CompassView;F)F
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/CompassView;->mDirection:F

    return p1
.end method

.method static synthetic access$216(Lcom/car/launchercommon/CompassView;F)F
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/CompassView;->mDirection:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/car/launchercommon/CompassView;->mDirection:F

    return v0
.end method

.method static synthetic access$300(Lcom/car/launchercommon/CompassView;)F
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/CompassView;->mTargetDirection:F

    return v0
.end method

.method static synthetic access$302(Lcom/car/launchercommon/CompassView;F)F
    .locals 0

    iput p1, p0, Lcom/car/launchercommon/CompassView;->mTargetDirection:F

    return p1
.end method

.method static synthetic access$400(Lcom/car/launchercommon/CompassView;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mCompassViewUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/launchercommon/CompassView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mLastGpsInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/car/launchercommon/CompassView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/CompassView;->mLastGpsInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/car/launchercommon/CompassView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mGpsUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/launchercommon/CompassView;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/CompassView;->updateDirection()V

    return-void
.end method

.method static synthetic access$900(Lcom/car/launchercommon/CompassView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mSpeedTV:Landroid/widget/TextView;

    return-object v0
.end method

#by boba 19.06.2020
#weather
.method static synthetic access$alt(Lcom/car/launchercommon/CompassView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mAltTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private bitmap2Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v1
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateDirection()V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, ""

    const/high16 v6, 0x43b40000    # 360.0f

    iget v7, p0, Lcom/car/launchercommon/CompassView;->mTargetDirection:F

    sub-float v1, v6, v7

    const/high16 v6, 0x41b40000    # 22.5f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_6

    const v6, 0x431d8000    # 157.5f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/car/launchercommon/CompassView;->mContext:Landroid/content/Context;

    sget v7, Lcom/car/launchercommon/R$string;->east:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    const/high16 v6, 0x42e10000    # 112.5f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_7

    const v6, 0x43778000    # 247.5f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/car/launchercommon/CompassView;->mContext:Landroid/content/Context;

    sget v7, Lcom/car/launchercommon/R$string;->south:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/car/launchercommon/CompassView;->mChinease:Z

    if-eqz v6, :cond_9

    if-eqz v2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/car/launchercommon/CompassView;->mDirectionTV:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    const v6, 0x434a8000    # 202.5f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    const v6, 0x43a8c000    # 337.5f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/CompassView;->mContext:Landroid/content/Context;

    sget v7, Lcom/car/launchercommon/R$string;->west:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_7
    float-to-double v6, v1

    const-wide v8, 0x4050e00000000000L    # 67.5

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_8

    const v6, 0x43924000    # 292.5f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    :cond_8
    iget-object v6, p0, Lcom/car/launchercommon/CompassView;->mContext:Landroid/content/Context;

    sget v7, Lcom/car/launchercommon/R$string;->north:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    if-eqz v4, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz v3, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    if-eqz v2, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/car/launchercommon/CompassView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/CompassView;->mStopDrawing:Z

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/launchercommon/CompassView;->mGpsUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/launchercommon/CompassView;->mCompassViewUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/CompassView;->mStopDrawing:Z

    return-void
.end method

#by boba 19.06.2020
#weather
.method getWeather(I)V
    .locals 4

    new-instance v0, Lcom/car/launchercommon/CompassView$weather;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/CompassView$weather;-><init>(Lcom/car/launchercommon/CompassView;)V

    iget-object v1, p0, Lcom/car/launchercommon/CompassView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method