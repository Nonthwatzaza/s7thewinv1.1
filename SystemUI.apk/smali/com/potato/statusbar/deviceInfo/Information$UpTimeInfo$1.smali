.class Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;


# direct methods
.method constructor <init>(Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    .line 438
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 441
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    invoke-virtual {v2}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_color"

    .line 444
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mColor:I

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    return-void

    .line 446
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;

    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->level:I

    goto :goto_0

    .line 448
    :cond_1
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
