; ModuleID = './20000112-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*e\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @special_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @special_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5, %2
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @special_format(i8* noundef readonly %0) #1 {
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 42) #5
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %10

3:                                                ; preds = %1
  %4 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 86) #5
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %5, label %10

5:                                                ; preds = %3
  %6 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 83) #5
  %.not2 = icmp eq i8* %6, null
  br i1 %.not2, label %7, label %10

7:                                                ; preds = %5
  %8 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 110) #5
  %9 = icmp ne i8* %8, null
  %phi.cast = zext i1 %9 to i32
  br label %10

10:                                               ; preds = %7, %5, %3, %1
  %11 = phi i32 [ 1, %5 ], [ 1, %3 ], [ 1, %1 ], [ %phi.cast, %7 ]
  ret i32 %11
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
