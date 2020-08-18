.class public Lcom/T/T/T2/TS;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final T:Lcom/T/T/T2/T3H;

.field private T2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T37;",
            ">;"
        }
    .end annotation
.end field

.field private final T3:Lcom/T/T/T2/T30;

.field private TG:Ljava/lang/String;

.field private TJ:Lcom/T/T/T2/T3L;

.field private TN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T31;",
            ">;"
        }
    .end annotation
.end field

.field private TR:Ljava/text/DateFormat;

.field private TW:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/T/T/T2/T3L;",
            ">;"
        }
    .end annotation
.end field

.field private Te:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T3y;",
            ">;"
        }
    .end annotation
.end field

.field private Tn:Ljava/lang/String;

.field private Tw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T3O;",
            ">;"
        }
    .end annotation
.end field

.field private Ty:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/T/T/T2/T30;

    invoke-direct {v0}, Lcom/T/T/T2/T30;-><init>()V

    invoke-static {}, Lcom/T/T/T2/T3H;->T()Lcom/T/T/T2/T3H;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;Lcom/T/T/T2/T3H;)V

    return-void
.end method

.method public constructor <init>(Lcom/T/T/T2/T30;)V
    .locals 1

    invoke-static {}, Lcom/T/T/T2/T3H;->T()Lcom/T/T/T2/T3H;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;Lcom/T/T/T2/T3H;)V

    return-void
.end method

.method public constructor <init>(Lcom/T/T/T2/T30;Lcom/T/T/T2/T3H;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/T/T/T2/TS;->T2:Ljava/util/List;

    iput-object v1, p0, Lcom/T/T/T2/TS;->TN:Ljava/util/List;

    iput-object v1, p0, Lcom/T/T/T2/TS;->Te:Ljava/util/List;

    iput-object v1, p0, Lcom/T/T/T2/TS;->Tw:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/T/T/T2/TS;->Ty:I

    const-string v0, "\t"

    iput-object v0, p0, Lcom/T/T/T2/TS;->Tn:Ljava/lang/String;

    iput-object v1, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    iput-object p2, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/T/T/T2/T3B;"
        }
    .end annotation

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    invoke-virtual {v11, p1}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/T/T/T2/T3B;

    if-nez v10, :cond_0

    const-class v11, Ljava/util/Map;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T3w;->T:Lcom/T/T/T2/T3w;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    invoke-virtual {v11, p1}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/T/T/T2/T3B;

    :cond_0
    move-object v9, v10

    :goto_1
    return-object v9

    :cond_1
    const-class v11, Ljava/util/List;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T32;->T:Lcom/T/T/T2/T32;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-class v11, Ljava/util/Collection;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T0;->T:Lcom/T/T/T2/T0;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-class v11, Ljava/util/Date;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/Tk;->T:Lcom/T/T/T2/Tk;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-class v11, Lcom/T/T/T2;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/TV;->T:Lcom/T/T/T2/TV;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-class v11, Lcom/T/T/Tw;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T4;->T:Lcom/T/T/T2/T4;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T5;->T:Lcom/T/T/T2/T5;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v1

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    new-instance v12, Lcom/T/T/T2/T3;

    invoke-direct {v12, v2, v1}, Lcom/T/T/T2/T3;-><init>(Ljava/lang/Class;Lcom/T/T/T2/T3B;)V

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-class v11, Ljava/lang/Throwable;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    new-instance v12, Lcom/T/T/T2/T1;

    invoke-direct {v12, p1}, Lcom/T/T/T2/T1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-class v11, Ljava/util/TimeZone;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T35;->T:Lcom/T/T/T2/T35;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-class v11, Ljava/nio/charset/Charset;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/T3u;->T:Lcom/T/T/T2/T3u;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-class v11, Ljava/util/Enumeration;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/Tu;->T:Lcom/T/T/T2/Tu;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const-class v11, Ljava/util/Calendar;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    sget-object v12, Lcom/T/T/T2/TO;->T:Lcom/T/T/T2/TO;

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v7, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_f

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v4, 0x1

    :cond_f
    :goto_3
    if-nez v4, :cond_10

    if-eqz v5, :cond_13

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v9

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    invoke-virtual {v11, p1, v9}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v5, 0x1

    goto :goto_3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_13
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    iget-object v12, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    invoke-virtual {v12, p1}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    iget-object v11, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    iget-object v12, p0, Lcom/T/T/T2/TS;->T:Lcom/T/T/T2/T3H;

    invoke-virtual {v12, p1}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/T/T/T2/T3H;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public T(Ljava/lang/Object;)Lcom/T/T/T2/T3L;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T2/T3L;

    goto :goto_0
