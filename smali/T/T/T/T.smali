.class public LT/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T2:LT/T/T/T;


# instance fields
.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, LT/T/T/T;->T3()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, LT/T/T/T;->T:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, LT/T/T/T;->T3:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, LT/T/T/T;->T:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, LT/T/T/T;->T3:Ljava/util/Map;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static T()LT/T/T/T;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LT/T/T/T;->T2:LT/T/T/T;

    if-nez v0, :cond_0

    new-instance v0, LT/T/T/T;

    invoke-direct {v0}, LT/T/T/T;-><init>()V

    sput-object v0, LT/T/T/T;->T2:LT/T/T/T;

    :cond_0
    sget-object v0, LT/T/T/T;->T2:LT/T/T/T;

    return-object v0
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :cond_0
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private T3()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "/cfg/ts.tab"

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, LT/T/T/T;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The conversion table may be damaged or not exists"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public T(C)Ljava/lang/Character;
    .locals 2

    iget-object v0, p0, LT/T/T/T;->T3:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LT/T/T/T;->T3:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, LT/T/T/T;->T(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
