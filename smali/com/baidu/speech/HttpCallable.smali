.class final Lcom/baidu/speech/HttpCallable;
.super Ljava/lang/Object;
.source "HttpCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/HttpCallable$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/baidu/speech/HttpCallable$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERR_NO_0:I = 0x0

.field private static final ERR_NO_3001:I = -0xbb9

.field private static final ERR_NO_3002:I = -0xbba

.field private static final ERR_NO_3003:I = -0xbbb

.field private static final ERR_NO_3004:I = -0xbbc

.field private static final ERR_NO_3005:I = -0xbbd

.field private static final ERR_NO_3006:I = -0xbbe

.field private static final PARAMS_BASIC:Ljava/lang/String; = "app, idx, rtn, glb, pdt, fun, ptc, enc"

.field private static final PARAMS_KEY_LEFT:Ljava/lang/String; = "decoder-server."

.field private static final PARAMS_PKG_FIRST_NLU_NO:Ljava/lang/String; = "app, idx, rtn, glb, pdt, fun, ptc, enc, uid, ver, pfm"

.field private static final PARAMS_PKG_FIRST_NLU_YES:Ljava/lang/String; = "app, idx, rtn, glb, pdt, fun, ptc, enc, uid, ver, pfm"

.field private static final PARAMS_PKG_FIRST_OPTIONAL:Ljava/lang/String; = "tok, city_id, pam, prop_list, bua, cok, pu, frm, rsv"

