.class Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickLaunchKeyButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    goto :goto_0
.end method
