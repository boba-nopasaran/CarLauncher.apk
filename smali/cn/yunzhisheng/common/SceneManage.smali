.class public Lcn/yunzhisheng/common/SceneManage;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field public static userDataServer:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/yunzhisheng/common/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/yunzhisheng/asr/RecognizerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcn/yunzhisheng/common/SceneManage;->a:I

    const-string v0, "http://10.30.2.13:8089/data-process-service/rtc"

    sput-object v0, Lcn/yunzhisheng/common/SceneManage;->userDataServer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    return-void
.end method

.method private a()I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcn/yunzhisheng/common/SceneManage;->a:I

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcn/yunzhisheng/common/SceneManage;->a(I)Lcn/yunzhisheng/common/Scene;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(I)Lcn/yunzhisheng/common/Scene;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yunzhisheng/common/Scene;

    invoke-virtual {v0}, Lcn/yunzhisheng/common/Scene;->getSceneId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/common/SceneManage;->findScene(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/yunzhisheng/common/SceneManage;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Lcn/yunzhisheng/common/Scene;

    invoke-direct {v0, v1, p1}, Lcn/yunzhisheng/common/Scene;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public findScene(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yunzhisheng/common/Scene;

    invoke-virtual {v0}, Lcn/yunzhisheng/common/Scene;->getSceneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getItemByIndex(I)Lcn/yunzhisheng/common/Scene;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yunzhisheng/common/Scene;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSceneCount()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Lcn/yunzhisheng/common/Scene;)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yunzhisheng/common/Scene;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/common/SceneManage;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeByName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/common/SceneManage;->findScene(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/common/SceneManage;->remove(Lcn/yunzhisheng/common/Scene;)V

    :cond_0
    return-void
.end method

.method public setParams(Lcn/yunzhisheng/asr/RecognizerParams;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/common/SceneManage;->c:Lcn/yunzhisheng/asr/RecognizerParams;

    return-void
.end method

.method public setSceneServer(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data-process-service/rtc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/common/SceneManage;->userDataServer:Ljava/lang/String;

    return-void
.end method

.method public uploadSceneData(Ljava/lang/String;Ljava/util/List;Lcn/yunzhisheng/common/UploadSceneDataListener;)Lcn/yunzhisheng/common/UploadSceneTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/yunzhisheng/common/UploadSceneDataListener;",
            ")",
            "Lcn/yunzhisheng/common/UploadSceneTask;"
        }
    .end annotation

    const v4, -0xf626

    new-instance v1, Lcn/yunzhisheng/common/UploadSceneTask;

    invoke-direct {v1}, Lcn/yunzhisheng/common/UploadSceneTask;-><init>()V

    sget-object v0, Lcn/yunzhisheng/common/SceneManage;->userDataServer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/common/UploadSceneTask;->setServer(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/common/SceneManage;->findScene(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;

    move-result-object v0

    new-instance v2, Lcn/yunzhisheng/asr/c;

    invoke-direct {v2}, Lcn/yunzhisheng/asr/c;-><init>()V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/yunzhisheng/common/SceneManage;->getSceneCount()I

    move-result v0

    sget v3, Lcn/yunzhisheng/common/SceneManage;->a:I

    if-lt v0, v3, :cond_0

    invoke-virtual {v2, v4}, Lcn/yunzhisheng/asr/c;->d(I)Lcn/yunzhisheng/common/USCError;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcn/yunzhisheng/common/UploadSceneDataListener;->onUploadSceneDataEnd(Lcn/yunzhisheng/common/UploadSceneTask;Lcn/yunzhisheng/common/USCError;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcn/yunzhisheng/common/SceneManage;->a(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Lcn/yunzhisheng/asr/c;->d(I)Lcn/yunzhisheng/common/USCError;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcn/yunzhisheng/common/UploadSceneDataListener;->onUploadSceneDataEnd(Lcn/yunzhisheng/common/UploadSceneTask;Lcn/yunzhisheng/common/USCError;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcn/yunzhisheng/common/SceneManage;->c:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/RecognizerParams;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcn/yunzhisheng/common/UploadSceneTask;->a(Ljava/lang/String;Lcn/yunzhisheng/common/Scene;Ljava/util/List;)V

    invoke-virtual {v1, p3}, Lcn/yunzhisheng/common/UploadSceneTask;->a(Lcn/yunzhisheng/common/UploadSceneDataListener;)V

    move-object v0, v1

    goto :goto_0
.end method
