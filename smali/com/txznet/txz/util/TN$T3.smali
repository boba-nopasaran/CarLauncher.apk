.class public Lcom/txznet/txz/util/TN$T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T3"
.end annotation


# instance fields
.field T:Ljava/lang/String;

.field T2:Z

.field T3:Ljava/lang/String;

.field TN:Z

.field Te:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/txz/util/TN$T3;->T2:Z

    iput-boolean v0, p0, Lcom/txznet/txz/util/TN$T3;->TN:Z

    iput-boolean v0, p0, Lcom/txznet/txz/util/TN$T3;->Te:Z

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;)Lcom/txznet/txz/util/TN$T3;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/txznet/txz/util/TN$T3;

    invoke-direct {v0}, Lcom/txznet/txz/util/TN$T3;-><init>()V

    iput-object p0, v0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    iput-object p1, v0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/txznet/txz/util/TN$T3;->TN:Z

    iput-boolean v1, v0, Lcom/txznet/txz/util/TN$T3;->T2:Z

    iput-boolean v1, v0, Lcom/txznet/txz/util/TN$T3;->Te:Z

    invoke-virtual {v0}, Lcom/txznet/txz/util/TN$T3;->T()V

    return-object v0
.end method


# virtual methods
.method T(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/txznet/txz/util/TN$T3;->Te:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-boolean v2, p0, Lcom/txznet/txz/util/TN$T3;->T2:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/txznet/txz/util/TN$T3;->TN:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method T()V
    .locals 2

    iget-boolean v0, p0, Lcom/txznet/txz/util/TN$T3;->Te:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/txz/util/TN$T3;->T:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/txz/util/TN$T3;->T3:Ljava/lang/String;

    :cond_1
    return-void
.end method
