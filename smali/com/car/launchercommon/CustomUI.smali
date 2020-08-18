.class public Lcom/car/launchercommon/CustomUI;
.super Ljava/lang/Object;
.source "CustomUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/CustomUI$Item;,
        Lcom/car/launchercommon/CustomUI$CustomizableView;
    }
.end annotation


# static fields
.field private static final DIR0:Ljava/lang/String; = "/storage/sdcard0/custom/launcher/"

.field private static final DIR1:Ljava/lang/String; = "/system/custom/launcher/"

.field private static final TAG:Ljava/lang/String; = "LC.CustomUI"

.field private static UI_DIR:Ljava/lang/String; = null

.field private static final XML_FILE:Ljava/lang/String; = "launcher.xml"

.field private static mContext:Landroid/content/Context;

.field private static mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/car/launchercommon/CustomUI$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/system/custom/launcher/"

    sput-object v0, Lcom/car/launchercommon/CustomUI;->UI_DIR:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/CustomUI;->UI_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static appply(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/CustomUI$Item;

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    sget-object v1, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p0, p1, p2}, Lcom/car/launchercommon/CustomUI;->appplyBackgroud(Lcom/car/launchercommon/CustomUI$Item;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static appply(Landroid/widget/ImageButton;Ljava/lang/String;)V
    .locals 3

    sget-object v2, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/CustomUI$Item;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/car/launchercommon/CustomUI;->appplyBackgroud(Lcom/car/launchercommon/CustomUI$Item;Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/car/launchercommon/CustomUI$Item;->getForegroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static appply(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/CustomUI$Item;

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    sget-object v1, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p0, p1, p2}, Lcom/car/launchercommon/CustomUI;->appplyBackgroud(Lcom/car/launchercommon/CustomUI$Item;Landroid/view/View;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/car/launchercommon/CustomUI$Item;->textColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/car/launchercommon/CustomUI$Item;->textColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/car/launchercommon/CustomUI;->appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V

    return-void
.end method

.method public static appply(Lcom/car/launchercommon/CustomUI$CustomizableView;Ljava/lang/String;I)V
    .locals 3

    sget-object v2, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/CustomUI$Item;

    if-nez v1, :cond_1

    if-lez p2, :cond_0

    sget-object v2, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/car/launchercommon/CustomUI$CustomizableView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/car/launchercommon/CustomUI$Item;->getBackgroudStateListDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v0}, Lcom/car/launchercommon/CustomUI$CustomizableView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/car/launchercommon/CustomUI$Item;->textColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/car/launchercommon/CustomUI$Item;->textColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/car/launchercommon/CustomUI$CustomizableView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    if-lez p2, :cond_2

    sget-object v2, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/car/launchercommon/CustomUI$CustomizableView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private static appplyBackgroud(Lcom/car/launchercommon/CustomUI$Item;Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/car/launchercommon/CustomUI$Item;->getBackgroudStateListDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_0

    sget-object v1, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/car/launchercommon/Util;->getBackgroudDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static getItem(Ljava/lang/String;)Lcom/car/launchercommon/CustomUI$Item;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/CustomUI$Item;

    return-object v0
.end method

.method private static hexStringToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    long-to-int v4, v2

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    sput-object p0, Lcom/car/launchercommon/CustomUI;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/storage/sdcard0/custom/launcher/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/storage/sdcard0/custom/launcher/"

    sput-object v2, Lcom/car/launchercommon/CustomUI;->UI_DIR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v2, "LC.CustomUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI_DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/car/launchercommon/CustomUI;->UI_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/car/launchercommon/CustomUI;->UI_DIR:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/car/launchercommon/CustomUI;->parse(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parse(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 25

    sget-object v22, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->clear()V

    :try_start_0
    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "launcher.xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x0

    :goto_0
    return v22

    :cond_0
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    const-string v22, "launcher"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string v22, "page"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v22, "icon"

    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const-string v22, "text_color"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/CustomUI;->hexStringToInt(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    :cond_3
    :try_start_2
    const-string v22, "backgroud_image"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v22, "file"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v22, "foreground_image"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v22, "file"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    const-string v23, "LC.CustomUI"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "id="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", backgroud_image="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", foreground_image="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", text_color="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v19, :cond_7

    const-string v22, "null"

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    new-instance v23, Lcom/car/launchercommon/CustomUI$Item;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v2, v11, v1}, Lcom/car/launchercommon/CustomUI$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    const-string v22, "LC.CustomUI"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parse xml error:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    const-string v22, "LC.CustomUI"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mItems.size()="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v22, Lcom/car/launchercommon/CustomUI;->mItems:Ljava/util/Map;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v22

    if-lez v22, :cond_8

    const/16 v22, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_3
    const-string v22, "LC.CustomUI"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parse icon"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " error:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v22

    goto/16 :goto_3

    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_0
.end method
