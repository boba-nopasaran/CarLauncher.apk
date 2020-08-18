.class public Lcom/car/common/OEM;
.super Ljava/lang/Object;
.source "OEM.java"


# static fields
.field public static final BEI_DOU:I = 0x1

.field public static final CHE_YI_TONG:I = 0x4

.field public static final ECAR:I = 0x3

.field public static final ID:I

.field public static final NAME:Ljava/lang/String;

.field private static final NAME_BEI_DOU:Ljava/lang/String; = "S_BeiDou"

.field private static final NAME_CHE_YI_TONG:Ljava/lang/String; = "CheYiTong"

.field private static final NAME_ECAR:Ljava/lang/String; = "ECAR"

.field private static final NAME_TMCC:Ljava/lang/String; = "TMCC"

.field public static final TMCC:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.oem.customer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    sget-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/common/OEM;->customerName2ID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/car/common/OEM;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customerName2ID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "S_BeiDou"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TMCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "ECAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "CheYiTong"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCustomerName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/common/OEM;->NAME:Ljava/lang/String;

    return-object v0
.end method
