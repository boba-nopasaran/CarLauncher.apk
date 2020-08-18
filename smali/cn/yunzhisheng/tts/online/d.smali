.class public Lcn/yunzhisheng/tts/online/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Landroid/telephony/TelephonyManager; = null

.field public static k:Landroid/net/NetworkInfo; = null

.field public static l:Landroid/net/ConnectivityManager; = null

.field private static final m:Ljava/lang/String; = "000000000000000"

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/yunzhisheng/tts/online/d;->n:Z

    const-string v0, ""

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcn/yunzhisheng/tts/online/d;->n:Z

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->l:Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->j:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcn/yunzhisheng/tts/online/d;->l:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/tts/online/d;->l:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->k:Landroid/net/NetworkInfo;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->h:Ljava/lang/String;

    invoke-static {p0}, Lcn/yunzhisheng/tts/online/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->g:Ljava/lang/String;

    invoke-static {p0}, Lcn/yunzhisheng/tts/online/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcn/yunzhisheng/tts/online/d;->i:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/yunzhisheng/tts/online/d;->n:Z

    :cond_1
    return-void
.end method

.method public static b()I
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcn/yunzhisheng/tts/online/d;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/yunzhisheng/tts/online/d;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "unknow android device"

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcn/yunzhisheng/tts/online/d;->k:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/tts/online/d;->k:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/tts/online/d;->j:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
