.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$4;
.super Ljava/lang/Object;
.source "SmartStayQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->onDisplayTalkbackDisableAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    const-string v0, "STATUSBAR-SmartStay"

    const-string v1, "AlertDialog onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setActivateStatus(I)V

    .line 156
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
