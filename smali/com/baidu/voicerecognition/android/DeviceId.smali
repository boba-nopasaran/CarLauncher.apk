.class public final Lcom/baidu/voicerecognition/android/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;
    }
.end annotation


# static fields
.field private static final AES_KEY:Ljava/lang/String; = "30212102dicudiab"

.field private static final DEBUG:Z = false

.field private static final EXT_DIR:Ljava/lang/String; = "backups/.SystemConfig"

.field private static final EXT_FILE:Ljava/lang/String; = ".cuid"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "com.baidu.deviceid"

.field private static final OLD_EXT_DIR:Ljava/lang/String; = "baidu"

.field private static final TAG:Ljava/lang/String; = "DeviceId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x1

    const-string v8, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v8}, Lcom/baidu/voicerecognition/android/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v8}, Lcom/baidu/voicerecognition/android/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v8}, Lcom/baidu/voicerecognition/android/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->getIMEIInfo(Landroid/content/Context;)Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->IMEI:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->CAN_READ_AND_WRITE_SYSTEM_SETTINGS:Z

    if-nez v8, :cond_0

    move v0, v7

    :goto_0
    invoke-static {p0}, Lcom/baidu/voicerecognition/android/DeviceId;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v0, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.baidu"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/voicerecognition/android/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/baidu/voicerecognition/android/DeviceId;->isExternalFileExists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2}, Lcom/baidu/voicerecognition/android/DeviceId;->getExternalDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/voicerecognition/android/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v7, v4

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.baidu"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/voicerecognition/android/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v2, v4}, Lcom/baidu/voicerecognition/android/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static getExternalDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v6, ""

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v1, 0x0

    const-string v6, ""

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "baidu/.cuid"

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "backups/.SystemConfig/.cuid"

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    new-instance v8, Ljava/lang/String;

    const-string v9, "30212102dicudiab"

    const-string v10, "30212102dicudiab"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/baidu/voicerecognition/android/Base64;->decode([B)[B

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/baidu/voicerecognition/android/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    aget-object v6, v0, v9

    :cond_4
    if-nez v1, :cond_0

    invoke-static {p0, v6}, Lcom/baidu/voicerecognition/android/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0

    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->getIMEIInfo(Landroid/content/Context;)Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/voicerecognition/android/DeviceId$IMEIInfo;->IMEI:Ljava/lang/String;

    return-object v1
.end method

.method private static isExternalFileExists()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "backups/.SystemConfig"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v8, ".cuid"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/FileWriter;

    const/4 v8, 0x0

    invoke-direct {v4, v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const-string v8, "30212102dicudiab"

    const-string v9, "30212102dicudiab"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/baidu/voicerecognition/android/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Lcom/baidu/voicerecognition/android/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    check-cast v0, Ljava/io/FileWriter;

    move-object v8, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    move-object v0, v4

    check-cast v0, Ljava/io/FileWriter;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V

    check-cast v4, Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method
