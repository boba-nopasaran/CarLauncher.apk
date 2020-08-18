.class public final Lcom/baidu/voicerecognition/android/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final BYTES_PER_SAMPLE_16BIT:I = 0x2

.field private static final BYTES_PER_SAMPLE_8BIT:I = 0x1

.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Utility"

.field private static final THOUSAND_DIV:I = 0x3e8

.field private static mConnManager:Landroid/net/ConnectivityManager;

.field private static maxCpuFreq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/voicerecognition/android/Utility;->maxCpuFreq:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/voicerecognition/android/Utility;->mConnManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static generatePlatformString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getCpuInfo()I
    .locals 10

    :try_start_0
    const-string v5, "/proc/cpuinfo"

    const-string v6, ""

    const-string v1, ""

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v4, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "BogoMIPS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v1, v0, v7

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v7, "Utility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cpuInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    :goto_0
    return v7

    :catch_0
    move-exception v2

    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getMaxCpuFreq()I
    .locals 16

    const/4 v12, 0x0

    :try_start_0
    const-string v11, ""

    sget v13, Lcom/baidu/voicerecognition/android/Utility;->maxCpuFreq:I

    if-eqz v13, :cond_1

    sget v6, Lcom/baidu/voicerecognition/android/Utility;->maxCpuFreq:I

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/baidu/voicerecognition/android/Utility;->isRunningEmulator()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/system/bin/cat"

    aput-object v14, v0, v13

    const/4 v13, 0x1

    const-string v14, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v14, v0, v13

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v13, 0x18

    new-array v10, v13, [B

    :goto_1
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    :goto_2
    invoke-static {}, Lcom/baidu/voicerecognition/android/Utility;->getCpuInfo()I

    move-result v6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Utility"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cpu result:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v6, :cond_4

    :goto_3
    sput v8, Lcom/baidu/voicerecognition/android/Utility;->maxCpuFreq:I

    sget v6, Lcom/baidu/voicerecognition/android/Utility;->maxCpuFreq:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    move v6, v12

    goto/16 :goto_0

    :cond_4
    move v8, v6

    goto :goto_3
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method static getStatusType(I)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getVoiceDataSizeInShort(III)I
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    if-eq p2, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "audio format invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-ne p2, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    mul-int v3, p0, p1

    mul-int/2addr v3, v0

    div-int/lit16 v1, v3, 0x3e8

    div-int/lit8 v2, v1, 0x2

    return v2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getWifiOr2gOr3G(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v2, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "1"

    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    :cond_1
    const-string v2, "2"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string v2, "3"

    goto :goto_0

    :pswitch_2
    const-string v2, "3"

    goto :goto_0

    :pswitch_3
    const-string v2, "3"

    goto :goto_0

    :pswitch_4
    const-string v2, "3"

    goto :goto_0

    :pswitch_5
    const-string v2, "3"

    goto :goto_0

    :pswitch_6
    const-string v2, "3"

    goto :goto_0

    :pswitch_7
    const-string v2, "3"

    goto :goto_0

    :pswitch_8
    const-string v2, "3"

    goto :goto_0

    :pswitch_9
    const-string v2, "3"

    goto :goto_0

    :pswitch_a
    const-string v2, "3"

    goto :goto_0

    :pswitch_b
    const-string v2, "4"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/baidu/voicerecognition/android/Utility;->mConnManager:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method public static is2G(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    const-string v2, ""

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0xb -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/Utility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRunningEmulator()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isUsingWifi()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/voicerecognition/android/Utility;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/baidu/voicerecognition/android/Utility;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method static isUsingWifi(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/Utility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