.end method

.method public T()Ljava/text/DateFormat;
    .locals 2

    iget-object v0, p0, Lcom/T/T/T2/TS;->TR:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/T/T/T2/TS;->TG:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/T/T/T2/TS;->TG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T/T/T2/TS;->TR:Ljava/text/DateFormat;

    :cond_0
    iget-object v0, p0, Lcom/T/T/T2/TS;->TR:Ljava/text/DateFormat;

    return-object v0
.end method

.method public T(Lcom/T/T/T2/T3L;)V
    .locals 0

    iput-object p1, p0, Lcom/T/T/T2/TS;->TJ:Lcom/T/T/T2/T3L;

    return-void
.end method

.method public T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/T/T/T2/T3c;->Tr:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v0}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/T/T/T2/T3L;

    invoke-direct {v0, p1, p2, p3}, Lcom/T/T/T2/T3L;-><init>(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/T/T/T2/TS;->TJ:Lcom/T/T/T2/T3L;

    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    :cond_1
    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/T/T/T2/TS;->TJ:Lcom/T/T/T2/T3L;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public T(Lcom/T/T/T2/T3c;Z)V
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v0, p1, p2}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;Z)V

    return-void
.end method

.method public final T(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->T()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v2, v1}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final T(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/T/T/T2/T3t;->T:Lcom/T/T/T2/T3t;

    invoke-virtual {v0, p0, p1}, Lcom/T/T/T2/T3t;->T(Lcom/T/T/T2/TS;Ljava/lang/String;)V

    return-void
.end method

.method public T(Lcom/T/T/T2/T3c;)Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v0, p1}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v0

    return v0
.end method

.method public final T(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    sget-object v5, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {v4, v5}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    sget-object v4, Lcom/T/T/T2/T3c;->TQ:Lcom/T/T/T2/T3c;

    invoke-virtual {p0, v4}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/T/T/T2/TS;->TJ:Lcom/T/T/T2/T3L;

    invoke-virtual {v4}, Lcom/T/T/T2/T3L;->T()Lcom/T/T/T2/T3L;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v3

    :goto_1
    if-nez v0, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public T2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T31;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T2/TS;->TN:Ljava/util/List;

    return-object v0
.end method

.method public T2(Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p0}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T2/T3L;->T3()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const-string v7, "{\"$ref\":\"@\"}"

    invoke-virtual {v6, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T2/T3L;->T()Lcom/T/T/T2/T3L;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/T/T/T2/T3L;->T3()Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_1

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const-string v7, "{\"$ref\":\"..\"}"

    invoke-virtual {v6, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-virtual {v5}, Lcom/T/T/T2/T3L;->T()Lcom/T/T/T2/T3L;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/T/T/T2/T3L;->T3()Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const-string v7, "{\"$ref\":\"$\"}"

    invoke-virtual {v6, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/T/T/T2/T3L;->T()Lcom/T/T/T2/T3L;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Object;)Lcom/T/T/T2/T3L;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T2/T3L;->T2()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const-string v7, "{\"$ref\":\""

    invoke-virtual {v6, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v6, v3}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public T3()Lcom/T/T/T2/T3L;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->TJ:Lcom/T/T/T2/T3L;

    return-object v0
.end method

.method public T3(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/T/T/T2/TS;->TW:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public TG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T37;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T2/TS;->T2:Ljava/util/List;

    return-object v0
.end method

.method public TN()V
    .locals 1

    iget v0, p0, Lcom/T/T/T2/TS;->Ty:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/T/T/T2/TS;->Ty:I

    return-void
.end method

.method public final TN(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, p1, v3, v4}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/T/T/TN;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public TR()Lcom/T/T/T2/T30;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    return-object v0
.end method

.method public TW()V
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    return-void
.end method

.method public Te()V
    .locals 1

    iget v0, p0, Lcom/T/T/T2/TS;->Ty:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/T/T/T2/TS;->Ty:I

    return-void
.end method

.method public Tn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T3O;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T2/TS;->Tw:Ljava/util/List;

    return-object v0
.end method

.method public Tw()V
    .locals 3

    iget-object v1, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->T(C)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/T/T/T2/TS;->Ty:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    iget-object v2, p0, Lcom/T/T/T2/TS;->Tn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Ty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/T/T/T2/T3y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/T2/TS;->Te:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T2/TS;->T3:Lcom/T/T/T2/T30;

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
