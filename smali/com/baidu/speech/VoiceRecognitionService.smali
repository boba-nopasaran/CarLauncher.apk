.class public final Lcom/baidu/speech/VoiceRecognitionService;
.super Landroid/speech/RecognitionService;
.source "VoiceRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/VoiceRecognitionService$Task;
    }
.end annotation


# static fields
.field public static final EVENT_ENGINE_SWITCH:I = 0xc

.field private static final EVENT_ERROR:I = 0xb

.field public static final LANGUAGE_CANTONESE:Ljava/lang/String; = "yue-Hans-CN"

.field public static final LANGUAGE_CHINESE:Ljava/lang/String; = "cmn-Hans-CN"

.field public static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en-GB"

.field public static final LANGUAGE_SICHUAN:Ljava/lang/String; = "sichuan-Hans-CN"

.field public static final NLU_DISABLE:Ljava/lang/String; = "disable"

.field public static final NLU_ENABLE:Ljava/lang/String; = "enable"

.field private static final PARAMS_MAP:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SP_KEY_INTERNAL:Ljava/lang/String; = "key_internal"

.field public static final SP_NAME_ASR:Ljava/lang/String; = "baidu_speech_asr"

.field public static final TAG:Ljava/lang/String; = "VoiceRecognitionService"

.field private static final VAD_INPUT:Ljava/lang/String; = "input"

.field private static final VAD_SEARCH:Ljava/lang/String; = "search"

.field private static final VAD_TOUCH:Ljava/lang/String; = "touch"

.field private static final VERSION_NAME:Ljava/lang/String; = "2.0.17.20150706"

.field private static final logger:Ljava/util/logging/Logger;

.field static sKeyMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private console:Lcom/baidu/speech/Console;

.field private internal:Z

