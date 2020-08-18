.class public Lcom/baidu/speech/easr/stat/StatHelper;
.super Ljava/lang/Object;
.source "StatHelper.java"


# static fields
.field private static final EACH_TIME_UPLOAD_RESULT_COUNT:I = 0x1f4

.field private static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_APP_SIGNATURE:Ljava/lang/String; = "app_signature"

.field private static final KEY_CUID:Ljava/lang/String; = "wise_cuid"

.field private static final KEY_NET_TYPE:Ljava/lang/String; = "net_type"

.field private static final KEY_OS:Ljava/lang/String; = "os"

.field private static final KEY_PLATFORM:Ljava/lang/String; = "platform"

.field private static final KEY_RECOGNITION_RESULT:Ljava/lang/String; = "recog_results"

.field private static final KEY_RECOGNITION_RESULT_CMD_ID:Ljava/lang/String; = "cmd_id"

.field private static final KEY_RECOGNITION_RESULT_CMD_TYPE:Ljava/lang/String; = "cmd_type"

.field private static final KEY_RECOGNITION_RESULT_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final KEY_RECOGNITION_RESULT_TIME:Ljava/lang/String; = "time"

.field private static final KEY_RECOGNITION_RESULT_VOICE_TO_TEXT:Ljava/lang/String; = "voice_to_text_result"

.field private static final KEY_RESPONSE_ERROR_CODE:Ljava/lang/String; = "errno"

.field private static final KEY_RESPONSE_UPLOAD_DATA:Ljava/lang/String; = "data"

.field private static final KEY_RESPONSE_UPLOAD_PERIOD:Ljava/lang/String; = "secs"

.field private static final KEY_SCREEN:Ljava/lang/String; = "screen"

