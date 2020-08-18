.class public Lcom/baidu/speech/easr/EmbeddedASREngine;
.super Ljava/lang/Object;
.source "EmbeddedASREngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;
    }
.end annotation


# static fields
.field public static final ASR_DATA_FILE_NOT_EXISTS:I = 0x1b8b

.field public static final AUTH_FAILED_1:I = 0x1f41

.field public static final AUTH_FAILED_7:I = 0x1f47

.field public static final AUTH_FAILED_CUID:I = 0x1f44

.field public static final AUTH_FAILED_LICENSE_EXPIRED:I = 0x1f45

.field public static final AUTH_FAILED_PACKAGE_NAME:I = 0x1f42

.field public static final AUTH_FAILED_SIGNATURE:I = 0x1f43

.field public static final AUTH_FAILED_UNKNOWN:I = 0x1f40

.field public static final AUTH_PASSED:I = 0x0

.field public static final AUTH_SERVER_ERR_CODE_BASE:I = 0x2328

.field private static final DEFAULT_LICENCE_FILE_NAME:Ljava/lang/String; = "baidu_asr_licence.dat"

.field private static DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String; = null

.field private static final EMBEDDED_ENGINE_ERROR_TYPE:I = 0x0

.field public static final ERROR_EMBEDDED:I = 0x1b58

.field public static final ERROR_EMBEDDED_NOT_CONFIDENCE:I = 0x1f3e

.field public static final ERROR_LANGUAGE_NOT_SUPPORTED:I = 0x1b94

.field public static final ERROR_PROP_NOT_SET:I = 0x1b90

.field public static final ERROR_PROP_NOT_SUPPORTED:I = 0x1b92

.field public static final ERROR_SAMPLE_RATE_NOT_SUPPORTED:I = 0x1b91

.field public static final ERROR_SLOT_DATA_LIMIT_EXCEEDS:I = 0x1b8f

.field public static final ERROR_SLOT_DATA_NOT_VALID:I = 0x1b93

.field private static final EXPIRED_PREFIX:Ljava/lang/String; = "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743]"

.field public static final LM_RES_DATA_FILE_NOT_EXISTS:I = 0x1b8c

.field public static final PARAM_ERROR_PREFIX:I = 0x1b58

.field public static final PARAM_ERROR_TYPE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "EmbeddedASREngine"

.field private static final TRIAL_PREFIX:Ljava/lang/String; = "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f]"

.field private static final logger:Ljava/util/logging/Logger;

.field private static mContext:Landroid/content/Context;

.field private static final mDebugAudioFilePath:Ljava/lang/String;

.field private static final mDsDebugAudioFilePath:Ljava/lang/String;

.field private static mInitedDataFilePath:Ljava/lang/String;

.field private static mInitedLmResFilePath:Ljava/lang/String;

.field private static mIsInited:Z

.field private static mIsLicenseDownloaded:Z

.field private static mIsTrialLicense:Z

.field private static mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

.field private static mTrialPrefix:Ljava/lang/String;

.field private static final mWriteAudioFile:Z

.field private static sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "EmbeddedASREngine"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    sput-boolean v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsLicenseDownloaded:Z

    sput-boolean v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    sput-object v1, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedDataFilePath:Ljava/lang/String;

    sput-object v1, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedLmResFilePath:Ljava/lang/String;

    sput-object v1, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    const-string v0, ""

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/easr/debug.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mDebugAudioFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/easr/ds_debug.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mDsDebugAudioFilePath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "baidu_speech"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/baidu/speech/easr/easrNativeJni;->SetLogLevel(I)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/speech/easr/easrNativeJni;->SetLogLevel(I)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsLicenseDownloaded:Z

    return p0
.end method

.method static synthetic access$300()Lcom/baidu/speech/easr/stat/SynthesizeResultDb;
    .locals 1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    return-object v0
.end method

