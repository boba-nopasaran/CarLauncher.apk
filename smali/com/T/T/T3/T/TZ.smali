.class public Lcom/T/T/T3/T/TZ;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TZ;

    invoke-direct {v0}, Lcom/T/T/T3/T/TZ;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TZ;->T:Lcom/T/T/T3/T/TZ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Te()Lcom/T/T/Te;

    move-result-object v0

    return-object v0
.end method
