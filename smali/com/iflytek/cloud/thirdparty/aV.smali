.class public final Lcom/iflytek/cloud/thirdparty/aV;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static final c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v2, 0x1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aV;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aW;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/aW;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/aV;->c:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/iflytek/cloud/thirdparty/aV;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/iflytek/cloud/thirdparty/aV;->c:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/iflytek/cloud/thirdparty/aV;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
