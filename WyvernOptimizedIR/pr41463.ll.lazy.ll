; ModuleID = './pr41463.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41463.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.other_tree }
%struct.other_tree = type { %struct.tree_common, [14 x i32] }
%struct.tree_common = type { i32, i64, i64, i8*, i32 }

@global = dso_local global %union.tree_node zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %union.tree_node* @foo(%union.tree_node* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, i64 2
  %4 = bitcast i32* %3 to [1 x %union.tree_node*]*
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %4, i64 0, i64 %5
  store %union.tree_node* null, %union.tree_node** %6, align 8
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, i64 4
  %8 = bitcast i32* %7 to %union.tree_node**
  store %union.tree_node* @global, %union.tree_node** %8, align 8
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, i64 2
  %10 = bitcast i32* %9 to [1 x %union.tree_node*]*
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %10, i64 0, i64 %11
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  ret %union.tree_node* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call noalias dereferenceable_or_null(96) i8* @malloc(i64 noundef 96) #4
  %2 = bitcast i8* %1 to %union.tree_node*
  %3 = call %union.tree_node* @foo(%union.tree_node* noundef %2, i32 noundef 1)
  %.not = icmp eq %union.tree_node* %3, @global
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #5
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