.field private static final TAG:Ljava/lang/String; = "HttpCallable"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final block:[B

.field private final debug:Z

.field private debugOutput:Ljava/io/BufferedWriter;

.field private final glb:Ljava/lang/String;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final idx:I

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestTime:J

.field private final tid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HttpCallable"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/HttpCallable;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILorg/apache/http/client/HttpClient;[BLjava/util/Map;Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/http/client/HttpClient;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    iput p1, p0, Lcom/baidu/speech/HttpCallable;->tid:I

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/baidu/speech/HttpCallable;->block:[B

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    move/from16 v0, p6

    iput v0, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v7, "decoder-server.glb"

    move-object/from16 v0, p5

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "decoder-server.idx"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Lcom/baidu/speech/HttpCallable;->params:Ljava/util/Map;

    iput-object p2, p0, Lcom/baidu/speech/HttpCallable;->httpClient:Lorg/apache/http/client/HttpClient;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "debug.debug"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/baidu/speech/HttpCallable;->debug:Z

    const-string v7, "debug.output-dir"

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "basic.runtime-name"

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "basic.task-name"

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-boolean v7, p0, Lcom/baidu/speech/HttpCallable;->debug:Z

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_idx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".http.txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    if-eqz v7, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v8, "==== TASK ====\r\n"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v8, "size\uff1a\t %s\r\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v8, "glb\uff1a\t%s\r\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v8, "idx\uff1a\t%s\r\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v8, "\r\n"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "open debug failed"

    invoke-direct {v7, v8, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v2

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "write log failed"

    invoke-direct {v7, v8, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private checkData(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    const-string v6, "\"err_no\": ?(-?\\d{1,5})?"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\"error\": ?\"(.*?)\""

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#4, Server sends error status., reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#4, Server sends error status., parse json failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_0
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#4, Server sends error status., reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_1
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#7, No recognition result matched., reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xbbe -> :sswitch_1
        -0xbbd -> :sswitch_1
        -0xbbc -> :sswitch_0
        -0xbbb -> :sswitch_0
        -0xbba -> :sswitch_0
        -0xbb9 -> :sswitch_0
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method private static gZip([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private generateParams(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v13, 0x1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x131

    const-string v11, "decoder-server.idx"

    invoke-direct {p0, p1, v11}, Lcom/baidu/speech/HttpCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v11, "decoder-server.ptc"

    invoke-direct {p0, p1, v11}, Lcom/baidu/speech/HttpCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ne v13, v11, :cond_1

    const/16 v11, 0x131

    if-ne v11, v7, :cond_0

    const-string v8, "app, idx, rtn, glb, pdt, fun, ptc, enc, uid, ver, pfm"

    :goto_0
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decoder-server."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/baidu/speech/HttpCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v8, "app, idx, rtn, glb, pdt, fun, ptc, enc, uid, ver, pfm"

    goto :goto_0

    :cond_1
    const-string v8, "app, idx, rtn, glb, pdt, fun, ptc, enc"

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ne v13, v11, :cond_4

    const-string v11, "tok, city_id, pam, prop_list, bua, cok, pu, frm, rsv"

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decoder-server."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v6
.end method

.method private getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public _call(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/speech/HttpCallable;->requestTime:J

    iget-object v4, p0, Lcom/baidu/speech/HttpCallable;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v5, Lcom/baidu/speech/HttpCallable$1;

    invoke-direct {v5, p0}, Lcom/baidu/speech/HttpCallable$1;-><init>(Lcom/baidu/speech/HttpCallable;)V

    invoke-interface {v4, p1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/baidu/speech/HttpCallable;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "----request success, %s, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v5, "--------\r\nRESPONSE INFO\r\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    :goto_0
    :try_start_3
    iget-object v5, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v6, "%s\r\n"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez v1, :cond_1

    move-object v4, v0

    :goto_1
    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :try_start_4
    invoke-direct {p0, v0}, Lcom/baidu/speech/HttpCallable;->checkData(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v0

    :catch_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v5, "warn\uff1aresponse content is not json"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_6
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "write log failed"

    invoke-direct {v4, v5, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1, Network operation timed out., asr failed, socket timeout, sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    const/4 v4, 0x4

    :try_start_7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v4

    goto :goto_1

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1, Network operation timed out., asr failed, connect timeout, sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#2, Other network related errors., asr failed, sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#2, Other network related errors., asr failed, sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->glb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/speech/HttpCallable;->idx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public call()Lcom/baidu/speech/HttpCallable$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/speech/HttpCallable;->readyRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/baidu/speech/HttpCallable;->_call(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/speech/HttpCallable$Result;

    iget v7, p0, Lcom/baidu/speech/HttpCallable;->tid:I

    invoke-direct {v6, v7, v5}, Lcom/baidu/speech/HttpCallable$Result;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    return-object v6

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :try_start_2
    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v7, "--------\r\nRESPONSE INFO\r\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    const-string v7, "%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    sget-object v6, Lcom/baidu/speech/HttpCallable;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "POST %s\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "write log failed"

    invoke-direct {v6, v7, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/speech/HttpCallable;->call()Lcom/baidu/speech/HttpCallable$Result;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 4

    iget-wide v0, p0, Lcom/baidu/speech/HttpCallable;->requestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/speech/HttpCallable;->requestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readyRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->params:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/speech/HttpCallable;->generateParams(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v20, Lcom/baidu/speech/HttpCallable;->logger:Ljava/util/logging/Logger;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "request: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-string v20, "utf-8"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/baidu/speech/HttpCallable;->gZip([B)[B

    move-result-object v9

    const/16 v20, 0x0

    const/16 v21, 0x75

    aput-byte v21, v9, v20

    const/16 v20, 0x1

    const/16 v21, 0x7b

    aput-byte v21, v9, v20

    const-string v3, "--BD**VR++LIB"

    const-string v20, "\r\n----BD**VR++LIB\r\n"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const-string v20, "\r\n----BD**VR++LIB--\r\n"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->block:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v20, "multipart/form-data; boundary=--BD**VR++LIB"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->params:Ljava/util/Map;

    move-object/from16 v20, v0

    const-string v21, "decoder-server.url"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/HttpCallable;->getParamOrThrow(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/speech/HttpCallable;->debug:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "can\'t create HttpCallable instance"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "debug-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v15, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    move-object/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v20, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    move-object/from16 v20, v0

    const-string v21, "--------\r\nREQUEST INFO\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    move-object/from16 v20, v0

    const-string v21, "%s\uff1a\t %s\r\n"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->getMethod()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    move-object/from16 v20, v0

    const-string v21, "%s\r\n"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/HttpCallable;->debugOutput:Ljava/io/BufferedWriter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object v15

    :catch_1
    move-exception v6

    :try_start_3
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    const-string v21, "write log failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
