.class public Lcom/baidu/speech/easr/stat/StatThread;
.super Ljava/lang/Thread;
.source "StatThread.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/baidu/speech/easr/stat/StatThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/speech/easr/stat/StatThread;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/speech/easr/stat/StatThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/speech/easr/stat/StatThread;->mAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/speech/easr/stat/StatHelper;->uploadStatDatas(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/easr/stat/StatThread;->mContext:Landroid/content/Context;

    return-void
.end method
