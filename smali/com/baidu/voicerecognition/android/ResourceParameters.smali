.class public Lcom/baidu/voicerecognition/android/ResourceParameters;
.super Ljava/lang/Object;
.source "ResourceParameters.java"


# static fields
.field private static final KEY_COOKIE_URL:Ljava/lang/String; = "http://m.baidu.com"

.field private static final KEY_RESERVE_MAP_VERSION:Ljava/lang/String; = "mapver"

.field private static final KEY_RESERVE_NET_TYPE:Ljava/lang/String; = "net_type"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceParameters"

.field private static final sInstance:Lcom/baidu/voicerecognition/android/ResourceParameters;


# instance fields
.field private mBrowserUA:Ljava/lang/String;

.field private mCFrom:Ljava/lang/String;

.field private mCUID:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mDeviceInfo:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mOriginalBUA:Ljava/lang/String;

.field private mOriginalPu:Ljava/lang/String;

.field private mProductLine:Ljava/lang/String;

.field private mPu:Ljava/lang/String;

.field private mReserves:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/voicerecognition/android/ResourceParameters;

    invoke-direct {v0}, Lcom/baidu/voicerecognition/android/ResourceParameters;-><init>()V

    sput-object v0, Lcom/baidu/voicerecognition/android/ResourceParameters;->sInstance:Lcom/baidu/voicerecognition/android/ResourceParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "baiduvoice"

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mProductLine:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mReserves:Ljava/util/Map;

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->generateDeviceInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mDeviceInfo:Ljava/lang/String;

    return-void
.end method

.method private appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "utf-8"

    invoke-static {p3, v0}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private generateDeviceInfo()Ljava/lang/String;
    .locals 8

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    const-string v7, "-"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    const-string v7, "-"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ResourceParameters"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ResourceParameters"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private generatePu(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "sz"

    const-string v2, "1320_480"

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuid"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCUID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cua"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mUA:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cut"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mDeviceInfo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osname"

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mProductLine:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ctv"

    const-string v2, "1"

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ResourceParameters"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResourceParameters"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v5, "android"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "ResourceParameters"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ResourceParameters"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ua = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v7

    :catch_0
    move-exception v2

    const-string v8, "1.0.0.0"

    goto :goto_0
.end method

.method public static getInstance()Lcom/baidu/voicerecognition/android/ResourceParameters;
    .locals 1

    sget-object v0, Lcom/baidu/voicerecognition/android/ResourceParameters;->sInstance:Lcom/baidu/voicerecognition/android/ResourceParameters;

    return-object v0
.end method

.method private refreshUserAgent()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalBUA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalBUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mProductLine:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mUA:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ResourceParameters;->reverseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mDeviceInfo:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/voicerecognition/android/ResourceParameters;->reverseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->getFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCUID:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private reverseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public buildPU(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mPu:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "csrc"

    invoke-direct {p0, v0, v2, p1}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/voicerecognition/android/Utility;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildReserved(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mReserves:Ljava/util/Map;

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v7, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/Utility;->getWifiOr2gOr3G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "net_type"

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v5, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v0, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getBrowserUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mBrowserUA:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCookieManager:Landroid/webkit/CookieManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCookieManager:Landroid/webkit/CookieManager;

    const-string v2, "http://m.baidu.com"

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mFrom:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCFrom:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "959b"

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/voicerecognition/android/Device;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCUID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->generateUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mUA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->generatePu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalPu:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->refreshUserAgent()V

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalPu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "cfrom"

    iget-object v3, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCFrom:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mPu:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setBrowserUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalBUA:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/voicerecognition/android/ResourceParameters;->refreshUserAgent()V

    return-void
.end method

.method public setCFrom(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mCFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalPu:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mOriginalPu:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "cfrom"

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/voicerecognition/android/ResourceParameters;->appendPu(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/voicerecognition/android/ResourceParameters;->mPu:Ljava/lang/String;

    :cond_0
    return-void
.end method
