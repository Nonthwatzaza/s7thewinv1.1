.class Lcom/android/settings/motion2013/SMotionGuideHub$5;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$400(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V

    .line 610
    return-void
.end method
