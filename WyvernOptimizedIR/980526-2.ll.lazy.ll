; ModuleID = './980526-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980526-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @do_mknod(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 360710264
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @getname(i8* noundef %0) #2 {
  %2 = ptrtoint i8* %0 to i64
  %3 = mul i64 %2, 5
  %4 = add i64 %3, 1
  %5 = ptrtoint i8* %0 to i64
  %6 = mul i64 %5, 6
  %7 = add i64 %6, 2
  %8 = ptrtoint i8* %0 to i64
  %9 = mul i64 %8, 7
  %10 = add i64 %9, 3
  %11 = ptrtoint i8* %0 to i64
  %12 = shl i64 %11, 3
  %13 = or i64 %12, 4
  %14 = ptrtoint i8* %0 to i64
  %15 = mul i64 %14, 9
  %16 = add i64 %15, 5
  %17 = ptrtoint i8* %0 to i64
  %18 = mul i64 %17, 10
  %19 = add i64 %18, 5
  %20 = ptrtoint i8* %0 to i64
  %21 = mul i64 %20, 11
  %22 = add i64 %21, 5
  %23 = ptrtoint i8* %0 to i64
  %24 = mul i64 %23, 12
  %25 = add i64 %24, 5
  %26 = ptrtoint i8* %0 to i64
  %27 = mul i64 %26, 13
  %28 = add i64 %27, 5
  %29 = mul i64 %4, %7
  %30 = mul i64 %10, %13
  %31 = add i64 %29, %30
  %32 = mul i64 %16, %19
  %33 = add i64 %31, %32
  %34 = mul i64 %22, %25
  %35 = add i64 %33, %34
  %36 = add i64 %35, %28
  %37 = and i64 %36, 4294967295
  %38 = inttoptr i64 %37 to i8*
  ret i8* %38
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @sys_mknod(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i8* @getname(i8* noundef %0)
  %5 = ptrtoint i8* %4 to i64
  %6 = trunc i64 %5 to i32
  %7 = call i32 @to_kdev_t(i32 noundef %2)
  call void @do_mknod(i8* noundef %4, i32 noundef %1, i32 noundef %7)
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @to_kdev_t(i32 noundef %0) #2 {
  %2 = and i32 %0, 255
  %3 = shl i32 %0, 14
  %4 = and i32 %3, -4194304
  %5 = or i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @sys_mknod(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef 305419896)
  ret i32 %1
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
