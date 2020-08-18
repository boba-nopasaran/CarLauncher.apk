.class public Lcn/yunzhisheng/token/UscTokenWrap;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x0

.field static final b:I = -0x1


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "usc_tts"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    return-void
.end method

.method private native createTokenHandle(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native genTokenWithTS(J)Ljava/lang/String;
.end method

.method private native releaseTokenHandle(J)I
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcn/yunzhisheng/token/UscTokenWrap;->b()I

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/token/UscTokenWrap;->createTokenHandle(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    iget-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/token/UscTokenWrap;->genTokenWithTS(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()I
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/token/UscTokenWrap;->releaseTokenHandle(J)I

    iput-wide v2, p0, Lcn/yunzhisheng/token/UscTokenWrap;->c:J

    const/4 v0, 0x0

    goto :goto_0
.end method
