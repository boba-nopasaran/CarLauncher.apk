.class public Lcom/T/T/T3/TJ;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T2:Lcom/T/T/T3/TJ;


# instance fields
.field protected final T:Lcom/T/T/T3/TB;

.field private final T3:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final TN:Lcom/T/T/TN/Te;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T/T/TN/Te",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/T/T/T3/T/TS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/TJ;

    invoke-direct {v0}, Lcom/T/T/T3/TJ;-><init>()V

    sput-object v0, Lcom/T/T/T3/TJ;->T2:Lcom/T/T/T3/TJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    new-instance v0, Lcom/T/T/TN/Te;

    invoke-direct {v0}, Lcom/T/T/TN/Te;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    new-instance v0, Lcom/T/T/T3/TB;

    invoke-direct {v0}, Lcom/T/T/T3/TB;-><init>()V

    iput-object v0, p0, Lcom/T/T/T3/TJ;->T:Lcom/T/T/T3/TB;

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Time;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T3:Ljava/util/Set;

    const-class v1, Ljava/sql/Timestamp;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/T/T/T3/T/TQ;->T:Lcom/T/T/T3/T/TQ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/T/T/T3/T/T3J;->T:Lcom/T/T/T3/T/T3J;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/T/T/T3/T/T32;->T:Lcom/T/T/T3/T/T32;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/T/T/T3/T/T3G;->T:Lcom/T/T/T3/T/T3G;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/T/T/T3/T/TO;->T:Lcom/T/T/T3/T/TO;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/T/T/T3/T/TG;->T:Lcom/T/T/T3/T/TG;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Lcom/T/T/Te;

    sget-object v2, Lcom/T/T/T3/T/TZ;->T:Lcom/T/T/T3/T/TZ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Lcom/T/T/T3;

    sget-object v2, Lcom/T/T/T3/T/T1;->T:Lcom/T/T/T3/T/T1;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/T/T/T3/T/T3e;->T:Lcom/T/T/T3/T/T3e;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TJ;->T:Lcom/T/T/T3/T/TJ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/T/T/T3/T/TJ;->T:Lcom/T/T/T3/T/TJ;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/T/T/T3/T/Te;->T:Lcom/T/T/T3/T/Te;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/T/T/T3/T/TN;->T:Lcom/T/T/T3/T/TN;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/Tk;->T:Lcom/T/T/T3/T/Tk;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/T/T/T3/T/Tk;->T:Lcom/T/T/T3/T/Tk;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/T/T/T3/T/TP;->T:Lcom/T/T/T3/T/TP;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, [C

    sget-object v2, Lcom/T/T/T3/T/TR;->T:Lcom/T/T/T3/T/TR;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/T/T/T3/T/T37;->T:Lcom/T/T/T3/T/T37;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/T/T/T3/T/T3R;->T:Lcom/T/T/T3/T/T3R;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/T/T/T3/T/TA;->T:Lcom/T/T/T3/T/TA;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/T/T/T3/T/TF;->T:Lcom/T/T/T3/T/TF;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/T/T/T3/T/Tt;->T:Lcom/T/T/T3/T/Tt;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/T/T/T3/T/Tc;->T:Lcom/T/T/T3/T/Tc;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/T/T/T3/T/T3B;->T:Lcom/T/T/T3/T/T3B;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/T/T/T3/T/T3P;->T:Lcom/T/T/T3/T/T3P;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/T/T/T3/T/T4;->T:Lcom/T/T/T3/T/T4;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/T/T/T3/T/TB;->T:Lcom/T/T/T3/T/TB;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/T/T/T3/T/T3N;->T:Lcom/T/T/T3/T/T3N;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    invoke-virtual {v0, v1, v2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static T()Lcom/T/T/T3/TJ;
    .locals 1

    sget-object v0, Lcom/T/T/T3/TJ;->T2:Lcom/T/T/T3/TJ;

    return-object v0
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static T3(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public T(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/T0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")",
            "Lcom/T/T/T3/T/T0;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v1, Lcom/T/T/T3/T/Ty;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/Ty;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v1, Lcom/T/T/T3/T/Tu;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/Tu;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    :cond_4
    new-instance v1, Lcom/T/T/T3/T/T6;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T6;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    :cond_5
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    new-instance v1, Lcom/T/T/T3/T/T3w;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T3w;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    :cond_6
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_8

    :cond_7
    new-instance v1, Lcom/T/T/T3/T/T2;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/T2;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0

    :cond_8
    new-instance v1, Lcom/T/T/T3/T/TL;

    invoke-direct {v1, p1, p2, p3}, Lcom/T/T/T3/T/TL;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    goto :goto_0
.end method

.method public T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;
    .locals 2

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T3()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/T/T/T3/T/TS;"
        }
    .end annotation

    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/TS;

    if-eqz v1, :cond_0

    move-object v3, v1

    :goto_0
    return-object v3

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/TS;

    if-eqz v1, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    const-class v3, Lcom/T/T/T/T2;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T2;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/T/T/T/T2;->T2()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Void;

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2, v2}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    goto :goto_0

    :cond_3
    instance-of v3, p2, Ljava/lang/reflect/WildcardType;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p1}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/TS;

    :cond_5
    if-eqz v1, :cond_6

    move-object v3, v1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v3, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T3/T/TS;

    if-eqz v1, :cond_7

    move-object v3, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v1, Lcom/T/T/T3/T/TH;

    invoke-direct {v1, p1}, Lcom/T/T/T3/T/TH;-><init>(Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;Lcom/T/T/T3/T/TS;)V

    move-object v3, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/T/T/T3/T/T3;->T:Lcom/T/T/T3/T/T3;

    goto :goto_0

    :cond_9
    const-class v3, Ljava/util/Set;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/HashSet;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/Collection;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/List;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/ArrayList;

    if-ne p1, v3, :cond_b

    :cond_a
    sget-object v1, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    goto :goto_1

    :cond_b
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v1, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    goto :goto_1

    :cond_c
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v1, Lcom/T/T/T3/T/T8;->T:Lcom/T/T/T3/T/T8;

    goto :goto_1

    :cond_d
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v1, Lcom/T/T/T3/T/T3y;

    invoke-direct {v1, p0, p1}, Lcom/T/T/T3/T/T3y;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;)V

    goto :goto_1

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/T/T/T3/TJ;->T3(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v1

    goto :goto_1
.end method

.method public T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 3

    iget-object v2, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v2, p1}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T3/T/TS;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/T/T/T3/T/Tx;->T:Lcom/T/T/T3/T/Tx;

    goto :goto_0
.end method

.method public T(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/T/T/T3/T/T0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T/T/T3/TJ;->T(Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    instance-of v1, v0, Lcom/T/T/T3/T/TM;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/T/T/T3/T/TM;

    invoke-virtual {v0}, Lcom/T/T/T3/T/TM;->T3()Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public T(Ljava/lang/reflect/Type;Lcom/T/T/T3/T/TS;)V
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/TJ;->TN:Lcom/T/T/TN/Te;

    invoke-virtual {v0, p1, p2}, Lcom/T/T/TN/Te;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public T3(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/T/T/T3/T/TS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/T/T/T3/T/TS;"
        }
    .end annotation

    new-instance v0, Lcom/T/T/T3/T/TM;

    invoke-direct {v0, p0, p1, p2}, Lcom/T/T/T3/T/TM;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public T3()Lcom/T/T/T3/TB;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/TJ;->T:Lcom/T/T/T3/TB;

    return-object v0
.end method