.field private static final KEY_SDK_NAME:Ljava/lang/String; = "sdk_name"

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final TAG:Ljava/lang/String; = "StatHelper"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StatHelper"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPeriodUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://uil.cbs.baidu.com/voiceLog/getconfig?"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildStatUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "wise_cuid"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdk_version"

    invoke-static {}, Lcom/baidu/speech/easr/Utility;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_name"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "platform"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "os"

    invoke-static {}, Lcom/baidu/speech/easr/Utility;->getOS()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "net_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getNetType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "screen"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdk_name"

    invoke-static {}, Lcom/baidu/speech/easr/Utility;->getSdkName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_signature"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://yuyin.baidu.com/voice?osname=voiceopen&action=usereventflow&"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static doUploadStatData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20

    const/4 v15, 0x0

    invoke-static/range {p0 .. p0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    move-result-object v11

    const/4 v5, 0x0

    monitor-enter v11

    :try_start_0
    invoke-virtual {v11}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v11}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->querySynthesizeResult()Landroid/database/Cursor;

    move-result-object v5

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v14, v0, :cond_5

    const/4 v4, 0x0

    sget-object v17, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cursor.getCount: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x1f4

    move/from16 v17, v0

    if-nez v17, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    div-int/lit16 v4, v0, 0x1f4

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_5

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    mul-int/lit16 v0, v8, 0x1f4

    move/from16 v17, v0

    const/16 v18, 0x1f4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v5, v0, v1}, Lcom/baidu/speech/easr/stat/StatHelper;->getRecogResult(Lorg/json/JSONObject;Landroid/database/Cursor;II)Ljava/util/List;

    move-result-object v9

    sget-object v17, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "jsonObj all: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/speech/easr/Utility;->encryptGZIP(Ljava/lang/String;)[B

    move-result-object v6

    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    const/16 v17, 0x0

    const/16 v18, 0x75

    aput-byte v18, v6, v17

    const/16 v17, 0x1

    const/16 v18, 0x7b

    aput-byte v18, v6, v17

    :cond_0
    invoke-static {v6}, Lcom/baidu/speech/easr/Utility;->encryptBASE64([B)Ljava/lang/String;

    move-result-object v12

    sget-object v17, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " postContent:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12}, Lcom/baidu/speech/easr/stat/StatHelper;->updateDataByHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    monitor-enter v11

    :try_start_2
    invoke-virtual {v11}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v11, v9}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->deleteSynthesizeResult(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/baidu/speech/easr/Utility;->setLastUploadStatTime(Landroid/content/Context;J)V

    const/4 v15, 0x1

    :cond_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    :try_start_3
    monitor-exit v11

    move/from16 v16, v15

    :goto_2
    return v16

    :catchall_0
    move-exception v17

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    :catch_0
    move-exception v7

    move/from16 v16, v15

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1f4

    move/from16 v17, v0

    add-int/lit8 v4, v17, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v17

    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    move/from16 v16, v15

    goto :goto_2
.end method

.method private static getPostData(Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "records"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private static getRecogResult(Lorg/json/JSONObject;Landroid/database/Cursor;II)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/database/Cursor;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    :goto_1
    if-eqz v9, :cond_2

    const-string v15, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v15, "time"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "code"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v15, "cmd_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v15, "cmd_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v15, "result"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v15, "time"

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v15, "error_code"

    invoke-virtual {v11, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v6, :cond_1

    const-string v15, "cmd_type"

    invoke-virtual {v11, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v15, "cmd_id"

    invoke-virtual {v11, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v15, "voice_to_text_result"

    invoke-virtual {v11, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p3

    if-lt v4, v0, :cond_3

    :cond_2
    :try_start_1
    const-string v15, "recog_results"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    sget-object v15, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "je:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    sget-object v15, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "je:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v5

    sget-object v15, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "e "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    goto/16 :goto_1
.end method

.method public static getStatHeader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "wise_cuid"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_version"

    invoke-static {}, Lcom/baidu/speech/easr/Utility;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_name"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-static {}, Lcom/baidu/speech/easr/Utility;->getOS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "net_type"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getNetType(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "appid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "screen"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_signature"

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatHeader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/speech/easr/Utility;->encryptBASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStatHeader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStatPeriod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 15

    const/4 v10, 0x0

    const-string v12, ""

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const/16 v13, 0x1f40

    invoke-static {v12, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const/16 v13, 0x1f40

    invoke-static {v12, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static/range {p0 .. p1}, Lcom/baidu/speech/easr/stat/StatHelper;->buildPeriodUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response.getStatusLine().getStatusCode():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_1

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "entity:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v12, "secs"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "period:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    mul-int/lit16 v8, v8, 0x3e8

    if-lez v8, :cond_0

    invoke-static {p0}, Lcom/baidu/speech/easr/Utility;->getLastDownloadStatPeriod(Landroid/content/Context;)I

    move-result v7

    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "oldPeriod:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    if-eq v8, v7, :cond_0

    invoke-static {p0, v8}, Lcom/baidu/speech/easr/Utility;->setLastDownloadStatPeriod(Landroid/content/Context;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v10, 0x1

    :cond_1
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_1
    return v10

    :catch_0
    move-exception v5

    :try_start_2
    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parse:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    sget-object v12, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parse:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception v12

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12
.end method

.method private static updateDataByHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const/4 v9, 0x0

    const-string v11, ""

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const/16 v12, 0x1f40

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const/16 v12, 0x1f40

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p0, p1}, Lcom/baidu/speech/easr/stat/StatHelper;->buildStatUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/baidu/speech/easr/stat/StatHelper;->getPostData(Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response.getStatusLine().getStatusCode():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    const-string v12, "utf-8"

    invoke-static {v11, v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "entity:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "errno"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "0"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_1
    return v9

    :catch_0
    move-exception v5

    :try_start_2
    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception v11

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v11
.end method

.method public static declared-synchronized uploadStatDatas(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    const-class v12, Lcom/baidu/speech/easr/stat/StatHelper;

    monitor-enter v12

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/speech/easr/Utility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/baidu/speech/easr/Utility;->getLastUploadStatTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Lcom/baidu/speech/easr/Utility;->getLastDownloadStatPeriod(Landroid/content/Context;)I

    move-result v5

    const-wide/32 v8, 0x5265c00

    if-lez v5, :cond_0

    int-to-long v8, v5

    :cond_0
    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lastTime "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", curTime "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lastPeriod "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sub-long v14, v2, v6

    cmp-long v11, v14, v8

    if-gez v11, :cond_2

    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lastTime "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", curTime "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v11, Lcom/baidu/speech/easr/stat/StatHelper;->logger:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lastDate "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\ncurDate "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v12

    return-void

    :cond_2
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/baidu/speech/easr/stat/StatHelper;->doUploadStatData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static/range {p0 .. p1}, Lcom/baidu/speech/easr/stat/StatHelper;->getStatPeriod(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11
.end method
