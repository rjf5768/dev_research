; ModuleID = './item.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@.str = private unnamed_addr constant [10 x i8] c"delta > 0\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/item.c\00", align 1
@__PRETTY_FUNCTION__.Subtract = private unnamed_addr constant [28 x i8] c"Item *Subtract(Item *, int)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @LessThan(%struct._Vertices* nocapture noundef readonly %0, %struct._Vertices* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @Equal(%struct._Vertices* nocapture noundef readonly %0, %struct._Vertices* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @Subtract(%struct._Vertices* noundef returned %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.Subtract, i64 0, i64 0)) #3
  unreachable

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, %1
  %10 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 3
  store i32 %9, i32* %10, align 8
  ret %struct._Vertices* %0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
