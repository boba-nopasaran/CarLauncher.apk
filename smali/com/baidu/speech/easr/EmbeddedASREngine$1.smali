.class Lcom/baidu/speech/easr/EmbeddedASREngine$1;
.super Ljava/lang/Object;
.source "EmbeddedASREngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/easr/EmbeddedASREngine;->auth(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/easr/EmbeddedASREngine;

.field final synthetic val$appid:Ljava/lang/Integer;

.field final synthetic val$context_ref:Landroid/content/Context;

.field final synthetic val$cuid_ref:Ljava/lang/String;

.field final synthetic val$licensePath_ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/speech/easr/EmbeddedASREngine;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->this$0:Lcom/baidu/speech/easr/EmbeddedASREngine;

    iput-object p2, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$licensePath_ref:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$context_ref:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$appid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$cuid_ref:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$licensePath_ref:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$licensePath_ref:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$000()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "licensePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$context_ref:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/speech/easr/stat/StatHelper;->getStatHeader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->this$0:Lcom/baidu/speech/easr/EmbeddedASREngine;

    iget-object v1, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$context_ref:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$appid:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$cuid_ref:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/speech/easr/EmbeddedASREngine;->GetLicense2Way(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetLicense getLicenseRet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$1;->val$cuid_ref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-lez v6, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$202(Z)Z

    :cond_1
    return-void
.end method
