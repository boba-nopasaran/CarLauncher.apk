.class public Lcom/T/T/TN/Tw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final T:[Ljava/lang/reflect/Type;

.field private final T2:Ljava/lang/reflect/Type;

.field private final T3:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T/T/TN/Tw;->T:[Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/T/T/TN/Tw;->T3:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/T/T/TN/Tw;->T2:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/Tw;->T:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/Tw;->T3:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/Tw;->T2:Ljava/lang/reflect/Type;

    return-object v0
.end method
