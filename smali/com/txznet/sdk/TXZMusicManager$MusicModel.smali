.class public Lcom/txznet/sdk/TXZMusicManager$MusicModel;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicModel"
.end annotation


# instance fields
.field protected T:Ljava/lang/String;

.field protected T2:[Ljava/lang/String;

.field protected T3:Ljava/lang/String;

.field protected TN:[Ljava/lang/String;

.field protected Te:Ljava/lang/String;

.field protected Tn:Ljava/lang/String;

.field protected Tw:I

.field protected Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collecionFromString(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :cond_0
    return-object v3
.end method

.method public static collecionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/txznet/sdk/TXZMusicManager$MusicModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 5

    :try_start_0
    new-instance v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;-><init>()V

    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    const-string v3, "title"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    const-string v3, "album"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    const-string v3, "path"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    const-string v3, "artist"

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    const-string v3, "keywords"

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicModel from json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    return-object v0
.end method

.method public getField()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    return v0
.end method

.method public getKeywords()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    return-void
.end method

.method public setArtist([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    return-void
.end method

.method public setField(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    return-void
.end method

.method public setKeywords([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    return-void
.end method

.method public setSubCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "title"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "album"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T3:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->T2:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "artist"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->TN:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "keywords"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "field"

    iget v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tw:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "path"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Te:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "text"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Ty:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "subcategory"

    iget-object v6, p0, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->Tn:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_2
    return-object v5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_2
.end method
