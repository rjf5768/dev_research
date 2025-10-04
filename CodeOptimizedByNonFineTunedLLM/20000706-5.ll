; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32 }

@c = dso_local global %struct.baz* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.baz*, %struct.baz** @c, align 8
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load %struct.baz*, %struct.baz** @c, align 8
  %9 = getelementptr inbounds %struct.baz, %struct.baz* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load %struct.baz*, %struct.baz** @c, align 8
  %14 = getelementptr inbounds %struct.baz, %struct.baz* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %12, %7, %1
  call void @abort() #3
  unreachable

21:                                               ; preds = %17
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %0, i32 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.baz, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %0, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %1, i32* %8, align 4
  %9 = bitcast %struct.baz* %4 to i8*
  %10 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  store i32 %2, i32* %6, align 4
  store %struct.baz* %4, %struct.baz** @c, align 8
  %11 = load i32, i32* %6, align 4
  call void @bar(i32 noundef %11)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.baz, align 4
  %3 = alloca { i64, i32 }, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 1
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 2
  store i32 3, i32* %6, align 4
  %7 = bitcast { i64, i32 }* %3 to i8*
  %8 = bitcast %struct.baz* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  call void @foo(i64 %10, i32 %12, i32 noundef 4)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