.field private final mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/speech/RecognitionService$Callback;",
            "Lcom/baidu/speech/VoiceRecognitionService$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v11, "VoiceRecognitionService"

    invoke-static {v11}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    sput-object v11, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    sput-object v11, Lcom/baidu/speech/VoiceRecognitionService;->PARAMS_MAP:Ljava/util/TreeMap;

    const/16 v11, 0x24

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "cmn-Hans-CNtouch"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const/16 v12, 0x600

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "cmn-Hans-CNsearch"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const/16 v12, 0x600

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "cmn-Hans-CNinput"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const/16 v12, 0x209

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/4 v11, 0x6

    const-string v12, "yue-Hans-CNtouch"

    aput-object v12, v1, v11

    const/4 v11, 0x7

    const/16 v12, 0x664

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "yue-Hans-CNsearch"

    aput-object v12, v1, v11

    const/16 v11, 0x9

    const/16 v12, 0x664

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0xa

    const-string v12, "yue-Hans-CNinput"

    aput-object v12, v1, v11

    const/16 v11, 0xb

    const/16 v12, 0x665

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0xc

    const-string v12, "en-GBtouch"

    aput-object v12, v1, v11

    const/16 v11, 0xd

    const/16 v12, 0x6c8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0xe

    const-string v12, "en-GBsearch"

    aput-object v12, v1, v11

    const/16 v11, 0xf

    const/16 v12, 0x6c8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x10

    const-string v12, "en-GBinput"

    aput-object v12, v1, v11

    const/16 v11, 0x11

    const/16 v12, 0x6c9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x12

    const-string v12, "sichuan-Hans-CNtouch"

    aput-object v12, v1, v11

    const/16 v11, 0x13

    const/16 v12, 0x72c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x14

    const-string v12, "sichuan-Hans-CNsearch"

    aput-object v12, v1, v11

    const/16 v11, 0x15

    const/16 v12, 0x72c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x16

    const-string v12, "sichuan-Hans-CNinput"

    aput-object v12, v1, v11

    const/16 v11, 0x17

    const/16 v12, 0x72d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x18

    const-string v12, "disabletouch"

    aput-object v12, v1, v11

    const/16 v11, 0x19

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x1a

    const-string v12, "disablesearch"

    aput-object v12, v1, v11

    const/16 v11, 0x1b

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x1c

    const-string v12, "disableinput"

    aput-object v12, v1, v11

    const/16 v11, 0x1d

    const/16 v12, 0x65

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x1e

    const-string v12, "enabletouch"

    aput-object v12, v1, v11

    const/16 v11, 0x1f

    const/16 v12, 0x131

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x20

    const-string v12, "enablesearch"

    aput-object v12, v1, v11

    const/16 v11, 0x21

    const/16 v12, 0x131

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/16 v11, 0x22

    const-string v12, "enableinput"

    aput-object v12, v1, v11

    const/16 v11, 0x23

    const/16 v12, 0x131

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v11

    const/4 v6, 0x0

    :goto_0
    array-length v11, v1

    if-ge v6, v11, :cond_0

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->PARAMS_MAP:Ljava/util/TreeMap;

    aget-object v12, v1, v6

    add-int/lit8 v13, v6, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v11, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "key"

    const-string v13, "decoder-server.key"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "secret"

    const-string v13, "decoder-server.secret"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "app"

    const-string v13, "decoder-server.app"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "auth"

    const-string v13, "decoder-server.auth"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "infile"

    const-string v13, "audio.file"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "outfile"

    const-string v13, "audio.outfile"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "sample"

    const-string v13, "audio.sample"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "asr-base-file-path"

    const-string v13, "decoder-offline.asr-base-file-path"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "lm-res-file-path"

    const-string v13, "decoder-offline.lm-res-file-path"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "license-file-path"

    const-string v13, "decoder-offline.license-file-path"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "language"

    const-string v13, "decoder-offline.language"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "slot-data"

    const-string v13, "decoder-offline.slot-data"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    const-string v12, "preferred"

    const-string v13, "decoder-merge.preferred"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb

    :try_start_0
    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "MFE_JNI"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "VoiceRecognitionService"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "asr"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "decoder"

    aput-object v12, v9, v11

    const/4 v11, 0x4

    const-string v12, "Console"

    aput-object v12, v9, v11

    const/4 v11, 0x5

    const-string v12, "HttpCallable"

    aput-object v12, v9, v11

    const/4 v11, 0x6

    const-string v12, "MfeVadInputStream"

    aput-object v12, v9, v11

    const/4 v11, 0x7

    const-string v12, "MicrophoneInputStream"

    aput-object v12, v9, v11

    const/16 v11, 0x8

    const-string v12, "Parser"

    aput-object v12, v9, v11

    const/16 v11, 0x9

    const-string v12, "TokenCallable"

    aput-object v12, v9, v11

    const/16 v11, 0xa

    const-string v12, "EmbeddedASREngine"

    aput-object v12, v9, v11

    move-object v0, v9

    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v10, v0, v7

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v11, "baidu_speech"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "baidu_speech.log"

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    new-instance v5, Ljava/util/logging/FileHandler;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v11}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v5, v11}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    sget-object v11, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v5, v11}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n\n\n==== "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n========"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v0, v9

    array-length v8, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_3

    aget-object v10, v0, v7

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/speech/VoiceRecognitionService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/speech/VoiceRecognitionService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/speech/VoiceRecognitionService;->parseArgs(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/speech/VoiceRecognitionService;)Lcom/baidu/speech/Console;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService;->console:Lcom/baidu/speech/Console;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.17.20150706"

    return-object v0
.end method

