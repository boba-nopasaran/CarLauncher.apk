.class public Lcn/yunzhisheng/asr/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected final c:Ljava/util/regex/Pattern;

.field protected final d:Ljava/util/regex/Pattern;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Z

.field protected m:Ljava/util/regex/Pattern;

.field protected n:Ljava/util/regex/Pattern;

.field protected o:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    const-string v0, "([^a-z]) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->c:Ljava/util/regex/Pattern;

    const-string v0, "([a-z])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->d:Ljava/util/regex/Pattern;

    const-string v0, "\uff0c"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    const-string v0, "\uff0c\uff0c"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->f:Ljava/lang/String;

    const-string v0, "\uff1f"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->g:Ljava/lang/String;

    const-string v0, "\u3002"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->h:Ljava/lang/String;

    const-string v0, "([\u5417\u5462]$)|(^(\u8bf7\u95ee)|(\u4e3a(\u4ec0\u4e48|\u5565))|(\u600e\u4e48))"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->m:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->n:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->o:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/a/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " "

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    return-void
.end method

.method public b()Lcn/yunzhisheng/asr/a/b;
    .locals 1

    new-instance v0, Lcn/yunzhisheng/asr/a/b;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/b;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "<s>|<unk>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "(</s>)+|<SIL>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/yunzhisheng/asr/a/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    return v0
.end method

.method public c()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/b;->b()Lcn/yunzhisheng/asr/a/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, ""

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, ""

    iput-object v1, p0, Lcn/yunzhisheng/asr/a/b;->a:Ljava/lang/String;

    :cond_6
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/a/b;->l:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/yunzhisheng/asr/a/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a/b;->h:Ljava/lang/String;

    goto :goto_0
.end method
