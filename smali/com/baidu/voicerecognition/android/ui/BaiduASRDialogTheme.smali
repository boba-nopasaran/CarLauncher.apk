.class public Lcom/baidu/voicerecognition/android/ui/BaiduASRDialogTheme;
.super Ljava/lang/Object;
.source "BaiduASRDialogTheme.java"


# static fields
.field private static final BLUE_COLOR_STYLE:I = 0x1

.field private static final DEEP_CONTRAST_STYLE:I = 0x2000000

.field private static final GREEN_COLOR_STYLE:I = 0x3

.field private static final LIGHT_CONTRAST_STYLE:I = 0x1000000

.field private static final MASK_COLOR_STYLE:I = 0xffffff

.field private static final MASK_CONTRAST_STYLE:I = -0x1000000

.field private static final ORANGE_COLOR_STYLE:I = 0x4

.field private static final RED_COLOR_STYLE:I = 0x2

.field public static final THEME_BLUE_DEEPBG:I = 0x2000001

.field public static final THEME_BLUE_LIGHTBG:I = 0x1000001

.field public static final THEME_GREEN_DEEPBG:I = 0x2000003

.field public static final THEME_GREEN_LIGHTBG:I = 0x1000003

.field public static final THEME_ORANGE_DEEPBG:I = 0x2000004

.field public static final THEME_ORANGE_LIGHTBG:I = 0x1000004

.field public static final THEME_RED_DEEPBG:I = 0x2000002

.field public static final THEME_RED_LIGHTBG:I = 0x1000002


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeepStyle(I)Z
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
