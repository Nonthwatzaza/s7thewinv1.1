.class public Lcom/potato/statusbar/deviceInfo/NinjaMoves;
.super Landroid/app/Activity;
.source "NinjaMoves.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getCPUInfo()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 20
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 21
    .local v0, "info":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 25
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x3e8

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "line":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 40
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 42
    :goto_0
    const/4 v3, 0x0

    .line 45
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    aget-object v5, v0, v8

    return-object v5

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "io":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 36
    const/4 v5, 0x1

    const-string v6, "error"

    aput-object v6, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 42
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 38
    .end local v1    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 40
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 42
    :goto_5
    const/4 v3, 0x0

    .line 43
    throw v5

    .line 41
    .restart local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v1    # "io":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_0

    .line 38
    .end local v2    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 33
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method getMemAvail()Ljava/lang/Long;
    .locals 13

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "avail":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 54
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/proc/meminfo"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x3e8

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 61
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "free":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "memFree":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 70
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "cached":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "memCached":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 84
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 86
    :goto_0
    const/4 v7, 0x0

    .line 89
    .end local v1    # "cached":[Ljava/lang/String;
    .end local v3    # "free":[Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "memCached":[Ljava/lang/String;
    .end local v6    # "memFree":[Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v9, "0"

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 84
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 86
    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 84
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 86
    :goto_5
    const/4 v7, 0x0

    .line 87
    throw v9

    .line 85
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_5

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cached":[Ljava/lang/String;
    .restart local v3    # "free":[Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "memCached":[Ljava/lang/String;
    .restart local v6    # "memFree":[Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    goto :goto_0

    .line 82
    .end local v1    # "cached":[Ljava/lang/String;
    .end local v3    # "free":[Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "memCached":[Ljava/lang/String;
    .end local v6    # "memFree":[Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 77
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method getMemTotal()Ljava/lang/Long;
    .locals 11

    .prologue
    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "total":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 98
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/meminfo"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x3e8

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "info":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "memTotal":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 111
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 120
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 122
    :goto_0
    const/4 v4, 0x0

    .line 125
    .end local v1    # "info":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "memTotal":[Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v6

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 120
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 120
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 122
    :goto_5
    const/4 v4, 0x0

    .line 123
    throw v7

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "info":[Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "memTotal":[Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    goto :goto_0

    .line 118
    .end local v1    # "info":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "memTotal":[Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 113
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
