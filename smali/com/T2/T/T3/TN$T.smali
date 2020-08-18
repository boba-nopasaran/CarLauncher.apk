.class public Lcom/T2/T/T3/TN$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# static fields
.field public static final T:Lcom/T2/T/T3/T/T3;


# instance fields
.field private T0:Lcom/T2/T/T3/TN/T3;

.field private T2:I

.field private T3:Landroid/content/Context;

.field private T7:I

.field private TB:I

.field private TF:Z

.field private TG:Ljava/util/concurrent/Executor;

.field private TH:Lcom/T2/T/T/T/T3/T;

.field private TJ:I

.field private TL:Lcom/T2/T/T/T/T;

.field private TN:I

.field private TO:J

.field private TP:Z

.field private TQ:Lcom/T2/T/T/T3/T;

.field private TR:Z

.field private TW:Z

.field private Tc:Lcom/T2/T/T3/T3/T3;

.field private Te:I

.field private Tk:Lcom/T2/T/T3/T3;

.field private Tn:Ljava/util/concurrent/Executor;

.field private To:I

.field private Tr:Lcom/T2/T/T3/T/T3;

.field private Tw:I

.field private Ty:Lcom/T2/T/T3/Tw/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/T2/T/T3/T/T3;->T:Lcom/T2/T/T3/T/T3;

    sput-object v0, Lcom/T2/T/T3/TN$T;->T:Lcom/T2/T/T3/T/T3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/T2/T/T3/TN$T;->T2:I

    iput v2, p0, Lcom/T2/T/T3/TN$T;->TN:I

    iput v2, p0, Lcom/T2/T/T3/TN$T;->Te:I

    iput v2, p0, Lcom/T2/T/T3/TN$T;->Tw:I

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->Ty:Lcom/T2/T/T3/Tw/T;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lcom/T2/T/T3/TN$T;->TR:Z

    iput-boolean v2, p0, Lcom/T2/T/T3/TN$T;->TW:Z

    iput v0, p0, Lcom/T2/T/T3/TN$T;->TJ:I

    iput v0, p0, Lcom/T2/T/T3/TN$T;->TB:I

    iput-boolean v2, p0, Lcom/T2/T/T3/TN$T;->TP:Z

    sget-object v0, Lcom/T2/T/T3/TN$T;->T:Lcom/T2/T/T3/T/T3;

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->Tr:Lcom/T2/T/T3/T/T3;

    iput v2, p0, Lcom/T2/T/T3/TN$T;->T7:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/T2/T/T3/TN$T;->TO:J

    iput v2, p0, Lcom/T2/T/T3/TN$T;->To:I

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->TL:Lcom/T2/T/T/T/T;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->TH:Lcom/T2/T/T/T/T3/T;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->T0:Lcom/T2/T/T3/TN/T3;

    iput-object v3, p0, Lcom/T2/T/T3/TN$T;->Tk:Lcom/T2/T/T3/T3;

    iput-boolean v2, p0, Lcom/T2/T/T3/TN$T;->TF:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->T3:Landroid/content/Context;

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T3/TN$T;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T3:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic T2(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->TN:I

    return v0
.end method

.method static synthetic T3(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->T2:I

    return v0
.end method

.method private T3()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/T2/T/T3/TN$T;->TJ:I

    iget v1, p0, Lcom/T2/T/T3/TN$T;->TB:I

    iget-object v2, p0, Lcom/T2/T/T3/TN$T;->Tr:Lcom/T2/T/T3/T/T3;

    invoke-static {v0, v1, v2}, Lcom/T2/T/T3/T;->T(IILcom/T2/T/T3/T/T3;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/T2/T/T3/TN$T;->TJ:I

    iget v1, p0, Lcom/T2/T/T3/TN$T;->TB:I

    iget-object v2, p0, Lcom/T2/T/T3/TN$T;->Tr:Lcom/T2/T/T3/T/T3;

    invoke-static {v0, v1, v2}, Lcom/T2/T/T3/T;->T(IILcom/T2/T/T3/T/T3;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TL:Lcom/T2/T/T/T/T;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TH:Lcom/T2/T/T/T/T3/T;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/T2/T/T3/T;->T3()Lcom/T2/T/T/T/T3/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->TH:Lcom/T2/T/T/T/T3/T;

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T3:Landroid/content/Context;

    iget-object v1, p0, Lcom/T2/T/T3/TN$T;->TH:Lcom/T2/T/T/T/T3/T;

    iget-wide v2, p0, Lcom/T2/T/T3/TN$T;->TO:J

    iget v4, p0, Lcom/T2/T/T3/TN$T;->To:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/T2/T/T3/T;->T(Landroid/content/Context;Lcom/T2/T/T/T/T3/T;JI)Lcom/T2/T/T/T/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->TL:Lcom/T2/T/T/T/T;

    :cond_1
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T3:Landroid/content/Context;

    iget v1, p0, Lcom/T2/T/T3/TN$T;->T7:I

    invoke-static {v0, v1}, Lcom/T2/T/T3/T;->T(Landroid/content/Context;I)Lcom/T2/T/T/T3/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    :cond_2
    iget-boolean v0, p0, Lcom/T2/T/T3/TN$T;->TP:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/T2/T/T/T3/T/T;

    iget-object v1, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    invoke-static {}, Lcom/T2/T/T2/T3;->T()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/T2/T/T/T3/T/T;-><init>(Lcom/T2/T/T/T3/T;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    :cond_3
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T0:Lcom/T2/T/T3/TN/T3;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T3:Landroid/content/Context;

    invoke-static {v0}, Lcom/T2/T/T3/T;->T(Landroid/content/Context;)Lcom/T2/T/T3/TN/T3;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->T0:Lcom/T2/T/T3/TN/T3;

    :cond_4
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tc:Lcom/T2/T/T3/T3/T3;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/T2/T/T3/TN$T;->TF:Z

    invoke-static {v0}, Lcom/T2/T/T3/T;->T(Z)Lcom/T2/T/T3/T3/T3;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->Tc:Lcom/T2/T/T3/T3/T3;

    :cond_5
    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tk:Lcom/T2/T/T3/T3;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/T2/T/T3/T3;->T()Lcom/T2/T/T3/T3;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN$T;->Tk:Lcom/T2/T/T3/T3;

    :cond_6
    return-void

    :cond_7
    iput-boolean v3, p0, Lcom/T2/T/T3/TN$T;->TR:Z

    goto :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/T2/T/T3/TN$T;->TW:Z

    goto :goto_1
.end method

.method static synthetic T7(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T3/T3/T3;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tc:Lcom/T2/T/T3/T3/T3;

    return-object v0
.end method

.method static synthetic TB(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T/T3/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    return-object v0
.end method

.method static synthetic TG(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->TJ:I

    return v0
.end method

.method static synthetic TJ(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T/T/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TL:Lcom/T2/T/T/T/T;

    return-object v0
.end method

.method static synthetic TN(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->Te:I

    return v0
.end method

.method static synthetic TO(Lcom/T2/T/T3/TN$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/TN$T;->TR:Z

    return v0
.end method

.method static synthetic TP(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T3/T3;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tk:Lcom/T2/T/T3/T3;

    return-object v0
.end method

.method static synthetic TQ(Lcom/T2/T/T3/TN$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/TN$T;->TF:Z

    return v0
.end method

.method static synthetic TR(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->TB:I

    return v0
.end method

.method static synthetic TW(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T3/T/T3;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tr:Lcom/T2/T/T3/T/T3;

    return-object v0
.end method

.method static synthetic Te(Lcom/T2/T/T3/TN$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/TN$T;->Tw:I

    return v0
.end method

.method static synthetic Tn(Lcom/T2/T/T3/TN$T;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic To(Lcom/T2/T/T3/TN$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/TN$T;->TW:Z

    return v0
.end method

.method static synthetic Tr(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T3/TN/T3;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->T0:Lcom/T2/T/T3/TN/T3;

    return-object v0
.end method

.method static synthetic Tw(Lcom/T2/T/T3/TN$T;)Lcom/T2/T/T3/Tw/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Ty:Lcom/T2/T/T3/Tw/T;

    return-object v0
.end method

.method static synthetic Ty(Lcom/T2/T/T3/TN$T;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public T(I)Lcom/T2/T/T3/TN$T;
    .locals 2

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lcom/T2/T/T3/TN$T;->TJ:I

    return-object p0
.end method

.method public T(Lcom/T2/T/T/T3/T;)Lcom/T2/T/T3/TN$T;
    .locals 2

    iget v0, p0, Lcom/T2/T/T3/TN$T;->T7:I

    if-eqz v0, :cond_0

    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/T2/T/T3/TN$T;->TQ:Lcom/T2/T/T/T3/T;

    return-object p0
.end method

.method public T(Lcom/T2/T/T3/T/T3;)Lcom/T2/T/T3/TN$T;
    .locals 2

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/T2/T/T3/TN$T;->Tr:Lcom/T2/T/T3/T/T3;

    return-object p0
.end method

.method public T(Lcom/T2/T/T3/T3;)Lcom/T2/T/T3/TN$T;
    .locals 0

    iput-object p1, p0, Lcom/T2/T/T3/TN$T;->Tk:Lcom/T2/T/T3/T3;

    return-object p0
.end method

.method public T(Lcom/T2/T/T3/TN/T3;)Lcom/T2/T/T3/TN$T;
    .locals 0

    iput-object p1, p0, Lcom/T2/T/T3/TN$T;->T0:Lcom/T2/T/T3/TN/T3;

    return-object p0
.end method

.method public T()Lcom/T2/T/T3/TN;
    .locals 2

    invoke-direct {p0}, Lcom/T2/T/T3/TN$T;->T3()V

    new-instance v0, Lcom/T2/T/T3/TN;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/T2/T/T3/TN;-><init>(Lcom/T2/T/T3/TN$T;Lcom/T2/T/T3/TN;)V

    return-object v0
.end method

.method public T3(I)Lcom/T2/T/T3/TN$T;
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->Tn:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/T2/T/T3/TN$T;->TG:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/T2/T/T2/T;->T2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-ge p1, v2, :cond_2

    iput v2, p0, Lcom/T2/T/T3/TN$T;->TB:I

    :goto_0
    return-object p0

    :cond_2
    if-le p1, v3, :cond_3

    iput v3, p0, Lcom/T2/T/T3/TN$T;->TB:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/T2/T/T3/TN$T;->TB:I

    goto :goto_0
.end method