.method private declared-synchronized auth(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 28

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object p3, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    :cond_1
    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "licensePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/baidu/speech/easr/Utility;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p3, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/baidu/speech/easr/stat/StatHelper;->getStatHeader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->GetLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetLicense getLicenseRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", licensePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-gez v25, :cond_3

    const-string v3, ""

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit16 v0, v3, 0x2328

    move/from16 v24, v0

    :goto_0
    monitor-exit p0

    return v24

    :cond_3
    const/16 v3, 0x20

    :try_start_1
    new-array v14, v3, [B

    const/16 v3, 0x400

    new-array v12, v3, [B

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/baidu/speech/easr/Utility;->getLicenseDataFromFile(Ljava/lang/String;[B)I

    move-result v13

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logDir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v9, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object v11, v6

    invoke-virtual/range {v8 .. v15}, Lcom/baidu/speech/easr/EmbeddedASREngine;->VerifyLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[BI[BLjava/lang/String;)I

    move-result v24

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([B)V

    const-string v3, "end"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    new-instance v27, Lcom/baidu/speech/easr/stat/StatThread;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/easr/stat/StatThread;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Lcom/baidu/speech/easr/stat/StatThread;->start()V

    :cond_4
    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VerifyLicense authRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appIdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-ltz v24, :cond_6

    const/16 v3, 0x3e8

    move/from16 v0, v24

    if-ge v0, v3, :cond_5

    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    const-string v3, ""

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    :goto_1
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move/from16 v0, v24

    add-int/lit16 v9, v0, -0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6
    const/4 v3, -0x6

    move/from16 v0, v24

    if-ne v0, v3, :cond_8

    :try_start_2
    sget-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsLicenseDownloaded:Z

    if-nez v3, :cond_7

    move-object/from16 v18, p3

    move-object/from16 v21, v6

    move-object/from16 v19, p1

    new-instance v3, Ljava/lang/Thread;

    new-instance v16, Lcom/baidu/speech/easr/EmbeddedASREngine$1;

    move-object/from16 v17, p0

    move-object/from16 v20, p2

    invoke-direct/range {v16 .. v21}, Lcom/baidu/speech/easr/EmbeddedASREngine$1;-><init>(Lcom/baidu/speech/easr/EmbeddedASREngine;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/baidu/speech/easr/stat/StatHelper;->getStatHeader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object p3, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    :cond_9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->GetLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetLicense getLicenseRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", licensePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-lez v25, :cond_d

    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lcom/baidu/speech/easr/Utility;->getLicenseDataFromFile(Ljava/lang/String;[B)I

    move-result v13

    sget-object v9, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object v11, v6

    invoke-virtual/range {v8 .. v15}, Lcom/baidu/speech/easr/EmbeddedASREngine;->VerifyLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[BI[BLjava/lang/String;)I

    move-result v24

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VerifyLicense authRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-gez v24, :cond_a

    const/4 v3, -0x6

    move/from16 v0, v24

    if-ne v0, v3, :cond_c

    :cond_a
    const/16 v3, 0x3e8

    move/from16 v0, v24

    if-ge v0, v3, :cond_b

    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    const-string v3, ""

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    :goto_2
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move/from16 v0, v24

    add-int/lit16 v9, v0, -0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    goto :goto_2

    :cond_c
    const-string v3, "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743]"

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v3, "[\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743]"

    sput-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    add-int/lit16 v0, v3, 0x2328

    move/from16 v24, v0

    goto/16 :goto_0
.end method

.method private buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, "name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_CORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->getSlotString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrBuildSlot(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildSlot([ILorg/json/JSONObject;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    aget v3, p1, v0

    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v3, "name"

    invoke-direct {p0, v3, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :pswitch_2
    const-string v3, "song"

    invoke-direct {p0, v3, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "artist"

    invoke-direct {p0, v3, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :pswitch_3
    const-string v3, "app"

    invoke-direct {p0, v3, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :pswitch_4
    const-string v3, "usercommand"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "usercommand"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_3

    const/16 v1, 0x1b8f

    goto :goto_0

    :cond_3
    const-string v3, "usercommand"

    invoke-direct {p0, v3, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private convertAuthErrorToSDKError(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, p1

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1f41

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1f42

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1f43

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1f44

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1f45

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x1f47

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private generateEmbeddedErrorNumber(II)I
    .locals 1

    mul-int/lit8 v0, p1, 0x64

    add-int/lit16 v0, v0, 0x1b58

    add-int/2addr v0, p2

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/EmbeddedASREngine;
    .locals 8

    const-class v5, Lcom/baidu/speech/easr/EmbeddedASREngine;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    if-nez v4, :cond_0

    new-instance v4, Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-direct {v4}, Lcom/baidu/speech/easr/EmbeddedASREngine;-><init>()V

    sput-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    :cond_0
    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    if-eq v4, p0, :cond_1

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sput-object p0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "baidu_asr_licence.dat"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default license path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/baidu/speech/easr/EmbeddedASREngine;->DEFAULT_LICENCE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    move-result-object v4

    sput-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    invoke-virtual {v4}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->open()V

    :cond_1
    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error package name not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getSlotString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initEngine(Lcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I
    .locals 16

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/baidu/speech/easr/EASRParams;->licenseFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1, v12}, Lcom/baidu/speech/easr/EmbeddedASREngine;->auth(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "auth failed! code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->convertAuthErrorToSDKError(I)I

    move-result v11

    :goto_0
    return v11

    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v11, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    const/16 v11, 0x1b8b

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v11, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_CORE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\u6d4b\u8bd5\n"

    invoke-static {v11, v12}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetSlot(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x2

    if-eq v5, v11, :cond_2

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    const-string v12, "bdeasrSetSlot $%s_CORE failed! ret = %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v11

    goto :goto_0

    :cond_3
    const-string v11, ""

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/baidu/speech/easr/easrJni;->bdeasrInitial(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    sput-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedDataFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    sput-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedLmResFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v8

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Init time is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    sget-object v11, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bdEASREngineInit failed! ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v11

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private declared-synchronized initEngine(ZLcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->setParams(Lcom/baidu/speech/easr/EASRParams;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    if-nez v3, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/baidu/speech/easr/EmbeddedASREngine;->initEngine(Lcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v3, p2, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedDataFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    sget-object v4, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedLmResFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReInit Embedded ASR Engine from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedDataFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReInit Embedded ASR Engine from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/baidu/speech/easr/EmbeddedASREngine;->mInitedLmResFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/baidu/speech/easr/easrJni;->bdeasrExit()V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/baidu/speech/easr/EmbeddedASREngine;->initEngine(Lcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static releaseRecognizer()V
    .locals 3

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/speech/easr/easrJni;->bdeasrExit()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsInited:Z

    :cond_0
    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    invoke-virtual {v0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mStatDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    invoke-virtual {v0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->close()V

    invoke-static {}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->releaseInstance()V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->sASREngineInstance:Lcom/baidu/speech/easr/EmbeddedASREngine;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private setParams(Lcom/baidu/speech/easr/EASRParams;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x2

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0x1b8b

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p1, Lcom/baidu/speech/easr/EASRParams;->prop:I

    const/16 v3, 0x4e20

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/baidu/speech/easr/EASRParams;->prop:I

    const/16 v3, 0x274c

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v1, 0x1b8c

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    iget v3, p1, Lcom/baidu/speech/easr/EASRParams;->recogFastMode:I

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v7, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_4

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v7}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    iget v3, p1, Lcom/baidu/speech/easr/EASRParams;->wakeUpFastMode:I

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v8, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_5

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v8}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    iget v3, p1, Lcom/baidu/speech/easr/EASRParams;->sampleRate:I

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v5, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_6

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    iget v3, p1, Lcom/baidu/speech/easr/EASRParams;->maxSpeechSec:F

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(F)V

    invoke-static {v9, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_7

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v9}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x4

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->maxSpeechPauseSec:F

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(F)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_8

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x5

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->useVADEndCut:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_9

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    iget v2, p1, Lcom/baidu/speech/easr/EASRParams;->prop:I

    const/16 v3, 0x4e20

    if-ne v2, v3, :cond_b

    const-string v0, "$ngram_LM_LOOP_CORE"

    :cond_a
    :goto_1
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    iget-object v3, p1, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_d

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v6}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_b
    iget v2, p1, Lcom/baidu/speech/easr/EASRParams;->prop:I

    const/16 v3, 0x274c

    if-ne v2, v3, :cond_a

    const-string v0, "$navi_ngram_LM_LOOP_CORE"

    goto :goto_1

    :cond_c
    new-instance v2, Lcom/baidu/speech/easr/EASRParamObject;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_d

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v1, v6}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x7

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    invoke-direct {v3, v0}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_e

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x8

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget-object v4, p1, Lcom/baidu/speech/easr/EASRParams;->wakeUpWords:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_f

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x9

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->needVAD:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_10

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xa

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->needWakeUp:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_11

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xb

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->needRecog:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_12

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xc

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->useSSE4:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_13

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xd

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->supportLongSpeech:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_14

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xe

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->expectRecogNum:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_15

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xf

    new-instance v3, Lcom/baidu/speech/easr/EASRParamObject;

    iget v4, p1, Lcom/baidu/speech/easr/EASRParams;->imePunctuationOn:I

    invoke-direct {v3, v4}, Lcom/baidu/speech/easr/EASRParamObject;-><init>(I)V

    invoke-static {v2, v3}, Lcom/baidu/speech/easr/easrJni;->bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I

    move-result v1

    if-eq v1, v5, :cond_0

    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bdeasrSetParam error! ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v1

    goto/16 :goto_0
.end method

.method private static shortArrayToByteArray([S)[B
    .locals 5

    array-length v2, p0

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    aget-short v4, p0, v1

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method GetLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    if-nez p2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2, p3, p4, p5}, Lcom/baidu/speech/easr/easrNativeJni;->GetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetLicense getLicenseRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", licensePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-gez v0, :cond_1

    const-string v3, ""

    invoke-static {p1, v3, p3, p4, p5}, Lcom/baidu/speech/easr/easrNativeJni;->GetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetLicense getLicenseRet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", licensePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-ltz v1, :cond_1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method VerifyLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[BI[BLjava/lang/String;)I
    .locals 11

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/baidu/speech/easr/easrNativeJni;->VerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI[BLjava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    :goto_1
    return v9

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    const-string v3, ""

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/baidu/speech/easr/easrNativeJni;->VerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI[BLjava/lang/String;)I

    move-result v10

    move v9, v10

    goto :goto_1
.end method

.method public addOneRecord(I)V
    .locals 1

    new-instance v0, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;

    invoke-direct {v0, p0, p1}, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;-><init>(Lcom/baidu/speech/easr/EmbeddedASREngine;I)V

    invoke-virtual {v0}, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;->start()V

    return-void
.end method

.method public getJSONResult()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/speech/easr/easrJni;->bdeasrGetJSONResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrialPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mTrialPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTrialLicense(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 1

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1}, Lcom/baidu/speech/easr/EmbeddedASREngine;->auth(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)I

    sget-boolean v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->mIsTrialLicense:Z

    return v0
.end method

.method public newAudioData([SII)I
    .locals 3

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bdeasrFeedAudioData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/baidu/speech/easr/easrJni;->bdeasrFeedAudioData([SII)I

    move-result v0

    return v0
.end method

.method public newAudioData([SIII)I
    .locals 3

    sget-object v0, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bdeasrFront: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/baidu/speech/easr/easrJni;->bdeasrFront([SIII)I

    move-result v0

    return v0
.end method

.method public recognize()I
    .locals 1

    invoke-static {}, Lcom/baidu/speech/easr/easrJni;->bdeasrRec()I

    move-result v0

    return v0
.end method

.method public startRecognizing(Lcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/baidu/speech/easr/EASRParams;->validate()V

    invoke-direct {p0, v8, p1, p2}, Lcom/baidu/speech/easr/EmbeddedASREngine;->initEngine(ZLcom/baidu/speech/easr/EASRParams;Ljava/lang/Integer;)I

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget v9, p1, Lcom/baidu/speech/easr/EASRParams;->prop:I

    sparse-switch v9, :sswitch_data_0

    new-array v6, v11, [I

    const/16 v9, 0x9

    aput v9, v6, v8

    :goto_1
    :try_start_0
    iget-object v9, p1, Lcom/baidu/speech/easr/EASRParams;->slotData:Lorg/json/JSONObject;

    invoke-direct {p0, v6, v9}, Lcom/baidu/speech/easr/EmbeddedASREngine;->buildSlot([ILorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v4, v0

    goto :goto_0

    :sswitch_0
    const/4 v9, 0x3

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    goto :goto_1

    :sswitch_1
    new-array v6, v10, [I

    fill-array-data v6, :array_1

    goto :goto_1

    :sswitch_2
    new-array v6, v10, [I

    fill-array-data v6, :array_2

    goto :goto_1

    :sswitch_3
    new-array v6, v11, [I

    aput v12, v6, v8

    goto :goto_1

    :sswitch_4
    new-array v6, v10, [I

    fill-array-data v6, :array_3

    goto :goto_1

    :sswitch_5
    new-array v6, v10, [I

    fill-array-data v6, :array_4

    goto :goto_1

    :sswitch_6
    new-array v6, v10, [I

    fill-array-data v6, :array_5

    goto :goto_1

    :sswitch_7
    new-array v6, v10, [I

    fill-array-data v6, :array_6

    goto :goto_1

    :sswitch_8
    new-array v6, v10, [I

    fill-array-data v6, :array_7

    goto :goto_1

    :sswitch_9
    new-array v6, v10, [I

    fill-array-data v6, :array_8

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v4, 0x1b93

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_2
    array-length v9, v6

    if-ge v2, v9, :cond_2

    aget v3, v6, v2

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "treeIDs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    array-length v9, v6

    invoke-static {v6, v9}, Lcom/baidu/speech/easr/easrJni;->bdeasrStartRecognition([II)I

    move-result v5

    if-eq v5, v12, :cond_3

    sget-object v9, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bdeasrStartRecognition error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, v8, v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->generateEmbeddedErrorNumber(II)I

    move-result v4

    goto/16 :goto_0

    :cond_3
    sget-object v9, Lcom/baidu/speech/easr/EmbeddedASREngine;->logger:Ljava/util/logging/Logger;

    const-string v10, "bdeasrStartRecognition OK"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move v4, v8

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_2
        0x2718 -> :sswitch_0
        0x274c -> :sswitch_3
        0x186ae -> :sswitch_4
        0x186b0 -> :sswitch_5
        0x186b2 -> :sswitch_6
        0x186b3 -> :sswitch_7
        0x186b4 -> :sswitch_8
        0x186b5 -> :sswitch_9
    .end sparse-switch

    :array_0
    .array-data 4
        0x8
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x8
        0xc
    .end array-data

    :array_2
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xe
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x13
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x14
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x15
    .end array-data
.end method

.method public startWakeup()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopRecognizing()I
    .locals 1

    invoke-static {}, Lcom/baidu/speech/easr/easrJni;->bdeasrStopRecognition()I

    move-result v0

    return v0
.end method

.method public stopWakeup()V
    .locals 0

    return-void
.end method
