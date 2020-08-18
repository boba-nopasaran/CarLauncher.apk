.class final Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voicerecognition/android/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IMEIInfo"
.end annotation


# static fields
.field public static final DEFAULT_TM_DEVICEID:Ljava/lang/String; = ""

.field private static final KEY_IMEI:Ljava/lang/String; = "bd_setting_i"


# instance fields
.field public final CAN_READ_AND_WRITE_SYSTEM_SETTINGS:Z

.field public final IMEI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->IMEI:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->CAN_READ_AND_WRITE_SYSTEM_SETTINGS:Z

    return-void
.end method

.method private static getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->imeiCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p1

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "DeviceId"

    const-string v4, "Read IMEI failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getIMEIInfo(Landroid/content/Context;)Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;
    .locals 5

    const/4 v0, 0x0

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bd_setting_i"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-static {p0, v3}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bd_setting_i"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v4, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v4, v2, v3}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;-><init>(Ljava/lang/String;Z)V

    return-object v4

    :catch_0
    move-exception v1

    const-string v3, "DeviceId"

    const-string v4, "Settings.System.getString or putString failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-static {p0, v3}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->getIMEI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static imeiCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
