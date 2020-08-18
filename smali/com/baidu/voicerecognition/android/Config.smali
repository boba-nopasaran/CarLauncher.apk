.class public Lcom/baidu/voicerecognition/android/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "bdspeech_asr.cfg"

.field private static final CONSTANT_VALUE_TRUE:Ljava/lang/String; = "true"

.field public static final KEY_PRODUCTID_INPUT:Ljava/lang/String; = "bdspeech.productid.input"

.field public static final KEY_PRODUCTID_SEARCH:Ljava/lang/String; = "bdspeech.productid.search"

.field public static final KEY_PROTOCOL_INPUT:Ljava/lang/String; = "bdspeech.protocol.input"

.field public static final KEY_SCO_CONTROLLER:Ljava/lang/String; = "bdspeech.sco.controller"

.field public static final KEY_SERVER_URL:Ljava/lang/String; = "bdspeech.server.url"

.field private static final LOG_TAG:Ljava/lang/String; = "Config"

.field private static final mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    const-class v2, Lcom/baidu/voicerecognition/android/Config;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bdspeech_asr.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v2, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "Config"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Config"

    sget-object v3, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bdspeech_asr.cfg load error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v2, "Config"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Config"

    const-string v3, "bdspeech_asr.cfg not exsit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    move v0, p1

    sget-object v2, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 7

    move v1, p1

    sget-object v3, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "Config"

    const-string v4, "sdCard config warn,param %1$s value %2$s isn\'t number"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/voicerecognition/android/Config;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
