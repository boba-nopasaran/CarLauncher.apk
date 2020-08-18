.class public Lcn/yunzhisheng/utils/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static k:Z = false

.field public static final l:Ljava/lang/String; = "USC"

.field public static m:I

.field private static n:Lcn/yunzhisheng/utils/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcn/yunzhisheng/utils/c;->n:Lcn/yunzhisheng/utils/g;

    sput-boolean v1, Lcn/yunzhisheng/utils/c;->k:Z

    sput v1, Lcn/yunzhisheng/utils/c;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/yunzhisheng/utils/g;)V
    .locals 0

    sput-object p0, Lcn/yunzhisheng/utils/c;->n:Lcn/yunzhisheng/utils/g;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "USC"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/yunzhisheng/utils/c;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/yunzhisheng/utils/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/yunzhisheng/utils/c;->n:Lcn/yunzhisheng/utils/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/utils/c;->n:Lcn/yunzhisheng/utils/g;

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p0}, Lcn/yunzhisheng/utils/g;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
