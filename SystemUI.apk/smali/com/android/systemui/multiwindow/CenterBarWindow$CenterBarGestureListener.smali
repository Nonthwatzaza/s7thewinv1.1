.class Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/CenterBarWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p2, "x1"    # Lcom/android/systemui/multiwindow/CenterBarWindow$1;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x43fa0000    # 500.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 647
    const-string v2, "FlashBarService"

    const-string v3, "CenterBarGestureListener onFling"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 652
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 654
    const-string v1, "FlashBarService"

    const-string v2, "CenterBarGestureListener onFling : to left in Landscape mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 656
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->handleCenterBarFling()V

    .line 696
    :goto_0
    return v0

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 660
    const-string v1, "FlashBarService"

    const-string v2, "CenterBarGestureListener onFling : to right in Landscape mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 662
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->handleCenterBarFling()V

    goto :goto_0

    .line 694
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 665
    goto :goto_0

    :cond_2
    move v0, v1

    .line 668
    goto :goto_0

    .line 671
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 673
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 675
    const-string v1, "FlashBarService"

    const-string v2, "CenterBarGestureListener onFling : to top in Portrait mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 677
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->handleCenterBarFling()V

    goto :goto_0

    .line 680
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 681
    const-string v1, "FlashBarService"

    const-string v2, "CenterBarGestureListener onFling : to bottom in Portrait mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 683
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->handleCenterBarFling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 687
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 690
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 693
    goto/16 :goto_0
.end method
