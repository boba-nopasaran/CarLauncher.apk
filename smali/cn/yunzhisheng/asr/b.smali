.class public Lcn/yunzhisheng/asr/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1f40

.field public static final b:I = 0x3e80

.field public static final c:I = 0x13880

.field public static final d:Ljava/lang/String; = "far"

.field public static final e:Ljava/lang/String; = "near"

.field public static final f:Ljava/lang/String; = "8k"

.field public static final g:Ljava/lang/String; = "16k"

.field public static final h:Ljava/lang/String; = "general"

.field public static final i:Ljava/lang/String; = "poi"

.field public static final j:Ljava/lang/String; = "food"

.field public static final k:Ljava/lang/String; = "medical"

.field public static final l:Ljava/lang/String; = "movietv"

.field public static final m:Ljava/lang/String; = "english"

.field public static final n:Ljava/lang/String; = "cantonese"

.field public static final o:Ljava/lang/String; = "chinese"

.field private static final p:Ljava/lang/String; = "modelType"

.field private static final q:Ljava/lang/String; = "voiceField"

.field private static final r:Ljava/lang/String; = "language"

.field private static final s:Ljava/lang/String; = "sampleRate"


# instance fields
.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/StringBuffer;

.field private v:Z

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x3e80

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/b;->v:Z

    iput v2, p0, Lcn/yunzhisheng/asr/b;->w:I

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/b;->x:Z

    const-string v0, "near"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcn/yunzhisheng/asr/b;->a(I)Z

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/b;->v:Z

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/b;->v:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/b;->v:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    const-string v1, "language"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/yunzhisheng/asr/b;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/b;->x:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/b;->x:Z

    return v0
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setSampleRate param error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/b;->b()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/b;->d()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/b;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_1
        0x13880 -> :sswitch_2
    .end sparse-switch
.end method

.method public b()V
    .locals 1

    const-string v0, "8k"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/b;->d(Ljava/lang/String;)V

    const/16 v0, 0x1f40

    iput v0, p0, Lcn/yunzhisheng/asr/b;->w:I

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    const-string v1, "modelType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/yunzhisheng/asr/b;->g()V

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    const-string v0, "8k"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/b;->d(Ljava/lang/String;)V

    const v0, 0x13880

    iput v0, p0, Lcn/yunzhisheng/asr/b;->w:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    const-string v1, "voiceField"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/yunzhisheng/asr/b;->g()V

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "16k"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/b;->d(Ljava/lang/String;)V

    const/16 v0, 0x3e80

    iput v0, p0, Lcn/yunzhisheng/asr/b;->w:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    const-string v1, "sampleRate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcn/yunzhisheng/asr/b;->g()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/b;->w:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcn/yunzhisheng/asr/b;->h()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
