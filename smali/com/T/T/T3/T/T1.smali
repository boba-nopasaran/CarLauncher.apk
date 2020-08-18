.class public Lcom/T/T/T3/T/T1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T1;

    invoke-direct {v0}, Lcom/T/T/T3/T/T1;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T1;->T:Lcom/T/T/T3/T/T1;

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

    const/16 v0, 0xe

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

    new-instance v0, Lcom/T/T/T3;

    invoke-direct {v0}, Lcom/T/T/T3;-><init>()V

    invoke-virtual {p1, v0}, Lcom/T/T/T3/T2;->T3(Ljava/util/Collection;)V

    return-object v0
.end method
