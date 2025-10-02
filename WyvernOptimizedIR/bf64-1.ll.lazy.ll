; ModuleID = './bf64-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf64-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp = type { i64 }
%struct.tmp2 = type { i64 }

@__const.main.tmp = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 -15, i8 0, i8 -16, i8 -1, i8 0, i8 -16, i8 -1 }, align 8
@__const.main.tmp2 = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -1, i8 15, i8 0, i8 -1, i8 63, i8 18 }, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub(i64 %0) #0 {
  %2 = and i64 %0, 8690468286197428224
  %3 = or i64 %2, -8690468286197432320
  %4 = and i64 %0, 4095
  %5 = or i64 %4, %3
  ret i64 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @sub2(i64 %0) #0 {
  %2 = and i64 %0, 2121696358934919
  %3 = or i64 %2, 2381903268435576
  %4 = and i64 %0, -4503599627370496
  %5 = or i64 %4, %3
  ret i64 %5
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.tmp, align 8
  %2 = alloca %struct.tmp2, align 8
  %3 = getelementptr inbounds %struct.tmp, %struct.tmp* %1, i64 0, i32 0
  store i64 -4502500384116445, i64* %3, align 8
  %4 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %2, i64 0, i32 0
  store i64 1315049991948926991, i64* %4, align 8
  %5 = call i64 @sub(i64 -4502500384116445)
  %6 = getelementptr inbounds %struct.tmp, %struct.tmp* %1, i64 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = call i64 @sub2(i64 1315049991948926991)
  %8 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %2, i64 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = shl i64 %5, 52
  %10 = ashr exact i64 %9, 52
  %11 = trunc i64 %10 to i32
  %.not = icmp eq i32 %11, 291
  br i1 %.not, label %12, label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.tmp, %struct.tmp* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %.mask = and i64 %14, -4096
  %.not1 = icmp eq i64 %.mask, -3023657154121728
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %12, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %2, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = ashr i64 %18, 52
  %20 = trunc i64 %19 to i32
  %.not2 = icmp eq i32 %20, 291
  br i1 %.not2, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %2, i64 0, i32 0
  %23 = load i64, i64* %22, align 8
  %.mask4 = and i64 %23, 4503599627370495
  %.not3 = icmp eq i64 %.mask4, 4502861429823103
  br i1 %.not3, label %25, label %24

24:                                               ; preds = %21, %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %25, %24, %15
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
