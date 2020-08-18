.class public Lcom/car/common/CarUtil;
.super Ljava/lang/Object;
.source "CarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/CarUtil$IndexComparator;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CarSvc_CarUtil"

.field private static sDeviceID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorageFull(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/car/common/CarUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    const-string v7, "CarSvc_CarUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CarSvc_CarUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v8, p2

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkStorageLeft(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13

    const/4 v5, 0x0

    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/car/common/CarUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v6

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/car/common/CarUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v6, v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    div-long/2addr v10, v8

    long-to-int v4, v10

    const-string v10, "CarSvc_CarUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", except "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "% used."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CarSvc_CarUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TF total = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, p2, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 8

    const/16 v5, 0x10

    sget-object v6, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/sys_info/serial_number"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x40

    new-array v0, v6, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    if-le v4, v5, :cond_3

    :goto_1
    invoke-direct {v6, v0, v7, v5}, Ljava/lang/String;-><init>([BII)V

    sput-object v6, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    sget-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v5, "getDeviceID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sDeviceID.length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    :cond_2
    sget-object v5, Lcom/car/common/CarUtil;->sDeviceID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "getDeviceID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/common/CarUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/common/CarUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2

    :cond_3
    move-wide v4, v2

    goto :goto_0
.end method

.method public static getGpsApps(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/high16 v14, 0x10000

    const-string v11, "geo:0,0"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v11, "android.intent.action.NaviOne"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.baidu.navi.hd"

    const-string v13, "com.baidu.navi.NaviActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.txznet.nav"

    const-string v13, "com.txznet.nav.ui.MainActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.autonavi.amapauto"

    const-string v13, "com.autonavi.auto.MainMapActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.autonavi.amapautolite"

    const-string v13, "com.autonavi.auto.MainMapActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "cn.jyuntech.map"

    const-string v13, "cn.jyuntech.logo.MainActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.navitel"

    const-string v13, "com.navitel.NavitelSystemActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v8
.end method

.method static ignoredFileDel()Z
    .locals 9

    const/4 v7, 0x0

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/car/common/CarPath;->getLostPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v8, v2

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isAliYunOS()Z
    .locals 2

    const-string v0, "ro.yunos.product.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInCommunication(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMT6582Platform()Z
    .locals 2

    const-string v0, "ro.mediatek.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MT6582"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMT6735MPlatform()Z
    .locals 2

    const-string v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6735m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMT6735Platform()Z
    .locals 2

    const-string v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMT6753Platform()Z
    .locals 2

    const-string v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6753"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageFull(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/car/common/CarUtil;->checkStorageFull(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/car/common/CarUtil;->previousLockedVideoDel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 9

    const/16 v8, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "sys.lockcap.percent"

    const-string v7, "16,16"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v2, v8, :cond_0

    const/16 v2, 0x1e

    :cond_0
    if-lt v1, v8, :cond_1

    const/16 v1, 0x1e

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_0
    if-eqz p2, :cond_3

    move v4, v2

    :goto_1
    invoke-static {p0, v7, v4}, Lcom/car/common/CarUtil;->checkStorageFull(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {p1, v4}, Lcom/car/common/CarUtil;->previousLockedVideoDel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_3
    return v4

    :cond_2
    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_3
.end method

.method static previousLockedVideoDel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14

    invoke-static {}, Lcom/car/common/CarUtil;->ignoredFileDel()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v11, Lcom/car/common/CarUtil$IndexComparator;

    invoke-direct {v11}, Lcom/car/common/CarUtil$IndexComparator;-><init>()V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    const-string v12, "CarSvc_CarUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "first one is "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/CarPath;->getThumbnailPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v11, "."

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "."

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v11, "CarSvc_CarUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete thumbnail File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
