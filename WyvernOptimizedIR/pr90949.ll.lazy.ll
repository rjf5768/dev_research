; ModuleID = './pr90949.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr90949.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { %struct.Node* }

@space = dso_local global [2 x %struct.Node] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"No cleanup\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @my_puts(i8* nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @my_free(i8* nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.Node* @my_malloc(i32 noundef %0) #0 {
  ret %struct.Node* getelementptr inbounds ([2 x %struct.Node], [2 x %struct.Node]* @space, i64 0, i64 0)
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local void @walk(%struct.Node* nocapture noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq %struct.Node* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  %8 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 0
  %9 = load %struct.Node*, %struct.Node** %8, align 8
  call void @walk(%struct.Node* noundef %9, i32 noundef %1)
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7, %4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call %struct.Node* @my_malloc(i32 noundef 8)
  %2 = getelementptr inbounds %struct.Node, %struct.Node* %1, i64 0, i32 0
  store %struct.Node* null, %struct.Node** %2, align 8
  call void @walk(%struct.Node* noundef %1, i32 noundef 1)
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
