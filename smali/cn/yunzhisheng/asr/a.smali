.class public Lcn/yunzhisheng/asr/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lcn/yunzhisheng/asr/a/m;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "asr_start_beep.mp3"

    sput-object v0, Lcn/yunzhisheng/asr/a;->a:Ljava/lang/String;

    const-string v0, "wake_up_success.wav"

    sput-object v0, Lcn/yunzhisheng/asr/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcn/yunzhisheng/asr/a/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/a/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcn/yunzhisheng/asr/a/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a/m;->d()V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcn/yunzhisheng/asr/a/m;

    invoke-direct {v0, p1}, Lcn/yunzhisheng/asr/a/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcn/yunzhisheng/asr/a/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/yunzhisheng/asr/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/yunzhisheng/asr/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a;->d:Ljava/lang/String;

    sget-object v2, Lcn/yunzhisheng/asr/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcn/yunzhisheng/asr/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
