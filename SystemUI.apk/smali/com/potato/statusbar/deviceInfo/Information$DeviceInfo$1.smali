.class Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;


# direct methods
.method constructor <init>(Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;

    .line 283
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;

    invoke-virtual {v2}, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_color"

    const/4 v4, 0x0

    .line 289
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;->mColor:I

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo$1;->this$1:Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/potato/statusbar/deviceInfo/Information$DeviceInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method
