.class public final Lcom/T/T/T3/T/TI;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private final T2:Ljava/lang/String;

.field private final TN:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    iput-object p2, p0, Lcom/T/T/T3/T/TI;->T2:Ljava/lang/String;

    iput-object p1, p0, Lcom/T/T/T3/T/TI;->TN:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/T/T/T3/T/TI;->TN:Ljava/util/Map;

    iget-object v1, p0, Lcom/T/T/T3/T/TI;->T2:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
