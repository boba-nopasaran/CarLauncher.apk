.class public Lcn/yunzhisheng/tts/online/k;
.super Lcn/yunzhisheng/tts/online/h;


# static fields
.field public static final b:Ljava/lang/String; = "TTSBaseThread"


# instance fields
.field private volatile c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/h;-><init>()V

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/k;->c:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/k;->d:Z

    iput-boolean p1, p0, Lcn/yunzhisheng/tts/online/k;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/tts/online/k;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/tts/online/k;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/k;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/tts/online/k;->d:Z

    return v0
.end method
