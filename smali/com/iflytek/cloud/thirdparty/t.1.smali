.class public Lcom/iflytek/cloud/thirdparty/t;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field public a:Lcom/iflytek/cloud/thirdparty/U$a;

.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/cloud/thirdparty/U;

.field private d:Lcom/iflytek/cloud/RequestListener;

.field private e:Lcom/iflytek/cloud/thirdparty/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://wke.openspeech.cn/wakeup/"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/t;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Lcom/iflytek/cloud/RequestListener;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Lcom/iflytek/cloud/thirdparty/Q;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/t$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/t$1;-><init>(Lcom/iflytek/cloud/thirdparty/t;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->a:Lcom/iflytek/cloud/thirdparty/U$a;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/t;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/Q;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Lcom/iflytek/cloud/thirdparty/Q;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/U;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/U;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/t;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-class v1, Lcom/iflytek/cloud/thirdparty/t;

    monitor-enter v1

    :try_start_0
    const-string v2, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/t;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/t;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Lcom/iflytek/cloud/thirdparty/t;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/t;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v2, "resver"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unkown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "resver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unkown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "appid"

    invoke-static {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "resid"

    invoke-static {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "restype"

    invoke-static {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "wakelist"

    invoke-static {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "restime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "restime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/t;)Lcom/iflytek/cloud/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Lcom/iflytek/cloud/RequestListener;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIvwResInfo resPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/iflytek/msc/MSC;->QIVWGetResInfo([B[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read ivw resoure error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "get res info error, unsatisfiedlinkerror"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "get res info error"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resInfo:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    iget-object v1, v1, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/iflytek/cloud/thirdparty/t;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "resver"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unkown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "user ivw resver unkown"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "resver"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unkown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "resver"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "cfg ivw resver unkown or unequal"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "appid"

    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "resid"

    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "restype"

    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wakelist"

    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "restime"

    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "respath"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v2, "athinfo"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "appid"

    const-string v5, "appid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "resid"

    const-string v5, "resid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "restype"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "restype"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "d"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "uid"

    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "expiredate"

    const-string v5, "expiredate"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "ivwword"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "words"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v2, ""

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "threshold"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wakelist"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "resver"

    const-string v2, "resver"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    const-string v1, "restime"

    const-string v2, "restime"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v1, ""

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    const-string v2, "ver_ivw"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "wakever"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "resver"

    const-string v2, "unkown"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    const-string v1, "compose resinfo error"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    const-string v1, "restime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x4e2c

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->e:Lcom/iflytek/cloud/thirdparty/Q;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/Q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Lcom/iflytek/cloud/RequestListener;)I
    .locals 4

    if-nez p1, :cond_0

    const/16 v0, 0x4e2e

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Lcom/iflytek/cloud/RequestListener;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "header"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/t;->b:Landroid/content/Context;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v3}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/ah;->d(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/P;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/U;->a(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    sget-object v2, Lcom/iflytek/cloud/thirdparty/t;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->a:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/thirdparty/U$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e23

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/U;->a()V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->c:Lcom/iflytek/cloud/thirdparty/U;

    :cond_0
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/t;->d:Lcom/iflytek/cloud/RequestListener;

    return-void
.end method
