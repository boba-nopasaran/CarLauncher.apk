.class public Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;
.super Ljava/lang/Object;
.source "ColorFilterGenerator.java"


# static fields
.field private static DELTA_INDEX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->DELTA_INDEX:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3d4ccccd    # 0.05f
        0x3d75c28f    # 0.06f
        0x3d8f5c29    # 0.07f
        0x3da3d70a    # 0.08f
        0x3dcccccd    # 0.1f
        0x3de147ae    # 0.11f
        0x3df5c28f    # 0.12f
        0x3e0f5c29    # 0.14f
        0x3e19999a    # 0.15f
        0x3e23d70a    # 0.16f
        0x3e2e147b    # 0.17f
        0x3e3851ec    # 0.18f
        0x3e4ccccd    # 0.2f
        0x3e570a3d    # 0.21f
        0x3e6147ae    # 0.22f
        0x3e75c28f    # 0.24f
        0x3e800000    # 0.25f
        0x3e8a3d71    # 0.27f
        0x3e8f5c29    # 0.28f
        0x3e99999a    # 0.3f
        0x3ea3d70a    # 0.32f
        0x3eae147b    # 0.34f
        0x3eb851ec    # 0.36f
        0x3ec28f5c    # 0.38f
        0x3ecccccd    # 0.4f
        0x3ed70a3d    # 0.42f
        0x3ee147ae    # 0.44f
        0x3eeb851f    # 0.46f
        0x3ef5c28f    # 0.48f
        0x3f000000    # 0.5f
        0x3f07ae14    # 0.53f
        0x3f0f5c29    # 0.56f
        0x3f170a3d    # 0.59f
        0x3f1eb852    # 0.62f
        0x3f266666    # 0.65f
        0x3f2e147b    # 0.68f
        0x3f35c28f    # 0.71f
        0x3f3d70a4    # 0.74f
        0x3f451eb8    # 0.77f
        0x3f4ccccd    # 0.8f
        0x3f547ae1    # 0.83f
        0x3f5c28f6    # 0.86f
        0x3f63d70a    # 0.89f
        0x3f6b851f    # 0.92f
        0x3f733333    # 0.95f
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
        0x3f87ae14    # 1.06f
        0x3f8f5c29    # 1.12f
        0x3f970a3d    # 1.18f
        0x3f9eb852    # 1.24f
        0x3fa66666    # 1.3f
        0x3fae147b    # 1.36f
        0x3fb5c28f    # 1.42f
        0x3fbd70a4    # 1.48f
        0x3fc51eb8    # 1.54f
        0x3fcccccd    # 1.6f
        0x3fd47ae1    # 1.66f
        0x3fdc28f6    # 1.72f
        0x3fe3d70a    # 1.78f
        0x3feb851f    # 1.84f
        0x3ff33333    # 1.9f
        0x3ffae148    # 1.96f
        0x40000000    # 2.0f
        0x4007ae14    # 2.12f
        0x40100000    # 2.25f
        0x4017ae14    # 2.37f
        0x40200000    # 2.5f
        0x4027ae14    # 2.62f
        0x40300000    # 2.75f
        0x4037ae14    # 2.87f
        0x40400000    # 3.0f
        0x404ccccd    # 3.2f
        0x4059999a    # 3.4f
        0x40666666    # 3.6f
        0x40733333    # 3.8f
        0x40800000    # 4.0f
        0x4089999a    # 4.3f
        0x40966666    # 4.7f
        0x409ccccd    # 4.9f
        0x40a00000    # 5.0f
        0x40b00000    # 5.5f
        0x40c00000    # 6.0f
        0x40d00000    # 6.5f
        0x40d9999a    # 6.8f
        0x40e00000    # 7.0f
        0x40e9999a    # 7.3f
        0x40f00000    # 7.5f
        0x40f9999a    # 7.8f
        0x41000000    # 8.0f
        0x41066666    # 8.4f
        0x410b3333    # 8.7f
        0x41100000    # 9.0f
        0x41166666    # 9.4f
        0x4119999a    # 9.6f
        0x411ccccd    # 9.8f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightness(Landroid/graphics/ColorMatrix;F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v1}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->cleanValue(FF)F

    move-result p1

    cmpl-float v1, p1, v2

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x19

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p1, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p1, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_0
.end method

.method public static adjustColor(Landroid/graphics/ColorMatrix;FFFF)V
    .locals 0

    invoke-static {p0, p4}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->adjustHue(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p0, p2}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->adjustContrast(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p0, p1}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->adjustBrightness(Landroid/graphics/ColorMatrix;F)V

    invoke-static {p0, p3}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->adjustSaturation(Landroid/graphics/ColorMatrix;F)V

    return-void
.end method

