.class public Lorg/eclipse/jetty/server/ssl/ServletSSL;
.super Ljava/lang/Object;
.source "ServletSSL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deduceKeyLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "cipherSuite"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x28

    .line 60
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const-string v3, "WITH_AES_256_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 63
    const/16 v0, 0x100

    goto :goto_0

    .line 64
    :cond_2
    const-string v3, "WITH_RC4_128_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v3, "WITH_AES_128_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-string v3, "WITH_RC4_40_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    move v0, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-string v3, "WITH_3DES_EDE_CBC_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 71
    const/16 v0, 0xa8

    goto :goto_0

    .line 72
    :cond_6
    const-string v3, "WITH_IDEA_CBC_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    move v0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_7
    const-string v1, "WITH_RC2_CBC_40_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    move v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_8
    const-string v1, "WITH_DES40_CBC_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    move v0, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_9
    const-string v1, "WITH_DES_CBC_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 79
    const/16 v0, 0x38

    goto :goto_0
.end method
