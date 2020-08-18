.class Lcom/baidu/speech/Args$ArgValues;
.super Ljava/lang/Object;
.source "Args.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArgValues"
.end annotation


# instance fields
.field private _rawDepends:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private depends:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/speech/Args$ArgValues;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/Args$ArgValues;->depends:Ljava/util/LinkedList;

    return-void
.end method

.method public static final load(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/speech/Args$ArgValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v19, "cmd"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_0

    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    new-instance v18, Lcom/baidu/speech/Args$ArgValues;

    invoke-direct/range {v18 .. v18}, Lcom/baidu/speech/Args$ArgValues;-><init>()V

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/speech/Args$ArgValues;->name:Ljava/lang/String;

    const-string v19, "depends"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/speech/Args$ArgValues;->_rawDepends:Ljava/lang/String;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/speech/Args$ArgValues;->setContent(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/speech/Args$ArgValues;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/speech/Args$ArgValues;

    iget-object v0, v14, Lcom/baidu/speech/Args$ArgValues;->_rawDepends:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    array-length v0, v2

    move/from16 v16, v0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    aget-object v15, v2, v12

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/baidu/speech/Args$ArgValues;

    if-eqz v17, :cond_2

    iget-object v0, v14, Lcom/baidu/speech/Args$ArgValues;->depends:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static final load(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/baidu/speech/Args;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/speech/Args$ArgValues;->load(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Args$ArgValues;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDepends()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/speech/Args$ArgValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/Args$ArgValues;->depends:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Args$ArgValues;->name:Ljava/lang/String;

    return-object v0
.end method

.method setContent(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v4, v1

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/speech/Args$ArgValues;->content:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ArgValues:name=%s, depends=%s\n%s\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/speech/Args$ArgValues;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/baidu/speech/Args$ArgValues;->getDepends()Ljava/util/LinkedList;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/baidu/speech/Args$ArgValues;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
