; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-sign-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-sign-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, [2 x i8] }

@__const.main.x = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 -1, i8 1, [2 x i8] undef }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.anon, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.anon* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @__const.main.x, i32 0, i32 0), i64 4, i1 false)
  %4 = bitcast %struct.anon* %2 to i16*
  %5 = load i16, i16* %4, align 4
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 7
  %8 = zext i16 %7 to i32
  %9 = icmp ne i32 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %0
  %12 = bitcast %struct.anon* %2 to i16*
  %13 = load i16, i16* %12, align 4
  %14 = shl i16 %13, 13
  %15 = ashr i16 %14, 13
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  call void @abort() #3
  unreachable

19:                                               ; preds = %11
  %20 = bitcast %struct.anon* %2 to i16*
  %21 = load i16, i16* %20, align 4
  %22 = shl i16 %21, 7
  %23 = ashr i16 %22, 13
  %24 = sext i16 %23 to i32
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = bitcast %struct.anon* %2 to i16*
  %28 = load i16, i16* %27, align 4
  %29 = shl i16 %28, 7
  %30 = ashr i16 %29, 13
  %31 = sext i16 %30 to i32
  %32 = icmp ne i32 %31, 7
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  call void @abort() #3
  unreachable

34:                                               ; preds = %26, %19
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
