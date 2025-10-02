; ModuleID = './980605-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980605-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 1, align 4
@buf = dso_local global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @f2(double noundef %0) #0 {
  %2 = call i32 @getval()
  %3 = call i32 @getval()
  %4 = call i32 @getval()
  %5 = call i32 @getval()
  %6 = call i32 @getval()
  %7 = call i32 @getval()
  %8 = call i32 @getval()
  %9 = call i32 @getval()
  %10 = call i32 @getval()
  %11 = call i32 @getval()
  %12 = fptoui double %0 to i16
  %13 = add nsw i32 %2, %3
  %14 = add nsw i32 %13, %4
  %15 = add nsw i32 %14, %5
  %16 = add nsw i32 %15, %6
  %17 = add nsw i32 %16, %7
  %18 = add nsw i32 %17, %8
  %19 = add nsw i32 %18, %9
  %20 = add nsw i32 %19, %10
  %21 = add nsw i32 %20, %11
  %22 = zext i16 %12 to i32
  %23 = add nsw i32 %21, %22
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @getval() #0 {
  %1 = load i32, i32* @x, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #1 {
  %1 = call i32 @getval()
  %2 = call i32 @getval()
  %3 = call i32 @getval()
  %4 = call i32 @getval()
  %5 = call i32 @getval()
  %6 = call i32 @getval()
  %7 = call i32 @getval()
  %8 = call i32 @getval()
  %9 = call i32 @getval()
  %10 = call i32 @getval()
  %11 = call i32 @f2(double noundef 1.700000e+01)
  %12 = add nsw i32 %1, %2
  %13 = add nsw i32 %12, %3
  %14 = add nsw i32 %13, %4
  %15 = add nsw i32 %14, %5
  %16 = add nsw i32 %15, %6
  %17 = add nsw i32 %16, %7
  %18 = add nsw i32 %17, %8
  %19 = add nsw i32 %18, %9
  %20 = add nsw i32 %19, %10
  %21 = add nsw i32 %20, %11
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %21) #5
  %23 = add nsw i32 %1, %2
  %24 = add nsw i32 %23, %3
  %25 = add nsw i32 %24, %4
  %26 = add nsw i32 %25, %5
  %27 = add nsw i32 %26, %6
  %28 = add nsw i32 %27, %7
  %29 = add nsw i32 %28, %8
  %30 = add nsw i32 %29, %9
  %31 = add nsw i32 %30, %10
  %32 = add nsw i32 %31, %11
  %.not = icmp eq i32 %32, 227
  br i1 %.not, label %34, label %33

33:                                               ; preds = %0
  call void @abort() #6
  unreachable

34:                                               ; preds = %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  call void @f()
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
