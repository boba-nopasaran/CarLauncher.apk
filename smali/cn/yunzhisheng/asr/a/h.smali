.class public Lcn/yunzhisheng/asr/a/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "."


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(should|should not|shouldn\'t|ought to|ought not to|oughtn\'t|may|may not|mayn\'t|need|need not|needn\'t|must|must not|mustn\'t|were|were not|weren\'t|could|could not|couldn\'t|will|will not|won\u2019t|are|are not|aren\'t|can|can not|can\'t|have|have not|haven\'t|had|had not|hadn\'t|do|do not|don\'t|did|did not|didn\'t|shall|shall not|shan\'t) (you|we|I|they) .*"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(should|should not|shouldn\'t|ought to|ought not to|oughtn\'t|may|may not|mayn\'t|need|need not|needn\'t|must|must not|mustn\'t|were|were not|weren\'t|could|could not|couldn\'t|will|will not|won\u2019t|are|are not|aren\'t|can|can not|can\'t|have|have not|haven\'t|had|had not|hadn\'t|do|do not|don\'t|did|did not|didn\'t|shall|shall not|shan\'t) (you|we|I|they)$"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(am|am not|ain\'t) (i) .*"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(am|am not|ain\'t) (i)$"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(was|was not|wasn\'t|is|is not|isn\'t|has|has not|hasn\'t|can|can not|can\'t|does|does not|doesn\'t|did|did not|didn\'t|had|had not|hadn\'t) (it|he|she) .*"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(was|was not|wasn\'t|is|is not|isn\'t|has|has not|hasn\'t|can|can not|can\'t|does|does not|doesn\'t|did|did not|didn\'t|had|had not|hadn\'t) (it|he|she)$"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "^(has|has not|hasn\'t|can|can not|can\'t|does|does not|doesn\'t|did|did not|didn\'t|had|had not|hadn\'t) "

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "^(has|has not|hasn\'t|can|can not|can\'t|does|does not|doesn\'t|did|did not|didn\'t|had|had not|hadn\'t) (that) "

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "^(who|when|what|where|which|how|why|how much|how many|how long|how old|what\'s|what is) "

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "why|how much|how many|how long|how old$"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(who|when|what|where|which|how|why|how much|how many|how long|how old|what\'s) (do|did|is|hava|had|had not) .*"

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    const-string v1, "(who|when|what|where|which|how|why|how much|how many|how long|how old|what\'s) (do|did|is|hava|had|had not) "

    invoke-static {v1}, Lcn/yunzhisheng/asr/a/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/yunzhisheng/asr/a/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "."

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
