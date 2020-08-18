.class public Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;
.super Landroid/view/View;
.source "SDKAnimationView.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/NoProGuard;


# static fields
.field private static final BAIDU_LOGO:[I

.field private static final BAR_DROPOFF_STEP:I = 0x1

.field private static final BEGIN_LOC_X:I = 0x1b

.field private static final GROUP1_VOLUME_ARRAY1:[B

.field private static final GROUP1_VOLUME_ARRAY2:[B

.field private static final GROUP1_VOLUME_ARRAY3:[B

.field private static final GROUP1_VOLUME_ARRAY4:[B

.field private static final GROUP1_VOLUME_ARRAY5:[B

.field private static final GROUP1_VOLUME_ARRAY6:[B

.field private static final GROUP1_VOLUME_ARRAY7:[B

.field private static final GROUP2_VOLUME_ARRAY1:[B

.field private static final GROUP2_VOLUME_ARRAY2:[B

.field private static final GROUP2_VOLUME_ARRAY3:[B

.field private static final GROUP2_VOLUME_ARRAY4:[B

.field private static final GROUP2_VOLUME_ARRAY5:[B

.field private static final GROUP2_VOLUME_ARRAY6:[B

.field private static final GROUP2_VOLUME_ARRAY7:[B

.field private static final GROUP3_VOLUME_ARRAY1:[B

.field private static final GROUP3_VOLUME_ARRAY2:[B

.field private static final GROUP3_VOLUME_ARRAY3:[B

.field private static final GROUP3_VOLUME_ARRAY4:[B

.field private static final GROUP3_VOLUME_ARRAY5:[B

.field private static final GROUP3_VOLUME_ARRAY6:[B

.field private static final GROUP3_VOLUME_ARRAY7:[B

.field public static final INITIALIZING_ANIMATION_STATE:I = 0x4

.field private static INIT_VOLUME_ARRAY:[B = null

.field public static final NO_ANIMATION_STATE:I = 0x0

.field public static final PREPARING_ANIMATION_STATE:I = 0x1

.field private static final PREPARING_BAIDU_LOGO_TIME:I = 0x4b0

.field private static PREPARING_VOLUME_ARRAY:[B = null

.field public static final RECOGNIZING_ANIMATION_STATE:I = 0x3

.field private static final RECOGNIZING_SCANLINE_SHADOW_NUMBER:I = 0x5

.field private static final RECOGNIZING_WAVE_TRANSLATION_TIME:I = 0x14

.field public static final RECORDING_ANIMATION_STATE:I = 0x2

.field private static final RECT_IN_COLUMN:I = 0x15

.field private static final RECT_IN_ROW:I = 0x45

.field public static final SAMPE_RATE_VOLUME:I = 0x32

.field private static VOLUMES_GROUP1:[[B

.field private static VOLUMES_GROUP2:[[B

.field private static VOLUMES_GROUP3:[[B


# instance fields
.field private currentVolumeArray:[B

.field private mAnimationState:I

.field private mBaiduLogePaint:Landroid/graphics/Paint;

.field mBgColor:I

.field private mCurrentBar:I

.field private mCurrentDBLevelMeter:F

.field private mGriddingPaint:Landroid/graphics/Paint;

.field private mHsvFilter:Landroid/graphics/ColorFilter;

.field private mHsvFilterBitmap:Landroid/graphics/Bitmap;

.field private mHsvFilterCanvas:Landroid/graphics/Canvas;

.field private mHsvFilterPaint:Landroid/graphics/Paint;

.field private mInvalidateTask:Ljava/lang/Runnable;

.field private mLogoReversePaint:Landroid/graphics/Paint;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mPreparingBeginTime:J

.field private mRecognizingBeginTime:J

.field private mRecognizingLineShadowColor1:I

.field private mRecognizingLineShadowColor2:I

.field private mRecognizingRefreshCount:I

.field private mRecognizingWaveIndex:I

.field private mRecordingCurrentTime:J

.field private mRecordingInterpolationTime:J

.field private mRecordingUpdateTask:Ljava/lang/Runnable;

.field private mVolumeCeilingColor1:I

.field private mVolumeCeilingColor2:I

.field private mVolumeShadowColor1:I

.field private mVolumeShadowColor2:I

.field private mVolumnCeilingPaint:Landroid/graphics/Paint;

.field private mVolumnShadowPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private sampleSideLength:D

.field private targetVolumeArray:[B

.field private volumes:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x45

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->BAIDU_LOGO:[I

    new-array v0, v1, [B

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->INIT_VOLUME_ARRAY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->PREPARING_VOLUME_ARRAY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY1:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY2:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY3:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY4:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY5:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY6:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY7:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY1:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY2:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY3:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY4:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY5:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY6:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY7:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY1:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY2:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY3:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY4:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY5:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY6:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY7:[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY1:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY2:[B

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY3:[B

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY4:[B

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY5:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY6:[B

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP1_VOLUME_ARRAY7:[B

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP1:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY1:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY2:[B

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY3:[B

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY4:[B

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY5:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY6:[B

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP2_VOLUME_ARRAY7:[B

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP2:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY1:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY2:[B

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY3:[B

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY4:[B

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY5:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY6:[B

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->GROUP3_VOLUME_ARRAY7:[B

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP3:[[B

    return-void

    :array_0
    .array-data 4
        0x3800
        0x7c00
        0x7cf8
        0x39fc
        0x3839c
        0x7c76c
        0x7cf6c
        0x39c08
        0x1ff8
        0x39f18
        0x7cfec
        0x7c7ec
        0x3830c
        0x39fc
        0x7cf8
        0x7c00
        0x3800
    .end array-data

    :array_1
    .array-data 1
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x7t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
    .end array-data

    nop

    :array_7
    .array-data 1
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xbt
        0xbt
    .end array-data

    nop

    :array_8
    .array-data 1
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xet
        0xet
        0xdt
        0xdt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
    .end array-data

    nop

    :array_e
    .array-data 1
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
    .end array-data

    nop

    :array_f
    .array-data 1
        0xft
        0xft
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
    .end array-data

    nop

    :array_10
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xbt
        0xbt
        0xat
        0xat
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
    .end array-data

    nop

    :array_15
    .array-data 1
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
    .end array-data

    nop

    :array_16
    .array-data 1
        0xet
        0xet
        0xet
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xft
        0xft
        0x10t
        0x10t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x10t
        0x10t
        0xft
        0xft
        0xet
        0xet
        0xet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v1, 0x45

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBgColor:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    new-instance v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;

    invoke-direct {v0, p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$1;-><init>(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;

    invoke-direct {v0, p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView$2;-><init>(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mGriddingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mGriddingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP1:[[B

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    const v0, 0x1000001

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setThemeStyle(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)F
    .locals 1

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getCurrentDBLevelMeter()F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mCurrentBar:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mCurrentBar:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setVolumeLevel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private drawBaiduLogo(Landroid/graphics/Canvas;I)V
    .locals 12

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v6, 0x1b

    :goto_0
    sget-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->BAIDU_LOGO:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1b

    if-ge v6, v0, :cond_4

    const/4 v8, 0x0

    :goto_1
    const/16 v0, 0x15

    if-ge v8, v0, :cond_3

    sget-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->BAIDU_LOGO:[I

    add-int/lit8 v1, v6, -0x1b

    aget v0, v0, v1

    shr-int/2addr v0, v8

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v9, 0x0

    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingCurrentTime:J

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingInterpolationTime:J

    sub-long/2addr v0, v2

    long-to-int v7, v0

    const/16 v0, 0x32

    if-le v7, v0, :cond_0

    const/16 v7, 0x32

    :cond_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    add-int/lit8 v1, v6, -0x1

    aget-byte v0, v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    add-int/lit8 v3, v6, -0x1

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    add-int/lit8 v4, v6, -0x1

    aget-byte v3, v3, v4

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v4, v7

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v9, v0

    if-ge v8, v9, :cond_2

    add-int/lit8 v0, v9, -0x1

    if-ge v8, v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v2, v6, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v1, v0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v8, 0x15

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v2, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v8, 0x15

    int-to-double v10, v0

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v2, v6, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v1, v0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v8, 0x15

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v2, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v8, 0x15

    int-to-double v10, v0

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private drawGridding(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v0, 0x15

    if-gt v8, v0, :cond_0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v4, v8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v6, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mGriddingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/16 v0, 0x45

    if-gt v9, v0, :cond_1

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v4, v9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v6, v9

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mGriddingPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mMask:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawRecognizingBaiduLogo(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v1, 0xff

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v6, 0x1b

    :goto_0
    sget-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->BAIDU_LOGO:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1b

    if-ge v6, v0, :cond_3

    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x15

    if-ge v7, v0, :cond_2

    sget-object v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->BAIDU_LOGO:[I

    add-int/lit8 v1, v6, -0x1b

    aget v0, v0, v1

    shr-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v8, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    if-ge v7, v8, :cond_1

    add-int/lit8 v0, v8, -0x1

    if-ge v7, v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v2, v6, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v1, v0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v7, 0x15

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v2, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v7, 0x15

    int-to-double v10, v0

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v2, v6, -0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v1, v0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v7, 0x15

    add-int/lit8 v0, v0, -0x1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v2, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v3, v0

    iget-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v0, v7, 0x15

    int-to-double v10, v0

    mul-double/2addr v4, v10

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawRecognizingLine(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingRefreshCount:I

    if-nez v3, :cond_0

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor1:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor2:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    add-int/lit8 v6, v6, -0x1

    rsub-int/lit8 v6, v6, 0x15

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    mul-double v8, v8, v16

    double-to-int v3, v8

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    const/4 v14, 0x0

    :goto_1
    const/16 v3, 0x45

    if-ge v14, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v16, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v16, 0x4041400000000000L    # 34.5

    div-double v8, v8, v16

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v10, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v16, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v16, 0x4041400000000000L    # 34.5

    div-double v8, v8, v16

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v15, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v16, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v16, 0x4041400000000000L    # 34.5

    div-double v8, v8, v16

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v13, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v16, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v16, 0x4041400000000000L    # 34.5

    div-double v8, v8, v16

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v11, v4

    shl-int/lit8 v3, v10, 0x18

    and-int/lit16 v4, v15, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v13, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v11, 0xff

    or-int v12, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    rsub-int/lit8 v3, v3, 0x15

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v3, v14, 0x1

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    rsub-int/lit8 v3, v3, 0x15

    add-int/lit8 v3, v3, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    double-to-int v3, v8

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_0
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor2:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor1:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    add-int/lit8 v6, v6, 0x5

    rsub-int/lit8 v6, v6, 0x15

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    int-to-float v6, v3

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    double-to-int v3, v8

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private drawVoiceVolumn(Landroid/graphics/Canvas;I)V
    .locals 20

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeShadowColor1:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeShadowColor2:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v14, 0x0

    :goto_0
    const/16 v3, 0x45

    if-ge v14, v3, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingCurrentTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingInterpolationTime:J

    sub-long/2addr v4, v6

    long-to-int v15, v4

    const/16 v3, 0x32

    if-le v15, v3, :cond_0

    const/16 v15, 0x32

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    aget-byte v3, v3, v14

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    aget-byte v3, v3, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    aget-byte v6, v6, v14

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v15

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v6, v17, 0x15

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    double-to-int v3, v6

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v7, v17, 0x15

    int-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v8, v8, v18

    double-to-int v7, v8

    sub-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v18, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v18, 0x4041400000000000L    # 34.5

    div-double v8, v8, v18

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v10, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v18, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v18, 0x4041400000000000L    # 34.5

    div-double v8, v8, v18

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v18, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v18, 0x4041400000000000L    # 34.5

    div-double v8, v8, v18

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v13, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v3, v6

    int-to-double v6, v3

    int-to-double v8, v14

    const-wide v18, 0x4041400000000000L    # 34.5

    sub-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v18, 0x4041400000000000L    # 34.5

    div-double v8, v8, v18

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v11, v4

    shl-int/lit8 v3, v10, 0x18

    move/from16 v0, v16

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v13, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v11, 0xff

    or-int v12, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    move/from16 v0, p2

    int-to-double v4, v0

    int-to-double v6, v10

    mul-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v3, v17, 0x15

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    add-int/lit8 v3, v14, 0x1

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    rsub-int/lit8 v3, v17, 0x15

    add-int/lit8 v3, v3, 0x1

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v8, v8, v18

    double-to-int v3, v8

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumnCeilingPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private getCurrentDBLevelMeter()F
    .locals 1

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mCurrentDBLevelMeter:F

    return v0
.end method

.method private setVolumeLevel(I)V
    .locals 6

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingInterpolationTime:J

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP1:[[B

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    :goto_0
    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    :cond_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP1:[[B

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP2:[[B

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->VOLUMES_GROUP3:[[B

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->volumes:[[B

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->realOnDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    int-to-double v0, v0

    const-wide v2, 0x4051400000000000L    # 69.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    iget v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mWidth:I

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->sampleSideLength:D

    const-wide/high16 v4, 0x4035000000000000L    # 21.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method protected realOnDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBgColor:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawGridding(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawMask(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    sget-object v4, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->INIT_VOLUME_ARRAY:[B

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    sget-object v4, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->INIT_VOLUME_ARRAY:[B

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    sub-long v2, v4, v6

    const/4 v0, 0x0

    const-wide/16 v4, 0x4b0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4b0

    rem-long/2addr v4, v6

    long-to-int v1, v4

    int-to-double v4, v1

    const-wide v6, 0x4092c00000000000L    # 1200.0

    div-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawBaiduLogo(Landroid/graphics/Canvas;I)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x4b0

    rem-long v4, v2, v4

    long-to-int v1, v4

    const/16 v4, 0x258

    if-ge v1, v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v1

    const-wide v8, 0x4082c00000000000L    # 600.0

    div-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rsub-int v6, v1, 0x4b0

    int-to-double v6, v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    div-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->PREPARING_VOLUME_ARRAY:[B

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->currentVolumeArray:[B

    sget-object v4, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->PREPARING_VOLUME_ARRAY:[B

    iput-object v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->targetVolumeArray:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    sub-long v2, v4, v6

    const/4 v0, 0x0

    const-wide/16 v4, 0x4b0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4b0

    rem-long/2addr v4, v6

    long-to-int v1, v4

    int-to-double v4, v1

    const-wide v6, 0x4092c00000000000L    # 1200.0

    div-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawVoiceVolumn(Landroid/graphics/Canvas;I)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawBaiduLogo(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    :cond_2
    const-wide/16 v4, 0x4b0

    rem-long v4, v2, v4

    long-to-int v1, v4

    const/16 v4, 0x258

    if-ge v1, v4, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v1

    const-wide v8, 0x4082c00000000000L    # 600.0

    div-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_2

    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rsub-int v6, v1, 0x4b0

    int-to-double v6, v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    div-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_2

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingCurrentTime:J

    const/16 v4, 0xff

    invoke-direct {p0, p1, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawVoiceVolumn(Landroid/graphics/Canvas;I)V

    const/16 v4, 0xff

    invoke-direct {p0, p1, v4}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawBaiduLogo(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingBeginTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x14

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingBeginTime:J

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingRefreshCount:I

    if-nez v4, :cond_5

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    iput v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingRefreshCount:I

    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawRecognizingLine(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->drawRecognizingBaiduLogo(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    const/4 v5, -0x5

    if-gt v4, v5, :cond_4

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingRefreshCount:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public resetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    return-void
.end method

.method public setCurrentDBLevelMeter(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mCurrentDBLevelMeter:F

    return-void
.end method

.method public setHsvFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mHsvFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setThemeStyle(I)V
    .locals 6

    const v5, 0x53d8a

    const/4 v3, -0x1

    const v2, -0xe2e2e3

    const v4, -0xfac276

    invoke-static {p1}, Lcom/baidu/voicerecognition/android/ui/BaiduASRDialogTheme;->isDeepStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBgColor:I

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mGriddingPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mBaiduLogePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    const v1, -0xd0d0d1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mLogoReversePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const v1, -0xfbc476

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v0, :cond_5

    const v1, -0xba7d13

    :goto_4
    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor1:I

    if-eqz v0, :cond_6

    const v1, 0x4582ed

    :goto_5
    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeCeilingColor2:I

    if-eqz v0, :cond_7

    move v1, v4

    :goto_6
    iput v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeShadowColor1:I

    if-eqz v0, :cond_0

    move v3, v5

    :cond_0
    iput v3, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mVolumeShadowColor2:I

    if-eqz v0, :cond_8

    :goto_7
    iput v4, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor1:I

    if-eqz v0, :cond_9

    :goto_8
    iput v5, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingLineShadowColor2:I

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "bdspeech_mask_deep"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_9
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mMask:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    const v1, -0x9090a

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const v1, -0x131314

    goto :goto_2

    :cond_4
    const v1, -0x250f01

    goto :goto_3

    :cond_5
    const v1, -0x7a4f07

    goto :goto_4

    :cond_6
    const v1, -0x65240e

    goto :goto_5

    :cond_7
    const v1, -0x311401

    goto :goto_6

    :cond_8
    const v4, -0x321501

    goto :goto_7

    :cond_9
    const v5, 0xcdeaff

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "bdspeech_mask_light"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_9
.end method

.method public startInitializingAnimation()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startPreparingAnimation()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mPreparingBeginTime:J

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startRecognizingAnimation()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingBeginTime:J

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingWaveIndex:I

    iput v2, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecognizingRefreshCount:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startRecordingAnimation()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mAnimationState:I

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mInvalidateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->mRecordingUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startVoiceAnimation(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->resetAnimation()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->resetAnimation()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startPreparingAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startRecordingAnimation()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startRecognizingAnimation()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/SDKAnimationView;->startInitializingAnimation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
