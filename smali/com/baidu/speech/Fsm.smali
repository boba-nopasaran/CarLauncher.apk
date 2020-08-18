.class Lcom/baidu/speech/Fsm;
.super Ljava/lang/Object;
.source "Fsm.java"


# instance fields
.field private final logger:Ljava/util/logging/Logger;

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private oldStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/speech/Fsm;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/speech/Fsm;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/Fsm;->logger:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final check(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Fsm;->oldStatus:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/baidu/speech/Fsm;->check(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/speech/Fsm;->oldStatus:Ljava/lang/String;

    return-void
.end method

.method public final check(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v8, p0, Lcom/baidu/speech/Fsm;->logger:Ljava/util/logging/Logger;

    const-string v9, "%s -> %s, @0x%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/baidu/speech/Fsm;->map:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v2, p2

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_0

    move-object v0, v7

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "old status: %s, expect %s real status is \'%s\', fail."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-void
.end method
