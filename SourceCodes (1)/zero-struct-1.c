; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/zero-struct-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/zero-struct-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g = type {}

@y = dso_local global [3 x i8] zeroinitializer, align 1
@f = dso_local global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @y, i32 0, i32 0), align 8
@ff = dso_local global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @y, i32 0, i32 0), align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @h() #0 {
  %1 = alloca %struct.g, align 1
  %2 = alloca %struct.g, align 1
  %3 = load i8*, i8** @f, align 8
  %4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %4, i8** @f, align 8
  %5 = bitcast i8* %3 to %struct.g*
  %6 = load i8*, i8** @ff, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** @ff, align 8
  %8 = bitcast i8* %6 to %struct.g*
  %9 = bitcast %struct.g* %5 to i8*
  %10 = bitcast %struct.g* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 0, i1 false)
  %11 = load i8*, i8** @f, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @f, align 8
  %13 = bitcast i8* %11 to %struct.g*
  %14 = bitcast %struct.g* %13 to i8*
  %15 = bitcast %struct.g* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %15, i64 0, i1 false)
  %16 = load i8*, i8** @ff, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @ff, align 8
  %18 = bitcast i8* %16 to %struct.g*
  %19 = bitcast %struct.g* %1 to i8*
  %20 = bitcast %struct.g* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %20, i64 0, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @h()
  %2 = load i8*, i8** @f, align 8
  %3 = icmp ne i8* %2, getelementptr inbounds ([3 x i8], [3 x i8]* @y, i64 0, i64 2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  %6 = load i8*, i8** @ff, align 8
  %7 = icmp ne i8* %6, getelementptr inbounds ([3 x i8], [3 x i8]* @y, i64 0, i64 2)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