.method private parseArgs(Landroid/content/Intent;)Ljava/lang/String;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/VoiceRecognitionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/speech/VoiceRecognitionService;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x80

    invoke-virtual/range {v28 .. v30}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    const/4 v4, 0x0

    :goto_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-nez v28, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    if-nez v28, :cond_5

    const/16 v22, 0x0

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --basic.appid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.key "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.secret "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    new-instance v28, Ljava/lang/Exception;

    const-string v29, "does not allow non-current program calls"

    invoke-direct/range {v28 .. v29}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v29, v0

    const-string v30, "com.baidu.speech.APP_ID"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "com.baidu.speech.API_KEY"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "com.baidu.speech.SECRET_KEY"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    :cond_6
    const-string v28, "language"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    const-string v28, "language"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_3
    const-string v28, "vad"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    const-string v28, "vad"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :goto_4
    const-string v28, "nlu"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    const-string v28, "nlu"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_5
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.vad "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v28, Lcom/baidu/speech/VoiceRecognitionService;->PARAMS_MAP:Ljava/util/TreeMap;

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_8

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.pdt "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v28, Lcom/baidu/speech/VoiceRecognitionService;->PARAMS_MAP:Ljava/util/TreeMap;

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_9

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.ptc "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "prop"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    move-object/from16 v0, v24

    instance-of v0, v0, [I

    move/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v28, v24

    check-cast v28, [I

    move-object/from16 v6, v28

    check-cast v6, [I

    move-object v7, v6

    array-length v14, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v14, :cond_e

    aget v25, v7, v9

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const-string v13, "cmn-Hans-CN"

    goto/16 :goto_3

    :cond_c
    const-string v26, "search"

    goto/16 :goto_4

    :cond_d
    const-string v16, "disable"

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    move-object/from16 v20, v24

    check-cast v20, Ljava/lang/String;

    const-string v28, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    array-length v14, v7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v14, :cond_f

    aget-object v21, v7, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_10

    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    const-string v28, "prop_list"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-server.prop_list "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --decoder-offline.prop "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_11

    const-string v28, "null"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_11

    const-string v28, "args"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_11

    sget-object v28, Lcom/baidu/speech/VoiceRecognitionService;->sKeyMapping:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_12

    const-string v28, "."

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object v11, v10

    :cond_12
    :goto_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_11

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " --"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_13
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "basic."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/speech/VoiceRecognitionService;->internal:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    const-string v28, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v28, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "internal task, use args="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-eqz v23, :cond_15

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    return-object v28
.end method


# virtual methods
.method protected onCancel(Landroid/speech/RecognitionService$Callback;)V
    .locals 6

    sget-object v1, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    const-string v2, "--onCancel(listener=%s) \t%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/VoiceRecognitionService$Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/speech/VoiceRecognitionService$Task;->cancel()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/speech/RecognitionService;->onCreate()V

    sget-object v4, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    const-string v5, "onCreate(), hashcode=%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-string v4, "baidu_speech_asr"

    invoke-virtual {p0, v4, v8}, Lcom/baidu/speech/VoiceRecognitionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :try_start_0
    const-string v4, "com.baidu.android.voicedemo.SettingMore"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->internal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v4, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/baidu/speech/VoiceRecognitionService;->internal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/speech/VoiceRecognitionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/baidu/speech/VoiceRecognitionService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-boolean v1, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_0

    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \'android:exported\' should be false, please modify AndroidManifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    iget-object v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->console:Lcom/baidu/speech/Console;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "voice service has been inited"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Lcom/baidu/speech/Console;

    invoke-virtual {p0}, Lcom/baidu/speech/VoiceRecognitionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/baidu/speech/Console;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->console:Lcom/baidu/speech/Console;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->mainHandler:Landroid/os/Handler;

    return-void

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 7

    invoke-super {p0}, Landroid/speech/RecognitionService;->onDestroy()V

    sget-object v2, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    const-string v3, "--onDestroy() \t%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/speech/VoiceRecognitionService$Task;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/speech/VoiceRecognitionService$Task;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 9

    iget-object v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/speech/VoiceRecognitionService$Task;

    invoke-virtual {v2}, Lcom/baidu/speech/VoiceRecognitionService$Task;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/baidu/speech/VoiceRecognitionService$Task;->cancel()V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    const-string v5, "--onStartListening(intent, listener=%s) \t%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/speech/VoiceRecognitionService$Task;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/speech/VoiceRecognitionService$Task;-><init>(Lcom/baidu/speech/VoiceRecognitionService;Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    new-instance v3, Ljava/lang/Thread;

    const-string v4, "console-reader"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v4, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .locals 6

    sget-object v1, Lcom/baidu/speech/VoiceRecognitionService;->logger:Ljava/util/logging/Logger;

    const-string v2, "--onStopListening(listener=%s) \t%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/VoiceRecognitionService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/VoiceRecognitionService$Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/speech/VoiceRecognitionService$Task;->stop()V

    :cond_0
    return-void
.end method