.method public static adjustContrast(Landroid/graphics/ColorMatrix;F)V
    .locals 9

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x42fe0000    # 127.0f

    const/4 v5, 0x0

    invoke-static {p1, v3}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->cleanValue(FF)F

    move-result p1

    cmpl-float v2, p1, v5

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, p1, v5

    if-gez v2, :cond_2

    div-float v2, p1, v3

    mul-float/2addr v2, v6

    add-float v1, v6, v2

    :goto_1
    const/16 v2, 0x19

    new-array v0, v2, [F

    const/4 v2, 0x0

    div-float v3, v1, v6

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v5, v0, v2

    const/4 v2, 0x2

    aput v5, v0, v2

    const/4 v2, 0x3

    aput v5, v0, v2

    const/4 v2, 0x4

    sub-float v3, v6, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v5, v0, v2

    const/4 v2, 0x6

    div-float v3, v1, v6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v5, v0, v2

    const/16 v2, 0x8

    aput v5, v0, v2

    const/16 v2, 0x9

    sub-float v3, v6, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/16 v2, 0xa

    aput v5, v0, v2

    const/16 v2, 0xb

    aput v5, v0, v2

    const/16 v2, 0xc

    div-float v3, v1, v6

    aput v3, v0, v2

    const/16 v2, 0xd

    aput v5, v0, v2

    const/16 v2, 0xe

    sub-float v3, v6, v1

    mul-float/2addr v3, v8

    aput v3, v0, v2

    const/16 v2, 0xf

    aput v5, v0, v2

    const/16 v2, 0x10

    aput v5, v0, v2

    const/16 v2, 0x11

    aput v5, v0, v2

    const/16 v2, 0x12

    aput v7, v0, v2

    const/16 v2, 0x13

    aput v5, v0, v2

    const/16 v2, 0x14

    aput v5, v0, v2

    const/16 v2, 0x15

    aput v5, v0, v2

    const/16 v2, 0x16

    aput v5, v0, v2

    const/16 v2, 0x17

    aput v5, v0, v2

    const/16 v2, 0x18

    aput v7, v0, v2

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/16 :goto_0

    :cond_2
    rem-float v1, p1, v7

    cmpl-float v2, v1, v5

    if-nez v2, :cond_3

    sget-object v2, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->DELTA_INDEX:[F

    float-to-int v3, p1

    aget v1, v2, v3

    :goto_2
    mul-float v2, v1, v6

    add-float v1, v2, v6

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->DELTA_INDEX:[F

    float-to-int v3, p1

    shl-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sub-float v3, v7, v1

    mul-float/2addr v2, v3

    sget-object v3, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->DELTA_INDEX:[F

    float-to-int v4, p1

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v1

    add-float v1, v2, v3

    goto :goto_2
.end method

.method public static adjustHue(Landroid/graphics/ColorMatrix;F)V
    .locals 11

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {p1, v7}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->cleanValue(FF)F

    move-result v6

    div-float/2addr v6, v7

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float p1, v6, v7

    cmpl-float v6, p1, v9

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    const v3, 0x3e5a1cac    # 0.213f

    const v2, 0x3f370a3d    # 0.715f

    const v1, 0x3d9374bc    # 0.072f

    const/16 v6, 0x19

    new-array v4, v6, [F

    const/4 v6, 0x0

    sub-float v7, v10, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    neg-float v8, v3

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x1

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    neg-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    sub-float v8, v10, v1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x3

    aput v9, v4, v6

    const/4 v6, 0x4

    aput v9, v4, v6

    const/4 v6, 0x5

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    const v8, 0x3e126e98    # 0.143f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x6

    sub-float v7, v10, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    const v8, 0x3e0f5c29    # 0.14f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x7

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    const v8, -0x416f1aa0    # -0.283f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v9, v4, v6

    const/16 v6, 0x9

    aput v9, v4, v6

    const/16 v6, 0xa

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    sub-float v8, v10, v3

    neg-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xb

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xc

    sub-float v7, v10, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    mul-float v8, v5, v1

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xd

    aput v9, v4, v6

    const/16 v6, 0xe

    aput v9, v4, v6

    const/16 v6, 0xf

    aput v9, v4, v6

    const/16 v6, 0x10

    aput v9, v4, v6

    const/16 v6, 0x11

    aput v9, v4, v6

    const/16 v6, 0x12

    aput v10, v4, v6

    const/16 v6, 0x13

    aput v9, v4, v6

    const/16 v6, 0x14

    aput v9, v4, v6

    const/16 v6, 0x15

    aput v9, v4, v6

    const/16 v6, 0x16

    aput v9, v4, v6

    const/16 v6, 0x17

    aput v9, v4, v6

    const/16 v6, 0x18

    aput v10, v4, v6

    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/16 :goto_0
.end method

.method public static adjustSaturation(Landroid/graphics/ColorMatrix;F)V
    .locals 9

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {p1, v6}, Lcom/baidu/voicerecognition/android/ui/ColorFilterGenerator;->cleanValue(FF)F

    move-result p1

    cmpl-float v5, p1, v7

    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    :goto_1
    add-float v4, v8, v5

    const v2, 0x3e9e00d2    # 0.3086f

    const v1, 0x3f1c01a3    # 0.6094f

    const v0, 0x3da7ef9e    # 0.082f

    const/16 v5, 0x19

    new-array v3, v5, [F

    const/4 v5, 0x0

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x1

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/4 v5, 0x2

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/4 v5, 0x3

    aput v7, v3, v5

    const/4 v5, 0x4

    aput v7, v3, v5

    const/4 v5, 0x5

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/4 v5, 0x6

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x7

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/16 v5, 0x8

    aput v7, v3, v5

    const/16 v5, 0x9

    aput v7, v3, v5

    const/16 v5, 0xa

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/16 v5, 0xb

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/16 v5, 0xc

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/16 v5, 0xd

    aput v7, v3, v5

    const/16 v5, 0xe

    aput v7, v3, v5

    const/16 v5, 0xf

    aput v7, v3, v5

    const/16 v5, 0x10

    aput v7, v3, v5

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    aput v8, v3, v5

    const/16 v5, 0x13

    aput v7, v3, v5

    const/16 v5, 0x14

    aput v7, v3, v5

    const/16 v5, 0x15

    aput v7, v3, v5

    const/16 v5, 0x16

    aput v7, v3, v5

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    aput v8, v3, v5

    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v5}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/16 :goto_0

    :cond_2
    div-float v5, p1, v6

    goto/16 :goto_1
.end method

.method protected static cleanValue(FF)F
    .locals 1

    neg-float v0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
