.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v4, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get0(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    const/4 v2, 0x1

    .local v2, "isMncApp":Z
    :goto_0
    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-ne p1, v4, :cond_7

    const/4 v3, 0x1

    .local v3, "isPrimary":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-ne p1, v4, :cond_8

    const/4 v1, 0x1

    .local v1, "isFloating":Z
    :goto_2
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not the current primary action mode! Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-ne v4, v7, :cond_1

    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not the current floating action mode! Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get6(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap3(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set2(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    return-void

    .end local v1    # "isFloating":Z
    .end local v2    # "isMncApp":Z
    .end local v3    # "isPrimary":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isMncApp":Z
    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isPrimary":Z
    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "isFloating":Z
    goto/16 :goto_2

    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x1

    .restart local v3    # "isPrimary":Z
    :goto_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-ne v4, v7, :cond_b

    const/4 v1, 0x1

    .restart local v1    # "isFloating":Z
    goto/16 :goto_3

    .end local v1    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "isPrimary":Z
    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "isFloating":Z
    goto/16 :goto_3

    :cond_c
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap1(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto :goto_4

    :cond_d
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto :goto_5

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
