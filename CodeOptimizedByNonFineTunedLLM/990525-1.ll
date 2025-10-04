; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blah = type { i32, i32 }

@__const.main.s = private unnamed_addr constant %struct.blah { i32 1, i32 2 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @die(i64 %0) #0 {
  %2 = alloca %struct.blah, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.blah], align 4
  %5 = bitcast %struct.blah* %2 to i64*
  store i64 %0, i64* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [1 x %struct.blah], [1 x %struct.blah]* %4, i64 0, i64 %13
  %15 = bitcast %struct.blah* %14 to i8*
  %16 = bitcast %struct.blah* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  br label %6, !llvm.loop !4

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.blah], [1 x %struct.blah]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.blah, %struct.blah* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #3
  unreachable

23:                                               ; preds = %17
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.blah, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.blah* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.blah* @__const.main.s to i8*), i64 8, i1 false)
  %4 = bitcast %struct.blah* %2 to i64*
  %5 = load i64, i64* %4, align 4
  call void @die(i64 %5)
  call void @exit(i32 noundef 0) #3
  unreachable
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
