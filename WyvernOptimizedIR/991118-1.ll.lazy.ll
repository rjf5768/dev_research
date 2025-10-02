; ModuleID = './991118-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 -47, i8 -68, i8 -102, i8 120, i8 86, i8 52, i8 18 }, align 8
@tmp2 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -51, i8 -85, i8 -119, i8 103, i8 69, i8 35, i8 49, i8 18 }, align 8
@tmp3 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 1, i8 0, i8 0, i8 0, i8 -8, i8 -1, i8 15 }, align 8
@tmp4 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 97, i8 36 }, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub(i64 %0) #0 {
  %2 = xor i64 %0, -8690468286197432320
  ret i64 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub2(i64 %0) #0 {
  %2 = xor i64 %0, 2381903268435576
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub3(i64 %0) #0 {
  %2 = xor i64 %0, -4345234143098716160
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub4(i64 %0) #0 {
  %2 = xor i64 %0, 6885502895806072
  ret i64 %2
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to i64*), align 8
  %2 = call i64 @sub(i64 %1)
  store i64 %2, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to i64*), align 8
  %3 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %4 = call i64 @sub2(i64 %3)
  store i64 %4, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %5 = shl i64 %2, 52
  %6 = ashr exact i64 %5, 52
  %7 = trunc i64 %6 to i32
  %.not = icmp eq i32 %7, 291
  br i1 %.not, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to i64*), align 8
  %.mask = and i64 %9, -4096
  %.not1 = icmp eq i64 %.mask, -7687337405579571200
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %8, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %13 = ashr i64 %12, 52
  %14 = trunc i64 %13 to i32
  %.not2 = icmp eq i32 %14, 291
  br i1 %.not2, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %.mask4 = and i64 %16, 4503599627370495
  %.not3 = icmp eq i64 %.mask4, 2626808268586421
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %15, %11
  call void @abort() #4
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to i64*), align 8
  %20 = call i64 @sub3(i64 %19)
  store i64 %20, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to i64*), align 8
  %21 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %22 = call i64 @sub4(i64 %21)
  store i64 %22, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %23 = shl i64 %20, 53
  %24 = ashr exact i64 %23, 53
  %25 = trunc i64 %24 to i32
  %.not5 = icmp eq i32 %25, 291
  br i1 %.not5, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to i64*), align 8
  %.mask7 = and i64 %27, -2048
  %.not6 = icmp eq i64 %.mask7, -3725223934242340864
  br i1 %.not6, label %29, label %28

28:                                               ; preds = %26, %18
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %31 = ashr i64 %30, 53
  %32 = trunc i64 %31 to i32
  %.not8 = icmp eq i32 %32, 291
  br i1 %.not8, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %.mask10 = and i64 %34, 9007199254740991
  %.not9 = icmp eq i64 %.mask10, 7188242255599224
  br i1 %.not9, label %36, label %35

35:                                               ; preds = %33, %29
  call void @abort() #4
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %36, %35, %28, %17, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
