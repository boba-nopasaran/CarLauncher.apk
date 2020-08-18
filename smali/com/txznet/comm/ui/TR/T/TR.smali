.class public Lcom/txznet/comm/ui/TR/T/TR;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TR/T/TR$T;
    }
.end annotation


# instance fields
.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/comm/ui/TR/T/TR$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TR;->T:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 6

    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TR;->T:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "helps"

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {p1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/txznet/comm/ui/TR/T/TR;->T2:I

    if-ge v1, v4, :cond_0

    :try_start_0
    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txznet/comm/TN/T;-><init>(Lorg/json/JSONObject;)V

    new-instance v0, Lcom/txznet/comm/ui/TR/T/TR$T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TR/T/TR$T;-><init>()V

    const-string v4, "iconName"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/TR$T;->T:Ljava/lang/String;

    const-string v4, "title"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/TR$T;->T3:Ljava/lang/String;

    const-string v4, "intro"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/txznet/comm/ui/TR/T/TR$T;->T2:Ljava/lang/String;

    iget-object v4, p0, Lcom/txznet/comm/ui/TR/T/TR;->T:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method
