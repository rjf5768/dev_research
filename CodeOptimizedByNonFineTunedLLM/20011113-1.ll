; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011113-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t = type { i32, [4 x i64] }
%struct.U = type { [3 x i64] }

@t = dso_local global { i8, i8, i8, i8, [4 x i64] } { i8 26, i8 0, i8 0, i8 0, [4 x i64] [i64 0, i64 21, i64 22, i64 23] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.t* @foo(%struct.t* noundef %0) #0 {
  %2 = alloca %struct.t*, align 8
  %3 = alloca %struct.U, align 8
  %4 = alloca %struct.U, align 8
  store %struct.t* %0, %struct.t** %2, align 8
  %5 = bitcast %struct.U* %4 to i8*
  %6 = load %struct.t*, %struct.t** %2, align 8
  %7 = getelementptr inbounds %struct.t, %struct.t* %6, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %9 = bitcast i64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %9, i64 24, i1 false)
  %10 = bitcast %struct.U* %3 to i8*
  %11 = bitcast %struct.U* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load %struct.t*, %struct.t** %2, align 8
  %13 = bitcast %struct.t* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = call %struct.t* @bar(%struct.U* noundef byval(%struct.U) align 8 %3, i32 noundef %16)
  ret %struct.t* %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.t* @bar(%struct.U* noundef byval(%struct.U) align 8 %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.U, %struct.U* %0, i32 0, i32 0
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 21
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.U, %struct.U* %0, i32 0, i32 0
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 22
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.U, %struct.U* %0, i32 0, i32 0
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 23
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8, %2
  call void @abort() #3
  unreachable

19:                                               ; preds = %13
  ret %struct.t* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.t* @baz(%struct.t* noundef %0) #0 {
  %2 = alloca %struct.t*, align 8
  %3 = alloca %struct.U, align 8
  %4 = alloca %struct.U, align 8
  store %struct.t* %0, %struct.t** %2, align 8
  %5 = getelementptr inbounds %struct.U, %struct.U* %3, i32 0, i32 0
  %6 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 4886718345, i64* %6, align 8
  %7 = getelementptr inbounds %struct.U, %struct.U* %3, i32 0, i32 0
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 68414056839, i64* %8, align 8
  %9 = getelementptr inbounds %struct.U, %struct.U* %3, i32 0, i32 0
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  store i64 46118400291, i64* %10, align 8
  %11 = bitcast %struct.U* %4 to i8*
  %12 = load %struct.t*, %struct.t** %2, align 8
  %13 = getelementptr inbounds %struct.t, %struct.t* %12, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %15 = bitcast i64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %15, i64 24, i1 false)
  %16 = bitcast %struct.U* %3 to i8*
  %17 = bitcast %struct.U* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.t*, %struct.t** %2, align 8
  %19 = bitcast %struct.t* %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = call %struct.t* @bar(%struct.U* noundef byval(%struct.U) align 8 %3, i32 noundef %22)
  ret %struct.t* %23
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call %struct.t* @baz(%struct.t* noundef bitcast ({ i8, i8, i8, i8, [4 x i64] }* @t to %struct.t*))
  %3 = call %struct.t* @foo(%struct.t* noundef bitcast ({ i8, i8, i8, i8, [4 x i64] }* @t to %struct.t*))
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
